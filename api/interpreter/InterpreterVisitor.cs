using analyzer;
using Microsoft.AspNetCore.Authentication;
using System.Globalization;
using System.Text;
public class InterpreterVisitor : LanguageBaseVisitor<ValueWrapper>
{


    public ValueWrapper defaultVoid = new VoidValue();

    public string output = "";
    public Environment currentEnvironment ;

    public InterpreterVisitor()
    {
        currentEnvironment = new Environment(null);
        Embeded.Generate(currentEnvironment);
    }

    // VisitProgram
    public override ValueWrapper VisitProgram(LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
      // Si existe una función main, la invoca con una lista vacía de argumentos
    if (currentEnvironment.ExistsVariable("main"))
    {
        ValueWrapper mainFunc = currentEnvironment.GetVariable("main", null);
        if (mainFunc is FuncionValue funcValue)
        {
            return funcValue.invocable.Invoke(new List<ValueWrapper>(), this);
        }
        else
        {
            throw new SemnticErrorListener("La variable 'main' no es una función", null);
        }
    }  
        
    return defaultVoid;
    }

    // VisitVarDcl
    public override ValueWrapper VisitVarDcl(LanguageParser.VarDclContext context)
{
    
    // Intenta obtener la alternativa "explicitVarDeclWithInit"
    var withInit = context.explicitVarDeclWithInit();
    if (withInit != null)
    {
        string id = withInit.ID().GetText();
        string declaredType = withInit.typeSpecifier().GetText();
        ValueWrapper value = Visit(withInit.expr());
        value = CheckAndConvert(value, declaredType, context.Start);
        // Determinar la categoría del símbolo para vectores/matrices
        string symbolCategory = "Variable";
        if (declaredType.Contains("["))
        {
            int count = declaredType.Split('[').Length - 1;
            if (count == 1)
                symbolCategory = "Variable (Vector/Arreglo)";
            else if (count > 1)
                symbolCategory = "Variable (Matriz)";
        }
        // En explicitVarDeclWithInit:
        //SymbolTableCollector.AddSymbol(id, symbolCategory, declaredType, "Global", context.Start.Line, context.Start.Column);
         SymbolTableCollector.AddSymbol(id, symbolCategory, declaredType, "Global", context.Start.Line, context.Start.Column);
       
        //SymbolTableCollector.AddSymbol(id, "Variable", declaredType, "Global", context.Start.Line, context.Start.Column);
        currentEnvironment.DeclareVariable(id, value, context.Start);
        return defaultVoid;
    }
    
    // Intenta obtener la alternativa "explicitVarDeclWithoutInit"
    var withoutInit = context.explicitVarDeclWithoutInit();
    if (withoutInit != null)
    {
        string id = withoutInit.ID().GetText();
        string declaredType = withoutInit.typeSpecifier().GetText();
        ValueWrapper defaultValue = GetDefaultValueForType(declaredType);
         string symbolCategory = "Variable";
         //aqui se identifica si es un vector o matriz
        if (declaredType.Contains("["))
        {
            int count = declaredType.Split('[').Length - 1;//se obtiene la cantidad de corchetes
            if (count == 1)
                symbolCategory = "Variable (Vector/Arreglo)";
            else if (count > 1)
                symbolCategory = "Variable (Matriz)";
        }
        //SymbolTableCollector.AddSymbol(id, symbolCategory, declaredType, "Global", context.Start.Line, context.Start.Column);
        SymbolTableCollector.AddSymbol(id, symbolCategory, declaredType, "Global", context.Start.Line, context.Start.Column);
        //SymbolTableCollector.AddSymbol(id, "Variable", declaredType, "Global", context.Start.Line, context.Start.Column);
        currentEnvironment.DeclareVariable(id, defaultValue, context.Start);
        return defaultVoid;
    }
    
    // Intenta obtener la alternativa "implicitVarDecl"
    var implicitDecl = context.implicitVarDecl();
    if (implicitDecl != null)
    {
        string id = implicitDecl.ID().GetText();
        ValueWrapper value = Visit(implicitDecl.expr());
        SymbolTableCollector.AddSymbol(id, "Variable", "inferencia", "Global", context.Start.Line, context.Start.Column);
        currentEnvironment.DeclareVariable(id, value, context.Start);
        return defaultVoid;
    }
    
    throw new SemnticErrorListener("Declaración de variable no válida", context.Start);
}


    

    // Declaración explícita con tipo y valor inicial:
    public override ValueWrapper VisitExplicitVarDeclWithInit(LanguageParser.ExplicitVarDeclWithInitContext context)
    {
        string id = context.ID().GetText();
        string declaredType = context.typeSpecifier().GetText();
        ValueWrapper value = Visit(context.expr());
        // Se verifica que el valor evaluado sea compatible o se convierta si es posible.
        value = CheckAndConvert(value, declaredType, context.Start);
        currentEnvironment.DeclareVariable(id, value, context.Start);
        return defaultVoid;
    }

    // Declaración explícita con tipo sin valor inicial:
    public override ValueWrapper VisitExplicitVarDeclWithoutInit(LanguageParser.ExplicitVarDeclWithoutInitContext context)
    {
        string id = context.ID().GetText();
        string declaredType = context.typeSpecifier().GetText();
        ValueWrapper defaultValue = GetDefaultValueForType(declaredType);
        currentEnvironment.DeclareVariable(id, defaultValue, context.Start);
        return defaultVoid;
    }

