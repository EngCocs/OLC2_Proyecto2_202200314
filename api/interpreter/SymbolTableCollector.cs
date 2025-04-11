public static class SymbolTableCollector
{
    public static List<SymbolInfo> Symbols { get; } = new List<SymbolInfo>();

    public static void AddSymbol(string id, string symbolType, string dataType, string scope, int line, int column)
    {
        Symbols.Add(new SymbolInfo
        {
            ID = id,
            SymbolType = symbolType,
            DataType = dataType,
            Scope = scope,
            Line = line,
            Column = column
        });
    }

    public static void Clear() => Symbols.Clear();
}
