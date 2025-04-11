using System.Globalization;

public class ReflectTypeOfEmbeded : Invocable
{
     public static LenguageStruct ReflectTypeStruct { get; set; }
    public int Arity() => 1;
    
    public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
    {
        if (arguments.Count != 1)
            throw new SemnticErrorListener("TypeOf expects exactly 1 argument", null);
        
        string typeName;
        ValueWrapper arg = arguments[0];
        switch (arg)
        {
            case IntValue _:
                typeName = "int"; 
                break;
            case FloatValue _:
                typeName = "float64"; 
                break;
            case StringValue _:
                typeName = "string"; 
                break;
            case BoolValue _:
                typeName = "bool"; 
                break;
            case RuneValue _:
                typeName = "rune"; 
                break;
            case InstanceValue iv:
                if (iv.Instance.TypeDef is LenguageStruct ls)
                    typeName = ls.Name;
                else
                    typeName = "unknown";
                break;
            case SliceValue sv:
                if (sv.Values.Count > 0)
                {
                    // Determinar el tipo del primer elemento
                    var first = sv.Values[0];
                    if (first is IntValue)
                        typeName = "[]int";
                    else if (first is FloatValue)
                        typeName = "[]float64";
                    else if (first is StringValue)
                        typeName = "[]string";
                    else if (first is BoolValue)
                        typeName = "[]bool";
                    else if (first is RuneValue)
                        typeName = "[]rune";
                    else if (first is InstanceValue ivFirst && ivFirst.Instance.TypeDef is LenguageStruct lsFirst)
                        typeName = "[]" + lsFirst.Name;
                    else
                        typeName = "[]unknown";
                }
                else
                {
                    // Si el slice está vacío, no podemos inferir el tipo base con certeza.
                    typeName = "[]unknown";
                }
                break;
            default:
                typeName = "unknown"; 
                break;
        }
        
        // Retornamos directamente la representación en cadena del tipo
        return new StringValue(typeName);
    }
}
