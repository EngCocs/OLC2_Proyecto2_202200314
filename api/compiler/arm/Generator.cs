

using System.Text;

public class StackObjet
{
    public enum StackObjetType {Int,Float, String , Bool, Char, Void}
    public StackObjetType Type { get; set; }
    public int Length { get; set; }
    public int Depth { get; set; }
    public string? ID { get; set; }
   

}

public class ArmGenerator
{
    private List<StackObjet> stack = new List<StackObjet>();
    private readonly List<string> instructions = new List<string>();
    private readonly StandardLibrary stanlib = new StandardLibrary();
    
    private int Depth= 0;

    //-----------operacionde con el stack-----------------
    public void PushObjet(StackObjet obj)
    {
        stack.Add(obj);
        
    }
    public void PushConstant(StackObjet obj, object value)
    {
        switch (obj.Type)
        {
            case StackObjet.StackObjetType.Int:
                Mov(Register.X0, (int)value);
                Push(Register.X0);
                break;
            case StackObjet.StackObjetType.Float:
                // Crear una etiqueta única para esta constante float
                string label = $"float_const_{Utils.FloatLabelCounter++}";
                // Registrar el valor en la sección .data
                stanlib.AddFloatConstant(label, (double)value);

                // ADR x9, etiqueta
                instructions.Add($"adr x9, {label}");
                // LDR d0, [x9]
                instructions.Add($"ldr d0, [x9]");
                // STR d0, [sp, #-8]!
                instructions.Add($"str d0, [sp, #-8]!");
                break;
            case StackObjet.StackObjetType.String:
                List<byte> stringArray = Utils.StringToBytesArrays((string)value);

                string tempRegister = $"x{Utils.TempRegisterCounter++}";
                Mov(tempRegister, Register.HP); // x9 = x10 (inicio del string)

                for (int i = 0; i < stringArray.Count; i++)
                {
                    var charCode = stringArray[i];
                    Comment($"Pusing char {charCode}");
                    Mov("w0", charCode);
                    Strb("w0", Register.HP);
                    Mov(Register.X0, 1);
                    Add(Register.HP, Register.HP, Register.X0);  
                }

                Push(tempRegister); // push la dirección correcta
                break;
            case StackObjet.StackObjetType.Bool:
                // Representamos false como 0 y true como 1.
                bool b = (bool)value;
                Mov(Register.X0, b ? 1 : 0);
                Push(Register.X0);
                break;
            case StackObjet.StackObjetType.Char:
                //logica para char
                Mov(Register.X0, (char)value);
                Push(Register.X0);
                break;
            case StackObjet.StackObjetType.Void:
                //logica para void
                break;
        }
        PushObjet(obj);
    }

    public StackObjet PopObjet(string rd)
    {
        var obj = stack.Last();
        stack.RemoveAt(stack.Count - 1);

        Pop(rd);
        return obj;
    }

    public StackObjet IntObject(){
        return new StackObjet
        {
            Type = StackObjet.StackObjetType.Int,
            Length = 8,
            Depth = Depth,
            ID= null
        };
    }

    public StackObjet FloatObject()
    {
        return new StackObjet
        {
            Type = StackObjet.StackObjetType.Float,
            Length = 8,
            Depth = Depth,
            ID= null
        };
    }
    public StackObjet StringObject()
    {
        return new StackObjet
        {
            Type = StackObjet.StackObjetType.String,
            Length = 8,
            Depth = Depth,
            ID= null
        };
    }

    public StackObjet BoolObject()
    {
        return new StackObjet
        {
            Type = StackObjet.StackObjetType.Bool,
            Length = 8,
            Depth = Depth,
            ID= null
        };
    }
    public StackObjet CharObject()
    {
        return new StackObjet
        {
            Type = StackObjet.StackObjetType.Char,
            Length = 8,
            Depth = Depth,
            ID= null
        };
    }
    public StackObjet VoidObject()
    {
        return new StackObjet
        {
            Type = StackObjet.StackObjetType.Void,
            Length = 8,
            Depth = Depth,
            ID= null
        };
    }
    public StackObjet CloneObjet(StackObjet obj)
    {
        return new StackObjet
        {
            Type = obj.Type,
            Length = obj.Length,
            Depth = obj.Depth,
            ID= obj.ID
        };
    }

