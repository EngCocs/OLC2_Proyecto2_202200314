using analyzer;
public class LenguageStruct
{
    public string Name { get; }
    public Dictionary<string, LanguageParser.StructFieldContext> Fields { get; }
    public Dictionary<string, Invocable> Methods { get; }

    public LenguageStruct(string name, Dictionary<string, LanguageParser.StructFieldContext> fields)
    {
        Name = name;
        Fields = fields;
        Methods = new Dictionary<string, Invocable>();
    }

    public void AddMethod(string methodName, Invocable method)
    {
        if (Methods.ContainsKey(methodName))
            throw new SemnticErrorListener("Method '" + methodName + "' already defined in struct '" + Name + "'", null);
        Methods[methodName] = method;
    }

    // Para invocar un constructor (si se requiere), se puede implementar Invocable
    public int Arity() => 0;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        // Aquí se crea una instancia con valores por defecto
        Instance instance = CreateInstance(new Dictionary<string, ValueWrapper>(), visitor);
        return new InstanceValue(instance);
    }

    public Instance CreateInstance(Dictionary<string, ValueWrapper> initialValues, InterpreterVisitor visitor)
{
    Instance instance = new Instance(this);
    foreach (var kvp in Fields)
    {
        string fieldName = kvp.Key;
        var fieldCtx = kvp.Value;
        ValueWrapper value;
        if (initialValues.ContainsKey(fieldName))
        {
            value = initialValues[fieldName];
        }
        else
        {
            // Obtiene el tipo declarado (por ejemplo, "int", "string", "Nodo", etc.)
            string declaredType = fieldCtx.typeSpecifier().GetText();
            // Si es un tipo primitivo, usamos el valor por defecto
            if (declaredType == "int" || declaredType == "float64" ||
                declaredType == "string" || declaredType == "bool" || declaredType == "rune")
            {
                value = visitor.GetDefaultValueForType(declaredType);
            }
            else
            {
                // Para tipos no primitivos (por ejemplo, "Nodo", "Persona", etc.),
                // asignamos NilValue para simular que no se inicializó
                value = NilValue.Instance;
            }
        }
        instance.Set(fieldName, value);
    }
    return instance;
}

}
