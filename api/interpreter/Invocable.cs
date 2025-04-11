
public interface Invocable
{
    int Arity();
    ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor);
}