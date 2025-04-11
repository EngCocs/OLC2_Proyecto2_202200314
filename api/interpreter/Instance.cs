public class Instance
{
    public object TypeDef { get; }
    private Dictionary<string, ValueWrapper> Properties;

    public Instance(object typeDef)
    {
        TypeDef = typeDef;
        Properties = new Dictionary<string, ValueWrapper>();
    }

    public void Set(string name, ValueWrapper value)
    {
        Properties[name] = value;
    }

    public ValueWrapper Get(string name, Antlr4.Runtime.IToken token)
{
    if (Properties.ContainsKey(name))
    {
        return Properties[name];
    }
    if (TypeDef is LenguageStruct ls)
    {
        if (ls.Methods.ContainsKey(name))
{
    Invocable method = ls.Methods[name];
    if (method is ForaneaFuntion ff)
    {
        return new FuncionValue(ff.Bind(this), name);
    }
    else if (method is PrintEmbeded pe)
    {
        return new FuncionValue(new BoundPrintEmbeded(pe), name);
    }
    else
    {
        return new FuncionValue(method, name);
    }
}

    }
    throw new SemnticErrorListener("Field " + name + " not found", token);
}


    // Método para obtener las propiedades (para formatear la salida)
    public Dictionary<string, ValueWrapper> GetProperties()
    {
        return Properties;
    }
}