    // Enviroment Operation
    public void NewScope()
    {
        Depth++;
    }
    public int EndScope()
    {
        int byteOffset = 0;
        for (int i = stack.Count - 1; i >= 0; i--)
        {
            if (stack[i].Depth == Depth)
            {
                byteOffset += stack[i].Length;
                stack.RemoveAt(i);
            }
            else{
                break;
            }
        }
        Depth--;
        return byteOffset;

    }
    public void TagObjet(string id)
    {
        stack.Last().ID = id;
    }
    public(int, StackObjet) GetObjet(string id){
        int byteOffset = 0;
        for (int i = stack.Count - 1; i >= 0; i--)
        {
            if (stack[i].ID == id)
            {
                return (byteOffset, stack[i]);
            }
            byteOffset += stack[i].Length;
        }
        throw new Exception($"No se encontró el objeto con ID: {id}");
    }
    public StackObjet GetLastObjet()
{
    if (stack.Count > 0)
        return stack.Last();
    throw new Exception("El stack está vacío.");
}

    

    //------------------------------------

    public void Add(string rd, string rs1, string rs2)
    {
        instructions.Add($"ADD {rd}, {rs1}, {rs2}");
    }
    public void Add(string dst, string src, int value)
{
    Add(dst, src, value.ToString());
}

    public void Sub(string rd, string rs1, string rs2)
    {
        instructions.Add($"SUB {rd}, {rs1}, {rs2}");
    }
    public void Mul(string rd, string rs1, string rs2)
    {
        instructions.Add($"MUL {rd}, {rs1}, {rs2}");
    }
    public void Div(string rd, string rs1, string rs2)
    {
        instructions.Add($"UDIV {rd}, {rs1}, {rs2}"); // División entera sin signo
    }
    public void UDiv(string rd, string rs1, string rs2)
    {
        instructions.Add($"UDIV {rd}, {rs1}, {rs2}");
    }
    public void LdrFloat(string rd, string rs1, int offset=0)
    {
        instructions.Add($"LDR {rd}, [{rs1}, #{offset}]");
    }
    //sumaste al registro x0 el valor inmediato 5 
    public void Addi(string rd, string rs1, int imm)
    {
        instructions.Add($"ADDI {rd}, {rs1}, #{imm}");//el # se utiliza para indicar que es un valor inmediato
    }
    //memori operatios
    public void Str(string rd, string rs1, int offset=0)
    {
        instructions.Add($"STR {rd}, [{rs1}, #{offset}]");
    }
    public void Strb(string rs1, string rs2)
    {
        instructions.Add($"STRB {rs1}, [{rs2}]");
    }
    public void Ldr(string rd, string rs1, int offset=0)
    {
        instructions.Add($"LDR {rd}, [{rs1}, #{offset}]");
    }
    
    public void Mov(string rd, int inm)
{
    instructions.Add($"MOV {rd}, #{inm}"); // Carga un valor inmediato
}

public void Mov(string rd, string rs)
{
    instructions.Add($"MOV {rd}, {rs}"); // Copia de un registro a otro
}
public void FMOV(string rd, string rs)
{
    instructions.Add($"FMOV {rd}, {rs}");
}

    public void Push(string rs)
    {
        instructions.Add($"STR {rs}, [SP, #-8]!");//AL RESTAR AUNMENTAMOS EL STACK
    }
    public void FPush(string rd)
    {
        instructions.Add($"STR {rd}, [SP, #-8]!");
    }
    public void FAdd(string rd, string rs1, string rs2)
    {
        instructions.Add($"FADD {rd}, {rs1}, {rs2}");
    }
    public void FSub(string rd, string rs1, string rs2)
    {
        instructions.Add($"FSUB {rd}, {rs1}, {rs2}");
    }
    public void FDiv(string rd, string rs1, string rs2)
    {
        instructions.Add($"FDIV {rd}, {rs1}, {rs2}");
    }
    public void Fmul(string rd, string rs1, string rs2)
    {
        instructions.Add($"FMUL {rd}, {rs1}, {rs2}");
    }
    public void Scvtf(string rd, string rs)
    {
        instructions.Add($"SCVTF {rd}, {rs}");
    }
    public void Cmp(string rs1, int imm)
    {
        instructions.Add($"CMP {rs1}, #{imm}");
    }
    public void Rem(string rd, string rs1, string rs2)
    {
       instructions.Add($"UDIV x22, {rs1}, {rs2}");         // x22 = rs1 / rs2
        instructions.Add($"MSUB {rd}, x22, {rs2}, {rs1}");   // rd = rs1 - (rs2 * x22)
    }
    public void Beq(string label)
    {
        instructions.Add($"BEQ {label}");
    }
    public void Neg(string rd, string rs)
    {
        instructions.Add($"NEG {rd}, {rs}");
    }

