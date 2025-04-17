using System.Text;

public static class Utils
{
    private static readonly Queue<string> TempRegisters = new Queue<string>(
        new[] { "x9", "x10", "x11", "x12", "x13", "x14", "x15" }
    );

    private static readonly Stack<string> UsedRegisters = new Stack<string>();

    public static string GetTempRegister()
    {
        if (TempRegisters.Count == 0)
            throw new Exception("No hay más registros temporales disponibles.");

        var reg = TempRegisters.Dequeue();
        UsedRegisters.Push(reg);
        return reg;
    }

    public static void ReleaseTempRegister(string reg)
    {
        if (!UsedRegisters.Contains(reg))
            throw new Exception($"Registro {reg} no fue reservado correctamente.");

        TempRegisters.Enqueue(reg);
        UsedRegisters.Pop();
    }

    public static int FloatLabelCounter = 0;

    public static List<byte> StringToBytesArrays(string str)
    {
        var result = Encoding.ASCII.GetBytes(str).ToList();
        result.Add(0); // null terminator
        return result;
    }

    public static List<byte> ConvertStringToBytes(string input)
    {
        return Encoding.ASCII.GetBytes(input).ToList();
    }
}
