

using System.Text;

public class ArmGenerator
{
    private readonly List<string> instructions = new List<string>();
    private readonly StandarLibrary stanlib = new StandarLibrary();

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