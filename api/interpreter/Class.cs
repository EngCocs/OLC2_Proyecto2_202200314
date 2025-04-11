using analyzer;

public class LenguageClass: Invocable
{
    public string Name { get; set; }
    public Dictionary<string, LanguageParser.VarDclContext> Props { get; set; }
    public Dictionary<string, ForaneaFuntion> Methods { get; set; }

    public LenguageClass(string name
        , Dictionary<string, LanguageParser.VarDclContext> props
        , Dictionary<string, ForaneaFuntion> methods)
    {
        Name = name;
        Props = props;
        Methods = methods;
    }

    public ForaneaFuntion? GetMethod(string name)
    {
        if (Methods.ContainsKey(name))
        {
            return Methods[name];
        }
        return null;
    }

    public int Arity()
    {
        var constructor = GetMethod("constructor");
        if (constructor != null)
        {
            return constructor.Arity();
        }
        return 0;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        var newInstance = new Instance(this);

        foreach (var prop in Props)
        {
           var name= prop.Key;
           var value = prop.Value;

           if (value.implicitVarDecl().expr() != null)
           {
               var val = visitor.Visit(value.implicitVarDecl().expr());
               newInstance.Set(name, val);
           }
           else
           {
               newInstance.Set(name, visitor.defaultVoid);
           }
        }
        var constructor = GetMethod("constructor");
        if (constructor != null)
        {
            constructor.Bind(newInstance).Invoke(args, visitor);
        }
        return new InstanceValue(newInstance);
    }
    

}