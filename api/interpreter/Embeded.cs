using System.Globalization;
using System.Text;
using Antlr4.Runtime;
using Microsoft.AspNetCore.Http.Connections;
using analyzer;

public class Embeded
{
    public static void Generate(Environment enbv)
    {
        enbv.DeclareVariable("time", new FuncionValue(new TimeEmbeded(), "Time"), null);
        //enbv.DeclareVariable("print", new FuncionValue(new PrintEmbeded(), "Print"), null);
         // Crear el struct embebido para fmt y asignar el método Println:
        var fieldsFmt = new Dictionary<string, LanguageParser.StructFieldContext>();
        var fmtStruct = new LenguageStruct("fmt", fieldsFmt);
        fmtStruct.AddMethod("Println", new PrintEmbeded());
        enbv.DeclareVariable("fmt", new InstanceValue(new Instance(fmtStruct)), null);
         SymbolTableCollector.AddSymbol("fmt", "Struct", "fmt", "Global", 0, 0);
        // Se crea un struct embebido para strconv
        var fields = new Dictionary<string, LanguageParser.StructFieldContext>();
        var strconvStruct = new LenguageStruct("strconv", fields);
        
        // Agregar el método Atoi al struct
        strconvStruct.AddMethod("Atoi", new StrconvAtoiEmbeded());
         // Agregar la función ParseFloat
        strconvStruct.AddMethod("ParseFloat", new StrconvParseFloatEmbeded());
        
        // Registrar la instancia de strconv en el entorno
        enbv.DeclareVariable("strconv", new InstanceValue(new Instance(strconvStruct)), null);
        SymbolTableCollector.AddSymbol("strconv", "Struct embebido", "strconv", "Global", 0, 0);
         // --- Registro de reflect ---
        // Crear el struct para reflect, que tendrá el método TypeOf
        var fieldsReflect = new Dictionary<string, LanguageParser.StructFieldContext>();
        var reflectStruct = new LenguageStruct("reflect", fieldsReflect);
        reflectStruct.AddMethod("TypeOf", new ReflectTypeOfEmbeded());
        enbv.DeclareVariable("reflect", new InstanceValue(new Instance(reflectStruct)), null);
        SymbolTableCollector.AddSymbol("reflect", "Struct embebido", "reflect", "Global", 0, 0);
        
        // Crear el struct para reflectType, que tendrá el método string
        var fieldsReflectType = new Dictionary<string, LanguageParser.StructFieldContext>();
        var reflectTypeStruct = new LenguageStruct("reflectType", fieldsReflectType);
        reflectTypeStruct.AddMethod("string", new ReflectTypeStringEmbeded());
        // Guardamos la referencia en la función TypeOf para crear instancias de este tipo
        ReflectTypeOfEmbeded.ReflectTypeStruct = reflectTypeStruct;
        
       
    }
}

public class TimeEmbeded:Invocable
{
   public int Arity() {
         return 0;
   }
   
   public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
   {
       return new StringValue(DateTime.Now.ToString());
   }
}

public class PrintEmbeded : Invocable
{
   // Ahora la aridad es 0, ya que cuando se invoque mediante fmt.Println
   // el receptor se pasará automáticamente y se deberá descartar.
   public int Arity() => 0;
   
   public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
   {
       var output = "";
       foreach (var arg in arguments)
       {
           output += arg switch
           {
               IntValue i => i.Value.ToString() + " ",
               FloatValue f => f.Value.ToString() + " ",
               StringValue s => s.Value + " ",
               BoolValue b => b.Value.ToString() + " ",
               VoidValue v => "void ",
               RuneValue r => r.Value.ToString() + " ",
               FuncionValue fn => "<fn" + fn.name + "> ",
               InstanceValue iv => FormatInstance(iv.Instance) + " ",
               ClassValue c => "<class> ",
               StructValue s => "s.struct ",
               SliceValue slice => FormatSlice(slice) + " ",
               _ => throw new SemnticErrorListener("Invalid value", null)
           };
       }
       output += "\n";
       visitor.output += output; // Agrega a la salida global
       return visitor.defaultVoid;
   }
   
   // Los métodos auxiliares permanecen igual:
   private string FormatInstance(Instance instance)
   {
       var sb = new StringBuilder();
       sb.Append("{");
       var props = instance.GetProperties();
       foreach (var kvp in props)
       {
           sb.Append($"{kvp.Key}: ");
           if (kvp.Value is InstanceValue iv)
           {
               sb.Append(FormatInstance(iv.Instance));
           }
           else
           {
               sb.Append(kvp.Value switch
               {
                   StringValue s => s.Value,
                   IntValue i => i.Value.ToString(),
                   FloatValue f => f.Value.ToString(CultureInfo.InvariantCulture),
                   BoolValue b => b.Value.ToString(),
                   RuneValue r => r.Value.ToString(),
                   _ => kvp.Value.ToString()
               });
           }
           sb.Append(", ");
       }
       if (props.Count > 0)
       {
           sb.Length -= 2; // Quita la última coma y espacio
       }
       sb.Append("}");
       return sb.ToString();
   }
   
   private string FormatSlice(SliceValue slice)
   {
       var sb = new StringBuilder();
       sb.Append("[");
       for (int i = 0; i < slice.Values.Count; i++)
       {
           sb.Append(slice.Values[i] switch
           {
               IntValue iVal => iVal.Value.ToString(),
               FloatValue fVal => fVal.Value.ToString(CultureInfo.InvariantCulture),
               StringValue sVal => $"\"{sVal.Value}\"",
               BoolValue bVal => bVal.Value.ToString(),
               RuneValue rVal => rVal.Value.ToString(),
               SliceValue s => FormatSlice(s),
               InstanceValue iv => FormatInstance(iv.Instance),
               _ => slice.Values[i].ToString()
           });
           if (i < slice.Values.Count - 1)
           {
               sb.Append(", ");
           }
       }
       sb.Append("]");
       return sb.ToString();
   }
}

