using analyzer;
public class ForaneaFuntion: Invocable{

    private Environment clousure;
    private LanguageParser.FuncDclContext context;

    public ForaneaFuntion(Environment clousure, LanguageParser.FuncDclContext context)
    {
        this.clousure = clousure;
        this.context = context;
    }

    public int Arity()
    {
        var p = context.@params();
        if (p == null)
        {
            return 0;
        }
        // Accedemos a los contextos param
         return p.param().Length; // O p.param().Count si es una lista
    }

    public ValueWrapper Invoke(List<ValueWrapper> arguments, InterpreterVisitor visitor)
    {
        var newEnv = new Environment(clousure);
        var beforeCall = visitor.currentEnvironment;
        visitor.currentEnvironment = newEnv;
        
        if(context.@params() != null)
        {
            for (int i = 0; i < context.@params().param().Length; i++)
            {
                newEnv.DeclareVariable(context.@params().param(i).ID().GetText(), arguments[i], null);

            }
        }
        
        try
        {
            foreach (var stmt in context.dcl())
        {
            visitor.Visit(stmt);
        }
        }
        catch (ReturnExepction e)
        {
            visitor.currentEnvironment = beforeCall;
            return e.Value;
        }
        visitor.currentEnvironment = beforeCall;
        return visitor.defaultVoid;
       
        
    }

    public ForaneaFuntion Bind(Instance instance)
{
    var hiddenEnv = new Environment(clousure);
    if (context.receiverParam() != null)
    {
        // Usa el nombre del receptor declarado en la función, por ejemplo "p"
        string receiverName = context.receiverParam().ID().GetText();
        hiddenEnv.DeclareVariable(receiverName, new InstanceValue(instance), null);
    }
    else
    {
        hiddenEnv.DeclareVariable("this", new InstanceValue(instance), null);
    }
    return new ForaneaFuntion(hiddenEnv, context);
}
}