public class SymbolInfo
{
    public string? ID { get; set; }
    public string? SymbolType { get; set; } // Ej.: Variable, Función, etc.
    public string? DataType { get; set; }     // Ej.: int, float64, SliceAckerman, etc.
    public string? Scope { get; set; }        // Ej.: Global, Local, etc.
    public int Line { get; set; }
    public int Column { get; set; }
}
