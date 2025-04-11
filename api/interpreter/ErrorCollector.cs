using System.Text;

public class ErrorInfo
{
    public string Description { get; }
    public int Line { get; }
    public int Column { get; }
    public string Type { get; } // "léxico", "sintáctico" o "semántico"

    public ErrorInfo(string description, int line, int column, string type)
    {
        Description = description;
        Line = line;
        Column = column;
        Type = type;
    }
}

public static class ErrorCollector
{
    public static List<ErrorInfo> Errors { get; } = new List<ErrorInfo>();

    public static void AddError(string description, int line, int column, string type)
    {
        Errors.Add(new ErrorInfo(description, line, column, type));
    }

    public static string GetReport()
    {
        var sb = new StringBuilder();
        sb.AppendLine("No\tDescripción\tLínea\tColumna\tTipo");
        for (int i = 0; i < Errors.Count; i++)
        {
            var err = Errors[i];
            sb.AppendLine($"{i + 1}\t{err.Description}\t{err.Line}\t{err.Column}\t{err.Type}");
        }
        return sb.ToString();
    }

    public static void Clear() => Errors.Clear();
}
