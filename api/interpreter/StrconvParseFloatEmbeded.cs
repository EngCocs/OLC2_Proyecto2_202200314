using System.Globalization;

public class StrconvParseFloatEmbeded : Invocable
{
    public int Arity() => 1;
    
    public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
    {
        if (arguments.Count != 1)
            throw new SemnticErrorListener("ParseFloat expects exactly 1 argument", null);
        
        if (arguments[0] is not StringValue sVal)
            throw new SemnticErrorListener("ParseFloat expects a string", null);
        
        string input = sVal.Value;
        
        // Intentamos convertir la cadena a float usando InvariantCulture
        if (!float.TryParse(input, NumberStyles.Float, CultureInfo.InvariantCulture, out float result))
            throw new SemnticErrorListener("The string could not be converted to a float", null);
        
        return new FloatValue(result);
    }
}

