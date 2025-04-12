

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
    private readonly StandarLibrary stanlib = new StandarLibrary();

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
                //logica para float
                break;
            case StackObjet.StackObjetType.String:
                //logica para string
                break;
            case StackObjet.StackObjetType.Bool:
                //logica para bool
                break;
            case StackObjet.StackObjetType.Char:
                //logica para char
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

    

    //------------------------------------

    public void Add(string rd, string rs1, string rs2)
    {
        instructions.Add($"ADD {rd}, {rs1}, {rs2}");
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
        instructions.Add($"DIV {rd}, {rs1}, {rs2}");
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

    public void Push(string rs)
    {
        instructions.Add($"STR {rs}, [SP, #-8]!");//AL RESTAR AUNMENTAMOS EL STACK
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

    public void Comment(string comment)
    {
        instructions.Add($"// {comment}");
    }
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.AppendLine(".text");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");

        EndProgram();
        foreach (var instruction in instructions)
        {
            sb.AppendLine(instruction);
        }
        
        
        sb.AppendLine("\n\n\n//------------------------Library functios-------------------------------------");
        sb.AppendLine(stanlib.GetFunctiosDefinitions());
        return sb.ToString();
    }

    internal void Sub(string x0, string x1)
    {
        throw new NotImplementedException();
    }

    
}