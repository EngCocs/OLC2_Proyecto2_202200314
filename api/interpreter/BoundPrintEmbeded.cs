public class BoundPrintEmbeded : Invocable
{
    private readonly PrintEmbeded _inner;
    public BoundPrintEmbeded(PrintEmbeded inner)
    {
        _inner = inner;
    }
    
    public int Arity() => _inner.Arity();
    
    public Invocable Bind(Instance instance) => this;
    
    public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
    {
        // No se descarta ningún argumento, se pasan todos a _inner.Invoke
        return _inner.Invoke(arguments, visitor);
    }
}


