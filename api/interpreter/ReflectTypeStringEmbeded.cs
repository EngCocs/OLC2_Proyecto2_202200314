public class ReflectTypeStringEmbeded : Invocable
{
    public int Arity() => 0;
    
    public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
    {
        // Se asume que el receptor está ligado en el entorno con el nombre "this"
        var receiver = visitor.currentEnvironment.GetVariable("this", null);
        if (!(receiver is InstanceValue iv))
            throw new SemnticErrorListener("ReflectType.string: no receiver", null);
        
        // Se obtiene el valor de la propiedad "name"
        return iv.Instance.Get("name", null);
    }
}
