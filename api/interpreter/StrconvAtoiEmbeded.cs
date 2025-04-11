public class StrconvAtoiEmbeded : Invocable
{
    public int Arity() => 1;
    
    public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
    {
        if (arguments.Count != 1)
            throw new SemnticErrorListener("Atoi espera exactamente 1 argumento", null);

        if (arguments[0] is not StringValue sVal)
            throw new SemnticErrorListener("Atoi espera una cadena de texto", null);

        string input = sVal.Value;
        
        // Verifica que no sea un número decimal
        if (input.Contains("."))
            throw new SemnticErrorListener("Atoi no puede convertir números decimales", null);

        if (!int.TryParse(input, out int result))
            throw new SemnticErrorListener("La cadena no pudo convertirse a entero", null);

        return new IntValue(result);
    }
}
