public class Environment
{

    public Dictionary<string, ValueWrapper> variables = new Dictionary<string, ValueWrapper>();
    private Environment? parent;//Esto lo que hace es que si no encuentra la variable en el entorno actual, busca en el entorno padre

    public Environment(Environment? parent)
    {
        this.parent = parent;
    }

    public ValueWrapper GetVariable(string id, Antlr4.Runtime.IToken token)
    {
        if (variables.ContainsKey(id))
        {
            return variables[id];
        }

        if (parent != null)
        {
            return parent.GetVariable(id,token);
        }

        throw new SemnticErrorListener("Variable " + id + " not found",token);
    }

    public void DeclareVariable(string id, ValueWrapper value, Antlr4.Runtime.IToken token)
    {
        if (variables.ContainsKey(id))
        {
            throw new SemnticErrorListener("Variable " + id + " already declared",token);
        }
        else
        {
            variables[id] = value;
        }
    }

    public ValueWrapper AssignVariable(string id, ValueWrapper newValue, Antlr4.Runtime.IToken token)
{
    if (variables.ContainsKey(id))
    {
        ValueWrapper declaredValue = variables[id];
        if (!IsCompatible(declaredValue, newValue))
        {
            throw new SemnticErrorListener("Tipo incompatible en la asignación a la variable " + id, token);
        }
        // Conversión implícita: si la variable es float64 y el nuevo valor es int, se convierte a float64.
        if (declaredValue is FloatValue && newValue is IntValue intVal)
        {
            newValue = new FloatValue(intVal.Value);
        }
        variables[id] = newValue;
        return newValue;
    }
    if (parent != null)
    {
        return parent.AssignVariable(id, newValue, token);
    }
    throw new SemnticErrorListener("Variable " + id + " not found", token);
}

private bool IsCompatible(ValueWrapper declaredValue, ValueWrapper newValue)
{
    if (declaredValue is IntValue && newValue is IntValue)
        return true;
    if (declaredValue is FloatValue)
        return (newValue is FloatValue) || (newValue is IntValue);
    if (declaredValue is StringValue && newValue is StringValue)
        return true;
    if (declaredValue is BoolValue && newValue is BoolValue)
        return true;
    if (declaredValue is RuneValue && newValue is RuneValue)
        return true;
    if (declaredValue is SliceValue && newValue is SliceValue)
    
        return true;
    return false;
}


    public bool ExistsVariable(string id)
    {
        if (variables.ContainsKey(id))
            return true;
        if (parent != null)
            return parent.ExistsVariable(id);
        return false;
    }

}