    public void FNeg(string rd, string rs)
    {
        instructions.Add($"FNEG {rd}, {rs}");
    }
    public void Set(string condition, string reg)
    {
        instructions.Add($"CSET {reg}, {condition}");
    }
    public void Cmp(string rs1, string rs2)
    {
        instructions.Add($"CMP {rs1}, {rs2}");
    }
    public void FCMP(string rs1, string rs2)
    {
        instructions.Add($"FCMP {rs1}, {rs2}");
    }
    public void CallExternal(string functionName)
    {
        stanlib.Use(functionName);
        instructions.Add($"BL {functionName}");
    }

    public void concatString()
    {
        stanlib.Use("concat_strings"); 
        instructions.Add("BL concat_strings");
    }

    public void Pop(string rd)
    {
        instructions.Add($"LDR {rd}, [SP], #8");//AL SUMAR RESTAMOS DEL STACK
    }

    public void Svc()
    {
        instructions.Add($"SVC #0");
    }

    public void EndProgram()
    {
        Mov(Register.X0, 0);
        Mov(Register.X8, 93);
        Svc();
    }

    public void PrintInterger(string rs)
    {
        stanlib.Use("print_integer");
        instructions.Add($"MOV X0, {rs}");
        instructions.Add($"BL print_integer");
       
    }
    public void PrintString(string rs)
    {
        stanlib.Use("print_string");
         stanlib.Use("print_string_raw");
        instructions.Add($"MOV X0, {rs}");
        instructions.Add($"BL print_string");
    }
    public void PrintChar(string rs)
    {
        stanlib.Use("print_char");
        instructions.Add($"MOV X0, {rs}");
        instructions.Add($"BL print_char");
    }
    public void PrintFloat(string rd)
    {
        stanlib.Use("print_float");
        stanlib.Use("print_integer");  // Necesaria dentro de print_float
        stanlib.Use("print_integer_raw");
        stanlib.Use("print_string_raw");
        instructions.Add($"FMOV D0, {rd}");
        instructions.Add($"BL print_float");
    }
    public void PrintBool(string rs)
{
    stanlib.Use("print_bool");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add($"BL print_bool");
}
public void PrintLiteral(string text)
{
    List<byte> bytes = Utils.StringToBytesArrays(text);
    
    Mov("x9", Register.HP); // x9 = inicio del string

    foreach (var b in bytes)
    {
        Mov("w0", b);
        Strb("w0", Register.HP);
        Add(Register.HP, Register.HP, 1);
    }

    // Null terminator
    Mov("w0", 0);
    Strb("w0", Register.HP);
    Add(Register.HP, Register.HP, 1);

    Mov("x0", "x9");
    PrintStringRaw("x0");
}

public void PrintIntergerRaw(string rs)
{
    stanlib.Use("print_integer_raw");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add("BL print_integer_raw");
}

public void PrintFloatRaw(string rd)
{
    stanlib.Use("print_float");
    stanlib.Use("print_integer_raw");
     stanlib.Use("print_integer");
    stanlib.Use("print_string_raw");
    instructions.Add($"FMOV D0, {rd}");
    instructions.Add("BL print_float");
}

public void PrintStringRaw(string rs)
{
    stanlib.Use("print_string_raw");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add("BL print_string_raw");
}

public void PrintBoolRaw(string rs)
{
    stanlib.Use("print_bool");
    stanlib.Use("print_string"); 
    stanlib.Use("print_string_raw");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add("BL print_bool");
}

public void PrintCharRaw(string rs)
{
    stanlib.Use("print_char");
     stanlib.Use("print_string"); 
    stanlib.Use("print_string_raw");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add("BL print_char");
}


    


    public void Comment(string comment)
    {
        instructions.Add($"// {comment}");
    }
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.AppendLine(".data");
        sb.AppendLine("heap: .space 4096");
        sb.AppendLine(stanlib.GetFloatConstantsAsDataSection());
        sb.AppendLine(".text");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");
        sb.AppendLine("  adr x10, heap");

        EndProgram();
        foreach (var instruction in instructions)
        {
            sb.AppendLine(instruction);
        }
        
        
        sb.AppendLine("\n\n\n//------------------------Library functios-------------------------------------");
        sb.AppendLine(stanlib.GetFunctionDefinitions());
        return sb.ToString();
    }

    internal void Sub(string x0, string x1)
    {
        throw new NotImplementedException();
    }

    
}