    // Declaración implícita (inferencia de tipo):
    public override ValueWrapper VisitImplicitVarDecl(LanguageParser.ImplicitVarDeclContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());
        // Se infiere el tipo a partir del valor evaluado.
        currentEnvironment.DeclareVariable(id, value, context.Start);
        return defaultVoid;
    }

    // VisitExprStmt
    public override ValueWrapper VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        return Visit(context.expr());
    }


    //VisitPrintStmt
    // public override ValueWrapper VisitPrintStmt(LanguageParser.PrintStmtContext context)
    // {
    //     ValueWrapper value = Visit(context.expr());
    //     // output += value + "\n";
    //     output += value switch
    //     {
    //         IntValue i => i.Value.ToString(),
    //         FloatValue f => f.Value.ToString(),
    //         StringValue s => s.Value,
    //         BoolValue b => b.Value.ToString(),
    //         VoidValue v => "void",
    //         RuneValue r => r.Value.ToString(),
    //         FuncionValue fn => "<fn"+fn.name+">",
    //         _ => throw new SemnticErrorListener("Invalid value", context.Start)
    //     };
    //     output += "\n";

    //     return defaultVoid;
    // }

    // VisitIdentifier
    public override ValueWrapper VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        string id = context.ID().GetText();
        return currentEnvironment.GetVariable(id, context.Start);
    }

    // VisitParens
    public override ValueWrapper VisitParens(LanguageParser.ParensContext context)
    {
        return Visit(context.expr());
    }

    // VisitNegate
    public override ValueWrapper VisitNegate(LanguageParser.NegateContext context)
    {
        ValueWrapper value = Visit(context.expr());
        return value switch
        {
            IntValue i => new IntValue(-i.Value),
            FloatValue f => new FloatValue(-f.Value),
            _ => throw new SemnticErrorListener("Invalid operation", context.Start)

        };
    }

    //VisitNot
    public override ValueWrapper VisitNot(LanguageParser.NotContext context)
    {
        ValueWrapper value = Visit(context.expr());
        if (value is BoolValue boolValue)
        {
            return new BoolValue(!boolValue.Value);
        }
        throw new SemnticErrorListener("Operación '!' inválida: se esperaba un valor booleano", context.Start);
    }

    // VisitInt
    public override ValueWrapper VisitInt(LanguageParser.IntContext context)
    {
        return new IntValue(int.Parse(context.INT().GetText()));
    }

    // VisitMulDiv
    public override ValueWrapper VisitMulDiv(LanguageParser.MulDivContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;// esto hace que se obtenga el operador

        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "*") => new IntValue(l.Value * r.Value) ,   
            (FloatValue l, FloatValue r, "*") => new FloatValue(l.Value * r.Value),
            (IntValue l, FloatValue r, "*") => new FloatValue(l.Value * r.Value),
            (FloatValue l, IntValue r, "*") => new FloatValue(l.Value * r.Value),
            // División entera
            // División
        (IntValue l, IntValue r, "/") when r.Value == 0 => throw new SemnticErrorListener("Division by zero", context.Start),
        (IntValue l, IntValue r, "/") => new FloatValue((float)l.Value / r.Value),
        (FloatValue l, FloatValue r, "/") when r.Value == 0 => throw new SemnticErrorListener("Division by zero", context.Start),
        (FloatValue l, FloatValue r, "/") => new FloatValue(l.Value / r.Value),
        (IntValue l, FloatValue r, "/") when r.Value == 0 => throw new SemnticErrorListener("Division by zero", context.Start),
        (IntValue l, FloatValue r, "/") => new FloatValue(l.Value / r.Value),
        (FloatValue l, IntValue r, "/") when r.Value == 0 => throw new SemnticErrorListener("Division by zero", context.Start),
        (FloatValue l, IntValue r, "/") => new FloatValue(l.Value / r.Value),

        // Módulo: solo válido para dos int
        (IntValue l, IntValue r, "%") when r.Value == 0 => throw new SemnticErrorListener("Modulo division by zero", context.Start),
        (IntValue l, IntValue r, "%") => new IntValue(l.Value % r.Value),
            _ => throw new SemnticErrorListener("Invalid operation", context.Start)
        };

    }

    // VisitAddSub
    public override ValueWrapper VisitAddSub(LanguageParser.AddSubContext context)
    {
        ValueWrapper left = Visit(context.GetChild(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;

        return (left, right, op) switch
        {
            
            (FloatValue l, FloatValue r, "-") => new FloatValue(l.Value - r.Value),
            (IntValue l, IntValue r, "-") => new IntValue(l.Value - r.Value),
            (IntValue l, FloatValue r, "-") => new FloatValue(l.Value - r.Value),
            (FloatValue l, IntValue r, "-") => new FloatValue(l.Value - r.Value),

            (IntValue l, IntValue r, "+") => new IntValue(l.Value + r.Value),
            (IntValue l, FloatValue r, "+") => new FloatValue(l.Value + r.Value),
            (FloatValue l, FloatValue r, "+") => new FloatValue(l.Value + r.Value),
            (FloatValue l, IntValue r, "+") => new FloatValue(l.Value + r.Value),
            (StringValue l, StringValue r, "+") => new StringValue(l.Value + r.Value),

            
            
            _ => throw new SemnticErrorListener("Invalid operation", context.Start)
        };
    }


    // VisitFloat
    public override ValueWrapper VisitFloat(LanguageParser.FloatContext context)
    {
        return new FloatValue(
         float.Parse(context.FLOAT().GetText(), CultureInfo.InvariantCulture)
    );
    }

    // VisitRelational
    public override ValueWrapper VisitRelationalS(LanguageParser.RelationalSContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;

        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (IntValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (IntValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (IntValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (FloatValue l, FloatValue r, "<") => new BoolValue(l.Value < r.Value),
            (FloatValue l, FloatValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (FloatValue l, FloatValue r, ">") => new BoolValue(l.Value > r.Value),
            (FloatValue l, FloatValue r, ">=") => new BoolValue(l.Value >= r.Value),

            (IntValue l, FloatValue r, "<") => new BoolValue(l.Value < r.Value),
            (IntValue l, FloatValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (IntValue l, FloatValue r, ">") => new BoolValue(l.Value > r.Value),
            (IntValue l, FloatValue r, ">=") => new BoolValue(l.Value >= r.Value),

            (FloatValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (FloatValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (FloatValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (FloatValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),

            (RuneValue l, RuneValue r, "<") => new BoolValue(l.Value < r.Value),
            (RuneValue l, RuneValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (RuneValue l, RuneValue r, ">") => new BoolValue(l.Value > r.Value),
            (RuneValue l, RuneValue r, ">=") => new BoolValue(l.Value >= r.Value),
            _ => throw new SemnticErrorListener("Invalid operation", context.Start)
        };
    }
    //VisitLogical
    public override ValueWrapper VisitLogical(LanguageParser.LogicalContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;

        return (left, right, op) switch
        {
            (BoolValue l, BoolValue r, "&&") => new BoolValue(l.Value && r.Value),
            (BoolValue l, BoolValue r, "||") => new BoolValue(l.Value || r.Value),
            _ => throw new SemnticErrorListener("Invalid operation", context.Start)
        };
    }

    // VisitAssign
    public override ValueWrapper VisitAssign(LanguageParser.AssignContext context)
{
    // La expresión izquierda (asignee) y la derecha (value)
    var asignee = context.expr(0);
    var value = Visit(context.expr(1));

    // Caso 1: Lado izquierdo es un identificador simple
    if (asignee is LanguageParser.IdentifierContext idContext)
    {
        string id = idContext.ID().GetText();
        if (value is VoidValue)
            throw new SemnticErrorListener("Invalid value", context.Start);

            

        if (currentEnvironment.ExistsVariable(id))
        {
            return currentEnvironment.AssignVariable(id, value, context.Start);
        }
        else
        {
            // Declaración implícita: si la variable no existe, se declara con el valor
            currentEnvironment.DeclareVariable(id, value, context.Start);
            return value;
        }
    }
    // Caso 2: Lado izquierdo es una asignación a una propiedad (por ejemplo, a.b = ...)
    else if (asignee is LanguageParser.CalleeContext calleeContext)
{
    // Evaluamos la parte base de la cadena de acceso
    ValueWrapper container = Visit(calleeContext.expr());

    // Recorremos todos los accesos excepto el último
    for (int i = 0; i < calleeContext.call().Length - 1; i++)
    {
        var call = calleeContext.call(i);
        if (call is LanguageParser.FuncCallContext funcCall)
        {
            if (container is FuncionValue functionValue)
            {
                container = VisitCall(functionValue.invocable, funcCall.args());
            }
            else
            {
                throw new SemnticErrorListener("Invalid call in assignment", context.Start);
            }
        }
        else if (call is LanguageParser.GetContext propertyAccess)
        {
            if (container is InstanceValue instanceValue)
            {
                container = instanceValue.Instance.Get(propertyAccess.ID().GetText(), propertyAccess.Start);
            }
            else
            {
                throw new SemnticErrorListener("Invalid property access", context.Start);
            }
        }
        else
        {
            throw new SemnticErrorListener("Invalid assignment target", context.Start);
        }
    }
    
    // Procesamos el último elemento de la cadena, que debe ser un acceso a propiedad (Get)
    var lastCall = calleeContext.call(calleeContext.call().Length - 1);
    if (lastCall is LanguageParser.GetContext lastProperty)
    {
        if (container is InstanceValue containerInstance)
        {
            var instance = containerInstance.Instance;
            var propertyName = lastProperty.ID().GetText();
            instance.Set(propertyName, value);
            return container;
        }
        else
        {
            throw new SemnticErrorListener("Invalid property access", context.Start);
        }
    }
    else
    {
        throw new SemnticErrorListener("Invalid assignment target", context.Start);
    }
}
    // Caso: Asignación a un elemento de slice (por ejemplo, numeros[2] = 100)
    else if (asignee is LanguageParser.ArrayAccessExprContextContext arrayAccess)
    {
        //evaluamos el array
        ValueWrapper arrayValue = Visit(arrayAccess.expr(0));
        ValueWrapper indexValue = Visit(arrayAccess.expr(1));

        if (arrayValue is SliceValue slice && indexValue is IntValue intIndex)
        {
            if (intIndex.Value < 0 || intIndex.Value >= slice.Values.Count)
            {
                throw new SemnticErrorListener("Index out of range", context.Start);
            }
            // Modificamos el elemento existente
            slice.Values[intIndex.Value] = value;
            return value;
        }
        throw new SemnticErrorListener("Invalid array assignment", context.Start);
    }
    
    else
    {
        throw new SemnticErrorListener("Invalid assignment target", context.Start);
    }
}



    // VisitEquality
    public override ValueWrapper VisitEquality(LanguageParser.EqualityContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;
        // Manejo especial para nil:
    if ((left is NilValue || left == NilValue.Instance) && (right is NilValue || right == NilValue.Instance))
    {
        return new BoolValue(true);
    }
    if ((left is NilValue || left == NilValue.Instance) || (right is NilValue || right == NilValue.Instance))
    {
        return new BoolValue(false);
    }

        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (IntValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (FloatValue l, FloatValue r, "==") => new BoolValue(l.Value == r.Value),
            (FloatValue l, FloatValue r, "!=") => new BoolValue(l.Value != r.Value),
            (IntValue l, FloatValue r, "==") => new BoolValue(l.Value == r.Value),
            (IntValue l, FloatValue r, "!=") => new BoolValue(l.Value != r.Value),
            (FloatValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (FloatValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (StringValue l, StringValue r, "==") => new BoolValue(l.Value == r.Value),
            (StringValue l, StringValue r, "!=") => new BoolValue(l.Value != r.Value),
            (BoolValue l, BoolValue r, "==") => new BoolValue(l.Value == r.Value),
            (BoolValue l, BoolValue r, "!=") => new BoolValue(l.Value != r.Value),
            (RuneValue l, RuneValue r, "==") => new BoolValue(l.Value == r.Value),
            (RuneValue l, RuneValue r, "!=") => new BoolValue(l.Value != r.Value),
            _ => throw new SemnticErrorListener("Invalid operation", context.Start)
        };
    }


    // VisitBoolean
    public override ValueWrapper VisitBoolean(LanguageParser.BooleanContext context)
    {
        return new BoolValue(bool.Parse(context.BOOL().GetText()));
    }


    // VisitString
    public override ValueWrapper VisitString(LanguageParser.StringContext context)
{
    string raw = context.STRING().GetText();
    // Se remueven las comillas de apertura y cierre
    string content = raw.Substring(1, raw.Length - 2);
    string processed = UnescapeString(content);
    return new StringValue(processed);
}

// Método auxiliar para des-escapar las secuencias de escape
private string UnescapeString(string str)
{
    // Reemplazamos primero las secuencias más largas para evitar conflictos
    return str.Replace("\\\\", "\\")  // Primero reemplazamos doble barra invertida
              .Replace("\\n", "\n")   // Luego reemplazamos \n, \r, \t, etc.
              .Replace("\\r", "\r")
              .Replace("\\t", "\t")
              .Replace("\\\"", "\"");
}
    // VisitRune
    public override ValueWrapper VisitRune(LanguageParser.RuneContext context)
    {
        //El texto 
        string text = context.RUNE().GetText();
        //Se obtiene el valor del texto
        char rune = text[1];
        return new RuneValue(rune);
        
    }


    // VisitBlockStmt
    public override ValueWrapper VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        Environment previousEnvironment = currentEnvironment;
        currentEnvironment = new Environment(currentEnvironment);

        foreach (var stmt in context.dcl())
        {
            Visit(stmt);
        }

        currentEnvironment = previousEnvironment;
        return defaultVoid;
    }

    // VisitIfStmt
    public override ValueWrapper VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr());

        if (condition is not BoolValue)
        {
            throw new SemnticErrorListener("Invalid condition", context.Start);
        }

        if ((condition as BoolValue).Value)// verificamos si la condicion es verdadera
        {
            Visit(context.stmt(0));
        }
        else if (context.stmt().Length > 1)
        {
            Visit(context.stmt(1));
        }

        return defaultVoid;
    }

    // VisitSwitS
    public override ValueWrapper VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
{
    var sw = context.switchS();
    // Evaluamos la expresión del switch.
    ValueWrapper switchValue = Visit(sw.expr());
    bool caseMatched = false;
    
    // Recorremos cada 'case'
    foreach (var caseClause in sw.switchCase())
    {
        // Evaluamos la expresión del case.
        ValueWrapper caseValue = Visit(caseClause.expr());
        
        // Comparamos (usamos Equals para registros, que compara valores)
        if (caseValue.Equals(switchValue))
        {
            try
            {
                // Ejecutamos cada sentencia del caso.
                foreach (var stmt in caseClause.stmt())
                {
                    Visit(stmt);
                }
            }
            catch (BreakExepction)
            {
                // Se captura la excepción break y se sale del switch.
            }
            caseMatched = true;
            break; // Salimos del switch tras ejecutar el case correspondiente.
        }
    }
    
    // Si ningún case coincide y se definió un bloque default, se ejecuta.
    if (!caseMatched && sw.defaultCase() != null)
    {
        try
        {
            foreach (var stmt in sw.defaultCase().stmt())
            {
                Visit(stmt);
            }
        }
        catch (BreakExepction)
        {
            // Capturamos break en el default
        }
    }
    
    return defaultVoid;
}



    // VisitWhileStmt
    public override ValueWrapper VisitWhileStmt(LanguageParser.WhileStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr());

        if (condition is not BoolValue)
        {
            throw new SemnticErrorListener("Invalid condition", context.Start);
        }

        while ((condition as BoolValue).Value)
        {
            Visit(context.stmt());
            condition = Visit(context.expr());
        }

        return defaultVoid;
    }

    // VisitForStmt
    public override ValueWrapper VisitForStmt(LanguageParser.ForStmtContext context)
    {
        Environment previousEnvironment = currentEnvironment;//guardar el entorno anterior
        currentEnvironment = new Environment(currentEnvironment);//crear un nuevo entorno

        Visit(context.forInit());//visitamos el forInit

        //Visit forBody
        VisitForBody(context);
        currentEnvironment = previousEnvironment;
        return defaultVoid;
    }

    //Visit ForBody
    public void VisitForBody(LanguageParser.ForStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr(0));
        var lastEnvironment = currentEnvironment;

        if (condition is not BoolValue)
        {
            throw new SemnticErrorListener("Invalid condition", context.Start);
        }

    try
        {
         while(condition is BoolValue boolCondition && boolCondition.Value)
        {
           Visit(context.stmt());
            Visit(context.expr(1));
            condition = Visit(context.expr(0));
        }
        }
        catch (BreakExepction)
        {
            currentEnvironment = lastEnvironment;
            
        }
        catch (ContinueExepction)
        {
            currentEnvironment = lastEnvironment;
            Visit(context.expr(1));
            VisitForBody(context);
        }
    }

    
    //VisitBreakStmt
    public override ValueWrapper VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        throw new BreakExepction();
    }
    //VisitContinueStmt
    public override ValueWrapper VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        throw new ContinueExepction();
    }
    //VisitReturnStmt
    public override ValueWrapper VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        ValueWrapper value = defaultVoid;
        if (context.expr() != null)
        {
            value = Visit(context.expr());
        }
        throw new ReturnExepction(value);
    }

    //VisitCallee
    public override ValueWrapper VisitCallee(LanguageParser.CalleeContext context)
    {

        ValueWrapper callee = Visit(context.expr());
        foreach (var call in context.call())
        {
            if(call is LanguageParser.FuncCallContext funcall){
                if(callee is FuncionValue funtionValue)
            {
                callee = VisitCall(funtionValue.invocable, funcall.args());
            }
            else
            {
                throw new SemnticErrorListener("Llamada invalida", context.Start);
            }
            }

            else if(call is LanguageParser.GetContext propertyAccess){
                if (callee is NilValue)
                {
                callee = NilValue.Instance;
                continue;
             }
            if (callee is StringValue s && propertyAccess.ID().GetText() == "string")
                {           
                    // Al invocar .string() sobre un StringValue, simplemente se retorna el StringValue.
                     continue;
                 }
            else if (callee is InstanceValue instanceValue)
            {
                callee = instanceValue.Instance.Get(propertyAccess.ID().GetText(), propertyAccess.Start);
            }
            else
            {
                throw new SemnticErrorListener("Propiedad inválida", context.Start);
            }
            }
            
        }
        return callee;
        
    }

    public ValueWrapper VisitCall(Invocable invocable , LanguageParser.ArgsContext context)
    {
        List<ValueWrapper> arguments = new List<ValueWrapper>();
         
         if(context != null)
         {
             foreach (var expr in context.expr())
             {
                 arguments.Add(Visit(expr));
             }
         }
        //  if(context != null && arguments.Count != invocable.Arity())
        //  {
        //      throw new SemnticErrorListener("Numeros invalidos en los argumentos", context.Start);
        //  }

         return invocable.Invoke(arguments, this);
    }

    // Métodos auxiliares para verificación de tipos y obtención de valores por defecto:
    private ValueWrapper CheckAndConvert(ValueWrapper value, string declaredType, Antlr4.Runtime.IToken token)
    {
        if (declaredType == "float64")
        {
            if (value is IntValue intVal)
            {
                return new FloatValue(intVal.Value);
            }
            else if (value is FloatValue)
            {
                return value;
            }
        }
        else if (declaredType == "int")
        {
            if (value is IntValue)
            {
                return value;
            }
        }
        else if (declaredType == "string")
        {
            if (value is StringValue)
            {
                return value;
            }
        }
        else if (declaredType == "bool")
        {
            if (value is BoolValue)
            {
                return value;
            }
        }
        else if (declaredType == "rune")
        {
            if (value is RuneValue)
            {
                return value;
            }
        }
        throw new SemnticErrorListener("Tipo incompatible en la asignación", token);
    }

    public ValueWrapper GetDefaultValueForType(string declaredType)
    {
        // Si el tipo declarado es un slice, por ejemplo "[]int", retornamos un SliceValue vacío.
    if (declaredType.StartsWith("[]"))
    {
        return new SliceValue(new List<ValueWrapper>());
    }
        return declaredType switch
        {
            "int" => new IntValue(0),
            "float64" => new FloatValue(0.0f),
            "string" => new StringValue(""),
            "bool" => new BoolValue(false),
            "rune" => new RuneValue('\0'),
            _ => throw new Exception("Tipo desconocido")
        };
    }
     //VisitFuncDcl
    public override ValueWrapper VisitFuncDcl(LanguageParser.FuncDclContext context)
{
    // Si existe receptor, se trata de un método asociado a un struct
    if (context.receiverParam() != null)
    {
        // Extraemos el receptor: por ejemplo, (p Persona)
        string receiverId = context.receiverParam().ID().GetText();         // "p" (no es muy relevante)
        string receiverType = context.receiverParam().typeSpecifier().GetText(); // "Persona"
        
        // Obtenemos el nombre del método
        string methodName = context.ID().GetText();
        
        // Creamos la función (ForaneaFuntion) con el contexto actual
        var foranea = new ForaneaFuntion(currentEnvironment, context);
        SymbolTableCollector.AddSymbol(methodName, "Funcion", receiverType, "Global", context.Start.Line, context.Start.Column);
        
        // Buscamos en el entorno global el tipo receptor
        ValueWrapper typeValue = currentEnvironment.GetVariable(receiverType, context.Start);
        if (!(typeValue is StructValue structVal))
        {
            throw new SemnticErrorListener("Receiver type '" + receiverType + "' is not a struct", context.Start);
        }
        
        // Agregamos el método al diccionario del struct
       structVal.LenguageStruct.AddMethod(methodName, new ForaneaFuntion(currentEnvironment, context));
        
        // (Opcionalmente, puedes declarar el método globalmente si lo deseas)
        return defaultVoid;
    }
    else
    {
        string functionName = context.ID().GetText();
        // Si se puede inferir un tipo de retorno, agrégalo; en caso contrario, "void".
        string returnType = "void"; // O extrae el tipo, si está presente
        SymbolTableCollector.AddSymbol(functionName, "Función", returnType, "Global", context.Start.Line, context.Start.Column);

        // Función global sin receptor
        var foranea = new ForaneaFuntion(currentEnvironment, context);
        currentEnvironment.DeclareVariable(context.ID().GetText(), new FuncionValue(foranea, context.ID().GetText()), context.Start);
        return defaultVoid;
    }
}


    //VisitClassDcl

    public override ValueWrapper VisitClassDcl(LanguageParser.ClassDclContext context)
    {
        Dictionary<string, LanguageParser.VarDclContext> props = new Dictionary<string, LanguageParser.VarDclContext>();
        Dictionary<string, ForaneaFuntion> methods = new Dictionary<string, ForaneaFuntion>();

        foreach (var prop in context.classBody()){
            if(prop.varDcl() != null){
                var vardcl= prop.varDcl();
                props.Add(vardcl.GetText(), vardcl);
            }
            else if(prop.funcDcl() != null){
                var funcDcl = prop.funcDcl();
                var foreignFunction = new ForaneaFuntion(currentEnvironment, funcDcl);
                methods.Add(prop.funcDcl().ID().GetText(), foreignFunction);
            }

            
            
            
        }
        LenguageClass lenguageClass = new LenguageClass(context.ID().GetText(), props, methods);
        currentEnvironment.DeclareVariable(context.ID().GetText(), new InstanceValue(new Instance(lenguageClass)), context.Start);
        return defaultVoid;
    }

    //VisitNew

    public override ValueWrapper VisitNew(LanguageParser.NewContext context)
    {
        ValueWrapper classValue = currentEnvironment.GetVariable(context.ID().GetText(), context.Start);
        if(classValue is not ClassValue)
        {
            throw new SemnticErrorListener("Invalid class", context.Start);
        }
        List<ValueWrapper> args = new List<ValueWrapper>();
        if(context.args() != null)
        {
            foreach (var arg in context.args().expr())
            {
                args.Add(Visit(arg));
            }
        }

        var instance = ((ClassValue)classValue).LenguageClass.Invoke(args, this);
        
        return instance;
        
    }

    // VisitTypeDcl
    public override ValueWrapper VisitTypeDcl(LanguageParser.TypeDclContext context)
    {
    string structName = context.ID().GetText();
    // Recolecta los campos declarados en el struct
    Dictionary<string, LanguageParser.StructFieldContext> fields = new Dictionary<string, LanguageParser.StructFieldContext>();
    foreach (var field in context.structField())
    {
        string fieldName = field.ID().GetText();
        fields[fieldName] = field;
    }
    if (fields.Count == 0)
    {
        throw new SemnticErrorListener("Struct must have at least one field", context.Start);
    }
    SymbolTableCollector.AddSymbol(structName, "Struct", "struct", "Global", context.Start.Line, context.Start.Column);
    // Crea el tipo de struct y lo registra en el entorno global
    LenguageStruct ls = new LenguageStruct(structName, fields);
    currentEnvironment.DeclareVariable(structName, new StructValue(ls), context.Start);
    return defaultVoid;
    }

    public override ValueWrapper VisitStructLiteral(LanguageParser.StructLiteralContext context)
{
    string structName = context.ID().GetText();
    ValueWrapper typeValue = currentEnvironment.GetVariable(structName, context.Start);
    if (!(typeValue is StructValue structVal))
    {
        throw new SemnticErrorListener("Invalid struct type", context.Start);
    }
    LenguageStruct ls = structVal.LenguageStruct;
    Dictionary<string, ValueWrapper> initialValues = new Dictionary<string, ValueWrapper>();
    if (context.structLiteralFields() != null)
    {
        foreach (var field in context.structLiteralFields().structLiteralField())
        {
            string fieldName = field.ID().GetText();
            ValueWrapper fieldValue = Visit(field.expr());
            initialValues[fieldName] = fieldValue;
        }
    }
    Instance instance = ls.CreateInstance(initialValues, this);
    return new InstanceValue(instance);
}

//nil
 public override ValueWrapper VisitNil(LanguageParser.NilContext context)
{
    // Por ejemplo, se retorna VoidValue o se podría definir NilValue.
    return NilValue.Instance;
}

public override ValueWrapper VisitSliceLiteral(LanguageParser.SliceLiteralContext context)
{
    return SliceEvaluator.EvaluateSliceLiteral(context, this);
}

public override ValueWrapper VisitSliceIndex(LanguageParser.SliceIndexContext context)
{
    // Se asume que la regla es: 'slices' '.' 'Index' '(' expr ',' expr ')'
    // Usamos las expresiones dentro de los paréntesis:
    ValueWrapper sliceValue = Visit(context.expr(0)); // evalúa el slice, ej. "numeros"
    ValueWrapper valueToFind = Visit(context.expr(1));  // evalúa el valor a buscar, ej. 30

    if (sliceValue is SliceValue slice)
    {
        for (int i = 0; i < slice.Values.Count; i++)
        {
            if (slice.Values[i].Equals(valueToFind))
            {
                return new IntValue(i);
            }
        }
        return new IntValue(-1); // No encontrado.
    }
    throw new SemnticErrorListener("Invalid slice for Index()", context.Start);
}


public override ValueWrapper VisitSliceAppend(LanguageParser.SliceAppendContext context)
{
    // Se asume que la regla es: 'append' '(' expr ',' expr ')'
    // Primer parámetro: slice destino (por ejemplo, mtx1)
    
    ValueWrapper target = Visit(context.expr(0));
    ValueWrapper toAppend = Visit(context.expr(1));

    if (target is SliceValue slice)
    {
        // Determinar si el target es multidimensional:
        // Si tiene al menos un elemento y ese elemento es un SliceValue, se asume que es multidimensional.
        bool targetIsMulti = (slice.Values.Count > 0 && slice.Values[0] is SliceValue);

        if (targetIsMulti)
        {
            // En un slice multidimensional se espera que el valor a agregar sea un slice unidimensional.
            if (toAppend is SliceValue candidate)
            {
                // Verificamos que candidate NO sea ya multidimensional.
                bool candidateIsMulti = (candidate.Values.Count > 0 && candidate.Values[0] is SliceValue);
                if (candidateIsMulti)
                {
                    throw new SemnticErrorListener("Se esperaba un slice unidimensional para agregar como fila", context.Start);
                }
                
                // la nueva fila sea compatible con la fila base.
                if (slice.Values.Count > 0 && slice.Values[0] is SliceValue firstRow && candidate.Values.Count > 0)
                {
                    ValueWrapper baseElement = firstRow.Values[0];
                    foreach (var elem in candidate.Values)
                    {
                        if (!IsCompatible(baseElement, elem))
                            throw new SemnticErrorListener("Tipo incompatible en la nueva fila", context.Start);
                    }
                }
                // Si candidate es un slice unidimensional, lo agregamos directamente.
                toAppend = candidate;
            }
            else
            {
                throw new SemnticErrorListener("Se esperaba un slice para agregar como fila", context.Start);
            }
        }
        else
        {
            // Caso unidimensional: si ya hay elementos se verifica la compatibilidad.
            if (slice.Values.Count > 0)
            {
                ValueWrapper baseElement = slice.Values[0];
                if (!IsCompatible(baseElement, toAppend))
                    throw new SemnticErrorListener("Tipo incompatible en el append", context.Start);
            }
        }

        slice.Values.Add(toAppend);
        return slice;
    }
    throw new SemnticErrorListener("Invalid slice for append()", context.Start);
}



public override ValueWrapper VisitSliceLen(LanguageParser.SliceLenContext context)
{
    // Se asume que la regla es: 'len' '(' expr ')'
    ValueWrapper obj = Visit(context.expr()); // Evalúa la expresión dentro de los paréntesis
    if (obj is SliceValue slice)
    {
        return new IntValue(slice.Values.Count);
    }
    throw new SemnticErrorListener("Invalid slice for len()", context.Start);
}


public override ValueWrapper VisitStringJoin(LanguageParser.StringJoinContext context)
{
    // Se asume que la regla es: 'strings' '.' 'Join' '(' expr ',' expr ')'
    ValueWrapper obj = Visit(context.expr(0));     // Primer parámetro: el slice (por ejemplo, "palabras")
    ValueWrapper separatorValue = Visit(context.expr(1)); // Segundo parámetro: el separador (por ejemplo, " ")

    if (obj is SliceValue slice && separatorValue is StringValue separator)
    {
        // Verificamos que todos los elementos del slice sean de tipo StringValue
        if (!slice.Values.All(v => v is StringValue))
        {
            throw new SemnticErrorListener("Join only works with []string", context.Start);
        }
        // Concatenamos los elementos usando el separador
        string result = string.Join(separator.Value,
            slice.Values.Cast<StringValue>().Select(v => v.Value));
        return new StringValue(result);
    }
    throw new SemnticErrorListener("Invalid slice for Join()", context.Start);
}


// Agrega en tu visitor el método IsCompatible:
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
    if (declaredValue is SliceValue declaredSlice && newValue is SliceValue newSlice)
    {
        if (declaredSlice.Values.Count == 0)
            return newSlice.Values.Count == 0;
        var declaredBase = declaredSlice.Values[0];
        foreach (var element in newSlice.Values)
        {
            if (!IsCompatible(declaredBase, element))
                return false;
        }
        return true;
    }
    return false;
}

public override ValueWrapper VisitArrayAccessExprContext(LanguageParser.ArrayAccessExprContextContext context)
{
    // La regla es: expr '[' expr ']' 
    // El primer expr es el slice ( "numeros") y el segundo es el índice.
    ValueWrapper arrayValue = Visit(context.expr(0));  // Evalúa el slice
    ValueWrapper indexValue = Visit(context.expr(1));  // Evalúa el índice

    if (arrayValue is SliceValue slice && indexValue is IntValue intIndex)
    {
        if (intIndex.Value < 0 || intIndex.Value >= slice.Values.Count)
        {
            throw new SemnticErrorListener("Index out of range", context.Start);
        }
        return slice.Values[intIndex.Value];
        //return slice.Values[intIndex.Value - 1];
    }
    throw new SemnticErrorListener("Invalid array access", context.Start);
}

public override ValueWrapper VisitMultiSliceLiteralExpr(LanguageParser.MultiSliceLiteralExprContext context)
{
    // Inicializamos una lista para almacenar las filas.
    List<ValueWrapper> rows = new List<ValueWrapper>();

    // Si se definieron filas, se recorren.
    if (context.multiSliceLiteral().multiSliceRows() != null)
    {
        foreach (var rowCtx in context.multiSliceLiteral().multiSliceRows().multiSliceRow())
        {
            // Cada fila es evaluada y se crea un SliceValue.
            List<ValueWrapper> row = new List<ValueWrapper>();
            if (rowCtx.exprList() != null)
            {
                foreach (var expr in rowCtx.exprList().expr())
                {
                    row.Add(Visit(expr));
                }
            }
            // Solo agregamos la fila si no está vacía.
            if (row.Count > 0)
            {
                rows.Add(new SliceValue(row));
            }
        }
    }
    // Se retorna un SliceValue que contiene todas las filas.
    return new SliceValue(rows);
}

public override ValueWrapper VisitForWhileStmt(LanguageParser.ForWhileStmtContext context)
{
    ValueWrapper condition = Visit(context.expr());
    if (!(condition is BoolValue))
    {
        throw new SemnticErrorListener("Invalid condition in for", context.Start);
    }
    while (((BoolValue)condition).Value)
    {
        try
        {
            Visit(context.stmt());
        }
        catch (BreakExepction)
        {
            // Si se lanza break, salimos del ciclo
            break;
        }
        catch (ContinueExepction)
        {
            // Capturamos el continue y no hacemos nada, permitiendo que se salte el resto de la iteración.
        }
        // Ejecutamos la parte de incremento (si existe)
        Visit(context.expr());
        condition = Visit(context.expr());
        if (!(condition is BoolValue))
        {
            throw new SemnticErrorListener("Invalid condition in for", context.Start);
        }
    }
    return defaultVoid;
}

public override ValueWrapper VisitForRangeStmt(LanguageParser.ForRangeStmtContext context)
{
    // Se asume que la regla es: 'for' '(' ID ',' ID ':=' 'range' expr ')' stmt
    // Los dos IDs: índice y valor.
    string indexVar = context.ID(0).GetText();
    string valueVar = context.ID(1).GetText();
    // Se evalúa la expresión después de 'range', que debe dar un slice.
    ValueWrapper collection = Visit(context.expr());
    if (!(collection is SliceValue slice))
    {
        throw new SemnticErrorListener("For-range expects a slice", context.Start);
    }
    // Iteramos sobre el slice.
    for (int i = 0; i < slice.Values.Count; i++)
    {
        ValueWrapper element = slice.Values[i];
        // Creamos un nuevo entorno para la iteración.
        Environment innerEnv = new Environment(currentEnvironment);
        // Declaramos las variables índice y valor en este nuevo entorno.
        innerEnv.DeclareVariable(indexVar, new IntValue(i), context.Start);
        innerEnv.DeclareVariable(valueVar, element, context.Start);
        // Guardamos el entorno actual y usamos el nuevo para ejecutar el bloque.
        Environment savedEnv = currentEnvironment;
        currentEnvironment = innerEnv;
        Visit(context.stmt());
        // Restauramos el entorno original.
        currentEnvironment = savedEnv;
    }
    return defaultVoid;
}

public override ValueWrapper VisitPostIncrement(LanguageParser.PostIncrementContext context)
{
    // La regla es: expr '++'
    // Se evalúa la expresión para obtener el operando.
    // Se espera que sea un identificador simple.
    var idExpr = context.expr(); // Parte antes del '++'
    
    if (idExpr is LanguageParser.IdentifierContext identifier)
    {
        string id = identifier.ID().GetText();
        // Obtener el valor original de la variable.
        ValueWrapper originalValue = currentEnvironment.GetVariable(id, context.Start);
        if (originalValue is IntValue intVal)
        {
            // Realizar la operación: i = i + 1
            IntValue newValue = new IntValue(intVal.Value + 1);
            currentEnvironment.AssignVariable(id, newValue, context.Start);
            // Retornar el valor original (post-increment)
            return originalValue;
        }
        else
        {
            throw new SemnticErrorListener("Post-increment is only applicable to int", context.Start);
        }
    }
    else
    {
        throw new SemnticErrorListener("Invalid target for post-increment", context.Start);
    }
}

public override ValueWrapper VisitPostDecrement(LanguageParser.PostDecrementContext context)
{
    // La regla es: expr '--'
    // Se evalúa la expresión para obtener el operando.
    // Se espera que sea un identificador simple.
    var idExpr = context.expr();
    
    if (idExpr is LanguageParser.IdentifierContext identifier)
    {
        string id = identifier.ID().GetText();
        ValueWrapper originalValue = currentEnvironment.GetVariable(id, context.Start);
        if (originalValue is IntValue intVal)
        {
            IntValue newValue = new IntValue(intVal.Value - 1);
            currentEnvironment.AssignVariable(id, newValue, context.Start);
            return originalValue;
        }
        else
        {
            throw new SemnticErrorListener("Post-decrement is only applicable to int", context.Start);
        }
    }
    else
    {
        throw new SemnticErrorListener("Invalid target for post-decrement", context.Start);
    }
}










}