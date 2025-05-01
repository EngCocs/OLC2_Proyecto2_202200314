using analyzer;
using Microsoft.AspNetCore.Authentication;
using System.Globalization;
using System.Text;
public class CompilerVisitor : LanguageBaseVisitor<Object?>
{
    public ArmGenerator c = new ArmGenerator();
    private String? continueLabel = null;
    private String? breakLabel = null;
    private String? returnLabel = null;
    private Dictionary<string, int> variables = new ();
    //usamo esto par la posicion de las variables
    private int currentPosition = 0;
    
    public CompilerVisitor()
    {
        
    }

    // VisitProgram
    public override Object? VisitProgram(LanguageParser.ProgramContext context)
    {
         
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
    
       return null;
    }

    // VisitVarDcl
    public override Object? VisitVarDcl(LanguageParser.VarDclContext context)
{
    // Verificamos si la declaración es del tipo 'var' con inicialización:
    var explicitInit = context.explicitVarDeclWithInit();
    if (explicitInit != null)
    {
        return VisitExplicitVarDeclWithInit(explicitInit);
    }
    var explicitNoInit = context.explicitVarDeclWithoutInit();
    if (explicitNoInit != null)
    {
        return VisitExplicitVarDeclWithoutInit(explicitNoInit);
    }
    // Verificamos si es la declaración implícita:
    var implicitDecl = context.implicitVarDecl();
    if (implicitDecl != null)
    {
        // Delegamos en el método VisitImplicitVarDecl
        return VisitImplicitVarDecl(implicitDecl);
    }

    throw new Exception("Tipo de declaración de variable desconocido.");

    

    
    
}


    

    // Declaración explícita con tipo y valor inicial:
    public override Object? VisitExplicitVarDeclWithInit(LanguageParser.ExplicitVarDeclWithInitContext context)
    {
        // Obtenemos el identificador y el tipo declarado.
    string varName = context.ID().GetText();
    string typeDeclared = context.typeSpecifier().GetText(); // Ejemplo: "int", "float64", etc.
    
    c.Comment($"Declaración explícita con inicialización: {varName}, tipo: {typeDeclared}");
    
    // Se evalúa la expresión de inicialización (se espera que empuje un objeto al stack).
    Visit(context.expr());
    
    // Obtenemos el objeto resultante (de la cima del stack).
    var exprObj = c.GetLastObjet();
    
    // Opcional: Verificamos que el tipo de la expresión coincide con el declarado.
    bool typeMatches = false;
    switch (typeDeclared)
    {
         case "int":
             typeMatches = exprObj.Type == StackObjet.StackObjetType.Int;
             break;
         case "float64":
             typeMatches = exprObj.Type == StackObjet.StackObjetType.Float;
             break;
         case "string":
             typeMatches = exprObj.Type == StackObjet.StackObjetType.String;
             break;
         case "bool":
             typeMatches = exprObj.Type == StackObjet.StackObjetType.Bool;
             break;
         case "rune":
             typeMatches = exprObj.Type == StackObjet.StackObjetType.Char;
             break;
         default:
             throw new Exception($"Tipo declarado desconocido: {typeDeclared}");
    }
    
    if (!typeMatches)
        throw new Exception($"El tipo de la expresión no coincide con el tipo declarado para la variable '{varName}'.");
    
    // Se etiqueta el objeto de la cima con el nombre de la variable.
    c.TagObjet(varName);
        return null;
    }

    // Declaración explícita con tipo sin valor inicial:
    public override Object? VisitExplicitVarDeclWithoutInit(LanguageParser.ExplicitVarDeclWithoutInitContext context)
    {
        string varName = context.ID().GetText();
    string typeDeclared = context.typeSpecifier().GetText();
    
    c.Comment($"Declaración explícita sin inicialización: {varName}, tipo: {typeDeclared}");

    // Obtiene el valor por defecto directamente
    object defaultValue = GetDefaultValueForType(typeDeclared)!;
    
    // Crea un objeto por defecto (StackObjet) en función del tipo
    StackObjet defaultObj;
    switch (typeDeclared)
    {
        case "int":
            defaultObj = c.IntObject();
            break;
        case "float64":
            defaultObj = c.FloatObject();
            break;
        case "string":
            defaultObj = c.StringObject();
            break;
        case "bool":
            defaultObj = c.BoolObject();
            break;
        case "rune":
            defaultObj = c.CharObject();
            break;
        default:
            throw new Exception($"Tipo declarado desconocido: {typeDeclared}");
    }
    
    // Utiliza PushConstant para empujar el valor por defecto.
   
    switch (typeDeclared)
    {
        case "int":
            c.PushConstant(defaultObj, (int)defaultValue);
            break;
        case "float64":
            c.PushConstant(defaultObj, (double)defaultValue);
            break;
        case "string":
            c.PushConstant(defaultObj, (string)defaultValue);
            break;
        case "bool":
            c.PushConstant(defaultObj, (bool)defaultValue);
            break;
        case "rune":
            c.PushConstant(defaultObj, (char)defaultValue);
            break;
    }
    
    // Etiqueta el objeto recién empujado con el identificador de la variable.
    c.TagObjet(varName);
    
    return null;
    }

    // Declaración implícita (inferencia de tipo):
    public override Object? VisitImplicitVarDecl(LanguageParser.ImplicitVarDeclContext context)
    {
        // Obtenemos el nombre de la variable, por ejemplo, "a" en "a := 5;"
    string varName = context.ID().GetText();
    
    
    Visit(context.expr());
    
    
    c.TagObjet(varName);
    
    // Emitimos un comentario para la generación de código ARM.
    c.Comment($"Declaración variable implícita '{varName}' almacenada en el stack.");
    
    
    return null;
    }

    // VisitExprStmt
    public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        Visit(context.expr());
        c.Comment("Expresión de declaración");
        c.PopObjet(Register.X0); // Descartamos el valor porque no lo necesitamos
        return null;
    }

    //VisitPrintStmt
   public override Object? VisitPrintStmt(LanguageParser.PrintStmtContext context)
{
    c.Comment("Print statement");

    var exprs = context.expr(); // IList<ExprContext>
    int count = exprs.Count();   

    for (int i = 0; i < count; i++)
    {
        Visit(exprs[i]);  

        var value = c.PopObjet(Register.X0);

        switch (value.Type)
        {
            case StackObjet.StackObjetType.Int:
                c.PrintIntergerRaw(Register.X0); break;
            case StackObjet.StackObjetType.Float:
                c.PrintFloatRaw(Register.D0); break;
            case StackObjet.StackObjetType.String:
                c.PrintStringRaw(Register.X0); break;
            case StackObjet.StackObjetType.Bool:
                c.PrintBoolRaw(Register.X0); break;
            case StackObjet.StackObjetType.Char:
                c.PrintCharRaw(Register.X0); break;
            default:
                throw new Exception("Tipo no soportado en print.");
        }

        // Imprimir espacio si no es el último
        if (i < count - 1)
            c.PrintLiteral(" ");
    }

    // Salto de línea al final
    c.PrintLiteral("\n");
    return null;
}



    


    public override Object? VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        string varName = context.ID().GetText();
        
        // if(!variables.ContainsKey(varName))
        // {
        //     throw new Exception($"Variable '{varName}' no declarada");
        // }
        var (offset, obj) = c.GetObjet(varName);
        c.Mov(Register.X0, offset); // Cargamos la dirección de la variable en x1
        c.Add(Register.X0, Register.SP, Register.X0); // Sumamos el FP para obtener la dirección real
        if (obj.Type == StackObjet.StackObjetType.Float)
    {
        c.LdrFloat(Register.D0, Register.X0); // Usa LDR d0, [x0]
        c.FPush(Register.D0);
    }
    else
    {
        c.Ldr(Register.X0, Register.X0); // Usa LDR x0, [x0]
        c.Push(Register.X0);
    }
        var newObjet= c.CloneObjet(obj);
        newObjet.ID= null;
        c.PushObjet(newObjet); // Hacemos push del objeto de la variable en el stack
        

        return null;
    }

    // VisitParens
    public override Object? VisitParens(LanguageParser.ParensContext context)
    {
        return Visit(context.expr());
    }

    // VisitNegate
    public override Object? VisitNegate(LanguageParser.NegateContext context)
    {
        c.Comment("Negación unaria");
    Visit(context.expr()); // Procesamos la expresión dentro del signo menos

    var value = c.PopObjet(Register.X0); // El resultado queda en x0 o d0

    if (value.Type == StackObjet.StackObjetType.Int)
    {
        c.Neg(Register.X0, Register.X0); // x0 = -x0
        c.Push(Register.X0);
        c.PushObjet(c.IntObject());
    }
    else if (value.Type == StackObjet.StackObjetType.Float)
    {
        c.FNeg("d0", "d0"); // d0 = -d0
        c.FPush("d0");
        c.PushObjet(c.FloatObject());
    }
    else
    {
        throw new Exception("Negación unaria solo se permite sobre int o float64.");
    }

    return null;
    }

    //VisitNot
    public override Object? VisitNot(LanguageParser.NotContext context)
    {
        c.Comment("Logical NOT");

        Visit(context.expr());

        var value = c.PopObjet(Register.X0);
        if (value.Type != StackObjet.StackObjetType.Bool)
        {
            throw new Exception("El operador ! solo se puede aplicar a valores booleanos.");
        }

        // NOT lógico: XOR con 1
        c.Eor("x0", "x0", "#1");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // VisitInt
    public override Object? VisitInt(LanguageParser.IntContext context)
    {   
        var value= context.INT().GetText();

        c.Comment("Constant : " + value);
        var IntObject = c.IntObject();
        c.PushConstant(IntObject, int.Parse(value));
        
        return null;
    }

    // VisitMulDiv
    public override Object? VisitMulDiv(LanguageParser.MulDivContext context)
    {
        c.Comment("MulDiv");
        string op = context.op.Text;
        Visit(context.expr(0)); // Visitamos el primer operando
        Visit(context.expr(1)); // Visitamos el segundo operando

        var right = c.PopObjet(Register.X1);
        var left = c.PopObjet(Register.X0);

        // --- INT * INT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Int)
{
    if (op == "*")
    {
        c.Mul("x0", "x0", "x1");
        c.Push("x0");
        c.PushObjet(c.IntObject());
    }
    else if(op == "/") // División con conversión implícita a float
    {
        c.Scvtf("d0", "x0");  // convierte numerador a float
        c.Scvtf("d1", "x1");  // convierte denominador a float
        c.FDiv("d0", "d0", "d1");
        c.FPush("d0");
        c.PushObjet(c.FloatObject());
    }
    else if (op == "%")
        {
            // Validación en tiempo de ejecución: división entre cero
            c.Cmp("x1", 0);
           

            // Módulo: x0 % x1
            c.Rem("x0", "x0", "x1");
            c.Push("x0");
            c.PushObjet(c.IntObject());
        }
    return null;
}

    // --- FLOAT * FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Float)
    {
        c.FMOV("d1", "d0"); // d0 = left, d1 = right

        if (op == "*")
            c.Fmul("d0", "d0", "d1");
        else
            c.FDiv("d0", "d0", "d1");

        c.FPush("d0");
        c.PushObjet(c.FloatObject());
        return null;
    }

    // --- INT * FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Float)
    {
        c.FMOV("d1", "d0");         // d1 = float (right)
        c.Scvtf("d2", "x0");        // d2 = float(int)

        if (op == "*")
            c.Fmul("d0", "d2", "d1");
        else
            c.FDiv("d0", "d2", "d1");

        c.FPush("d0");
        c.PushObjet(c.FloatObject());
        return null;
    }

    // --- FLOAT * INT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Int)
    {
        c.FMOV("d1", "d0");         // d1 = float (left)
        c.Scvtf("d2", "x1");        // d2 = float(int)

        if (op == "*")
            c.Fmul("d0", "d1", "d2");
        else
            c.FDiv("d0", "d1", "d2");

        c.FPush("d0");
        c.PushObjet(c.FloatObject());
        return null;
    }
        return null;

    }

    // VisitAddSub
    public override Object? VisitAddSub(LanguageParser.AddSubContext context)
    {
        c.Comment("AddSub");
        var  opetarion = context.op.Text;
        //1+2
        
        Visit(context.expr(0));//vist 1 : top --> [1]
        Visit(context.expr(1));// //vist 2 : top --> [1,2]

        var right = c.PopObjet(Register.X1); //pop 2 : top --> [1]
        var left = c.PopObjet(Register.X0); //pop 1 : top --> []
        // --- INT + INT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Int)
    {
        if (opetarion == "+")
            c.Add(Register.X0, Register.X0, Register.X1);
        else
            c.Sub(Register.X0, Register.X0, Register.X1);

        c.Push(Register.X0);
        c.PushObjet(c.IntObject());
        return null;
    }

    // --- FLOAT + FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Float)
    {
        c.FMOV("d1", "x1"); // Lado derecho (pop 2)
        c.FMOV("d0", "x0"); // Lado izquierdo (pop 1)

        if (opetarion == "+")
            c.FAdd("d0", "d0", "d1");
        else
            c.FSub("d0", "d0", "d1");

        c.FPush("d0");
        c.PushObjet(c.FloatObject());
        return null;
    }

    // --- INT + FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Float)
    {
        
        c.FMOV("d1", "d0");            // copia float a d1
        c.Scvtf("d2", "x0");           // convierte int a float en d2

        if (opetarion == "+")
            c.FAdd("d0", "d2", "d1");  // resultado = d2 + d1
        else
            c.FSub("d0", "d2", "d1");  // resultado = d2 - d1

        c.FPush("d0");
        c.PushObjet(c.FloatObject());
        return null;
    }

    // --- FLOAT + INT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Int)
    {
        
    c.FMOV("d1", "d0");            // copia float a d1
    c.Scvtf("d2", "x1");           // convierte int a float en d2

    if (opetarion == "+")
        c.FAdd("d0", "d1", "d2");  // resultado = d1 + d2
    else
        c.FSub("d0", "d1", "d2");  // resultado = d1 - d2

    c.FPush("d0");
    c.PushObjet(c.FloatObject());
    return null;
    }

    // --- STRING + STRING ---
    if (right.Type == StackObjet.StackObjetType.String && left.Type == StackObjet.StackObjetType.String)
    {
        if (opetarion != "+")
            throw new Exception("No se puede restar strings.");

           

        c.concatString(); // Función de biblioteca estándar

        // Resultado estará en X0
        c.Push(Register.X0);
        c.PushObjet(c.StringObject());
        return null;
    }
    // --- STRING + INT ---
    else if (opetarion == "-")
        {
            c.Sub(Register.X0, Register.X0, Register.X1); // x0= x0 - x1
        }
        c.Comment("Operation : " + opetarion);
        c.Push(Register.X0); //push x0 : top --> [x0]
        c.PushObjet(c.CloneObjet(left));
        
        c.Comment("Result : " + Register.X0);
        c.Comment("Push result : " + Register.X0);
        return null;
    }


    // VisitFloat
    public override Object? VisitFloat(LanguageParser.FloatContext context)
    {
        double value = double.Parse(context.GetText(), System.Globalization.CultureInfo.InvariantCulture);

        var floatObj = c.FloatObject(); // crea el StackObjet de tipo float
        c.PushConstant(floatObj, value); // guarda en stack y genera instrucciones
        return null;
    }

    // VisitRelational
    public override Object? VisitRelationalS(LanguageParser.RelationalSContext context)
    {
        c.Comment("Relational");

    string op = context.op.Text; // Puede ser >, <, >=, <=

    Visit(context.expr(0));
    Visit(context.expr(1));

    var right = c.PopObjet(Register.X1);
    var left = c.PopObjet(Register.X0);

    // --- INT vs INT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Int)
    {
        c.Cmp("x0", "x1");
        c.Set(RelationToCond(op), "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- FLOAT vs FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Float)
    {
        c.FMOV("d1", "x1");// float right
        c.FMOV("d0", "x0");
        c.FCMP("d0", "d1");
        c.Set(RelationToCond(op), "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- INT vs FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Float)
    {
        c.FMOV("d1", "x1"); // float right
        c.Scvtf("d0", "x0"); // int -> float
        c.FCMP("d0", "d1");
        c.Set(RelationToCond(op), "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- FLOAT vs INT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Int)
    {
        c.FMOV("d0", "x0"); // float left
        c.Scvtf("d1", "x1"); // int -> float
        c.FCMP("d0", "d1");
        c.Set(RelationToCond(op), "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- RUNE vs RUNE ---
    if (left.Type == StackObjet.StackObjetType.Char && right.Type == StackObjet.StackObjetType.Char)
    {
        c.Cmp("x0", "x1");
        c.Set(RelationToCond(op), "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }
        return null;
    }
    private string RelationToCond(string op)
    {
        return op switch
        {
            ">" => "GT",
            "<" => "LT",
            ">=" => "GE",
            "<=" => "LE",
            _ => throw new Exception("Operador relacional no soportado: " + op)
        };
    }

    //VisitLogical
    public override Object? VisitLogical(LanguageParser.LogicalContext context)
    {
        c.Comment("Logical Operation");

        string op = context.op.Text; // && u ||

        Visit(context.expr(0));
        Visit(context.expr(1));

        var right = c.PopObjet(Register.X1); // Segundo operando
        var left = c.PopObjet(Register.X0);  // Primer operando

        if (left.Type != StackObjet.StackObjetType.Bool || right.Type != StackObjet.StackObjetType.Bool)
        {
            throw new Exception("Los operadores lógicos solo se pueden aplicar a valores booleanos.");
        }

        if (op == "&&")
        {
            c.And("x0", "x0", "x1");
        }
        else if (op == "||")
        {
            c.Orr("x0", "x0", "x1");
        }
        else
        {
            throw new Exception("Operador lógico no soportado: " + op);
        }

        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // VisitAssign
    public override Object? VisitAssign(LanguageParser.AssignContext context)
{
    // El lado izquierdo de la asignación
    var assignee = context.expr(0);
    
    if(assignee is LanguageParser.IdentifierContext idContext)
    {
        string varName = idContext.ID().GetText();
        c.Comment("Asignación a variable: " + varName);
        Visit(context.expr(1)); // Visitamos la expresión del lado derecho
        var valueObjeet = c.PopObjet(Register.X0); // Pop the value to assign
        var (offset, varObject) = c.GetObjet(varName);
        c.Mov(Register.X1, offset); // Cargamos la dirección de la variable en x1
        c.Add(Register.X1, Register.SP, Register.X1); // Sumamos el FP para obtener la dirección real
        c.Str(Register.X0, Register.X1); // Guardamos el valor en la dirección de la variable
        c.Push(Register.X0); // Hacemos push del valor de la variable en el stack
        c.PushObjet(c.CloneObjet(varObject)); // Hacemos push del objeto de la variable en el stack
    }

    return null;
}



    // VisitEquality
    public override Object? VisitEquality(LanguageParser.EqualityContext context)
    {
        c.Comment("Equality / Inequality");

    var op = context.op.Text; // "==" o "!="
    Visit(context.expr(0));
    Visit(context.expr(1));

    var right = c.PopObjet(Register.X1);
    var left = c.PopObjet(Register.X0);

    // --- INT == INT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Int)
    {
        c.Cmp("x0", "x1");
        c.Set(op == "==" ? "EQ" : "NE", "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- FLOAT == FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Float)
    {
        c.FMOV("d1", "x1");
        c.FMOV("d0", "x0");
        c.FCMP("d0", "d1");
        c.Set(op == "==" ? "EQ" : "NE", "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- INT == FLOAT ---
    if (left.Type == StackObjet.StackObjetType.Int && right.Type == StackObjet.StackObjetType.Float)
    {
        c.FMOV("d1", "d0");     // d1 = right (float)
        c.Scvtf("d2", "x0");    // d2 = left (int -> float)
        c.FCMP("d2", "d1");
        c.Set(op == "==" ? "EQ" : "NE", "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- FLOAT == INT ---
    if (left.Type == StackObjet.StackObjetType.Float && right.Type == StackObjet.StackObjetType.Int)
    {
        c.FMOV("d1", "d0");     // d1 = left (float)
        c.Scvtf("d2", "x1");    // d2 = right (int -> float)
        c.FCMP("d1", "d2");
        c.Set(op == "==" ? "EQ" : "NE", "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- BOOL == BOOL ---
    if (left.Type == StackObjet.StackObjetType.Bool && right.Type == StackObjet.StackObjetType.Bool)
    {
        c.Cmp("x0", "x1");
        c.Set(op == "==" ? "EQ" : "NE", "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- CHAR == CHAR ---
    if (left.Type == StackObjet.StackObjetType.Char && right.Type == StackObjet.StackObjetType.Char)
    {
        c.Cmp("x0", "x1");
        c.Set(op == "==" ? "EQ" : "NE", "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }

    // --- STRING == STRING ---
    if (left.Type == StackObjet.StackObjetType.String && right.Type == StackObjet.StackObjetType.String)
    {
        
        // strcmp(x0, x1) -> resultado en w0 (-1, 0, 1)
        c.CallExternal("strcmp"); // resultado en x0
        if (op == "==")
            c.Cmp("x0", 0);
        else
            c.Cmp("x0", 0);
        c.Set(op == "==" ? "EQ" : "NE", "x0");
        c.Push("x0");
        c.PushObjet(c.BoolObject());
        return null;
    }
        return null;
    }


    // VisitBoolean
    public override Object? VisitBoolean(LanguageParser.BooleanContext context)
    {
        // Obtiene el literal "true" o "false"
    var boolText = context.BOOL().GetText();
    c.Comment("Boolean: " + boolText);
    // USO  BoolObject()
    var boolObj = c.BoolObject();
    // Convierte el texto a su valor booleano (true o false)
    bool value = boolText.Equals("true", StringComparison.OrdinalIgnoreCase);
    // PushConstant para empujar el valor booleano al stack ZI.
    c.PushConstant(boolObj, value);
       return null; 
    }


    // VisitString
    public override Object? VisitString(LanguageParser.StringContext context)
{
    string raw = context.STRING().GetText();                     // Incluye comillas
    string cleaned = raw.Substring(1, raw.Length - 2);           // Remueve comillas
    string value = UnescapeString(cleaned);                      // Aplica des-escape

    c.Comment("String: " + value.Replace("\n", "\\n").Replace("\r", "\\r"));

    var stringObject = c.StringObject();
    c.PushConstant(stringObject, value);
    return null;
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
    public override Object? VisitRune(LanguageParser.RuneContext context)
    {
        string caracter = context.GetText(); // e.g., 'A'
        char value = caracter[1]; // segundo caracter el cuol es el caracter 
        c.Comment("Rune: " + value);
        var obj = c.CharObject();
        c.PushConstant(obj, value);
        return null;
        
    }


    // VisitBlockStmt
    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        c.Comment("Bloque de código");
        c.NewScope();
        foreach(var dcl in context.dcl())
        {
            Visit(dcl);
        }
        int bytesToRemove = c.EndScope();
        if(bytesToRemove > 0)
        {   
            c.Comment("Remover " + bytesToRemove + " bytes del stack");
            c.Mov(Register.X0, bytesToRemove);
            c.Add(Register.SP, Register.SP, Register.X0); // Ajustamos el stack
        }
        return null;
    }

    // VisitIfStmt
    public override Object? VisitIfStmt(LanguageParser.IfStmtContext context)
    {   
        c.Comment("If statement");
        Visit(context.expr()); // Evaluamos la condición
        c.PopObjet(Register.X0); // Sacamos el valor de la condición

        /*
        1.SOLO ES UN IF, no hay else
        if(!condicion) goto endLABEL
          ..(Cuerpo del if)
          endLABEL:
        2. IF ELSE
        if(!condicion) goto elseLABEL
          ..(Cuerpo del if)
          goto endLABEL
          elseLABEL:
          ..(Cuerpo del else)
          endLABEL:
        */
        var hasElse = context.stmt().Length > 1;
        if(hasElse)
        {
           var elseLabel = c.GetLabel();
           var endLabel = c.GetLabel();
           c.Cbz(Register.X0, elseLabel); // Si la condición es falsa, saltamos al else
           Visit(context.stmt(0)); // Cuerpo del if
            c.B(endLabel); // Saltamos al final
            c.SetLabel(elseLabel); // Etiqueta del else
            Visit(context.stmt(1)); // Cuerpo del else
            c.SetLabel(endLabel); // Etiqueta del final
        }
        else
        {
            var endLabel = c.GetLabel();
            c.Cbz(Register.X0, endLabel); // Si la condición es falsa, saltamos al final
            Visit(context.stmt(0)); // Cuerpo del if
            c.SetLabel(endLabel); // Etiqueta del final
        }

        return null;
    }

    // VisitSwitS
    public override object? VisitSwitchS(LanguageParser.SwitchSContext context)

{
    c.Comment("Switch statement");

    var endLabel = c.GetLabel(); // Etiqueta final del switch
    var caseLabels = new List<string>(); // Etiquetas para cada case
    var defaultLabel = context.defaultCase() != null ? c.GetLabel() : endLabel;

    // Evaluamos la expresión del switch y guardamos su resultado en el stack
    Visit(context.expr());
    c.PopObjet(Register.X0); // x0 contiene el valor a comparar
    c.Push(Register.X0); // Lo dejamos en el stack para los cases

    // Preparamos etiquetas para cada case
    foreach (var caseNode in context.switchCase())
        caseLabels.Add(c.GetLabel());

    // Comparaciones para cada case
    for (int i = 0; i < context.switchCase().Length; i++)
    {
        Visit(context.switchCase()[i].expr()); // Evaluar valor del case
        c.PopObjet(Register.X1); // x1 = valor del case

        c.Ldr(Register.X0, Register.SP); // x0 = valor del switch original (sin pop)
        c.Cmp(Register.X0, Register.X1);
        c.Beq(caseLabels[i]); // Si es igual, ir al cuerpo del case
    }

    // Si no hubo match, saltar al default (o final si no hay default)
    c.B(defaultLabel);

    var prevBreakLabel = breakLabel;
    breakLabel = endLabel; // break dentro del switch salta al final
    bool broke = false;

    // Ejecutar cuerpo de cada case
    for (int i = 0; i < context.switchCase().Length; i++)
{
    c.SetLabel(caseLabels[i]);
    broke = false;

    foreach (var stmt in context.switchCase()[i].stmt())
    {
        Visit(stmt);
        if (stmt is LanguageParser.BreakStmtContext)
            broke = true;
    }

    if (!broke)
        c.B(endLabel); // Saltamos si no hubo break
}


    // Cuerpo del default
    if (context.defaultCase() != null)
    {
        c.SetLabel(defaultLabel);
        foreach (var stmt in context.defaultCase().stmt())
            Visit(stmt);
    }

    // Fin del switch
    c.SetLabel(endLabel);
    c.Add(Register.SP, Register.SP, 8); // Sacamos el valor del switch (limpieza)
    c.Comment("Fin del switch");

    breakLabel = prevBreakLabel;
    
    return null;
}



    // VisitWhileStmt
    public override Object? VisitWhileStmt(LanguageParser.WhileStmtContext context)
    {
        /*
        startLabel:
        if(!condicion) goto endLABEL
          ..(Cuerpo del while)
          goto startLABEL
          endLABEL:
        */
        c.Comment("While statement");
        var startLabel = c.GetLabel();
        var endLabel = c.GetLabel();
        var prebvContinueLabel = continueLabel;
        var prebvBreakLabel = breakLabel;
        continueLabel = startLabel;
        breakLabel = endLabel;
        c.SetLabel(startLabel); // Etiqueta de inicio
        Visit(context.expr()); // Evaluamos la condición
        c.PopObjet(Register.X0); // Sacamos el valor de la condición
        c.Cbz(Register.X0, endLabel); // Si la condición es falsa, saltamos al final
        Visit(context.stmt()); // Cuerpo del while
        c.B(startLabel); // Volvemos al inicio
        c.SetLabel(endLabel); // Etiqueta del final
        
        continueLabel = prebvContinueLabel;
        breakLabel = prebvBreakLabel;
        return null;
    }

    // VisitForStmt
    public override Object? VisitForStmt(LanguageParser.ForStmtContext context)
    {
        /*
        {
            ... init
            startLabel:
              ...condicion
            if(!condicion) goto endLABEL
            ..body
            increment:
            ..increment
            goto startLABEL
             endLABEL:
        }  
        */
        var startLabel = c.GetLabel();
        var endLabel = c.GetLabel();
        var incrementLabel = c.GetLabel();
        var prebvContinueLabel = continueLabel;
        var prebvBreakLabel = breakLabel;
        continueLabel = incrementLabel;
        breakLabel = endLabel;
        c.Comment("For statement");
        c.NewScope();
        Visit(context.forInit()); // Inicialización
        c.SetLabel(startLabel); // Etiqueta de inicio
        Visit(context.expr(0)); // Evaluamos la condición
        c.PopObjet(Register.X0); // Sacamos el valor de la condición
        c.Cbz(Register.X0, endLabel); // Si la condición es falsa, saltamos al final
        Visit(context.stmt()); // Cuerpo del for
        c.SetLabel(incrementLabel); // Etiqueta de incremento
        Visit(context.expr(1)); // Incremento
        c.B(startLabel); // Volvemos al inicio
        c.SetLabel(endLabel); // Etiqueta del final
        c.Comment("Fin del for");
        var bytesToRemove = c.EndScope();
        if(bytesToRemove > 0)
        {   
            c.Comment("Remover " + bytesToRemove + " bytes del stack");
            c.Mov(Register.X0, bytesToRemove);
            c.Add(Register.SP, Register.SP, Register.X0); // Ajustamos el stack
            c.Comment("Fin del for");
        }
        continueLabel = prebvContinueLabel;
        breakLabel = prebvBreakLabel;
        
        return null;
    }

    //Visit ForBody
    public void VisitForBody(LanguageParser.ForStmtContext context)
    {
        // añandir logica despues bb
    }

    
    //VisitBreakStmt
    public override Object? VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        c.Comment("Break statement");
        if (breakLabel != null)
        {
            c.B(breakLabel); // Saltamos a la etiqueta de break
        }
      
        return null;
    }
    //VisitContinueStmt
    public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        c.Comment("Continue statement");
        if (continueLabel != null)
        {
            c.B(continueLabel); // Saltamos a la etiqueta de continue
        }
        
        
       return null;
    }
    //VisitReturnStmt
    public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        return null;
    }

    //VisitCallee
    public override Object? VisitCallee(LanguageParser.CalleeContext context)
    {

        return null;
        
    }

    public Object? VisitCall(Invocable invocable , LanguageParser.ArgsContext context)
    {
        return null;
    }

    // Métodos auxiliares para verificación de tipos y obtención de valores por defecto:
    private Object? CheckAndConvert(Object? value, string declaredType, Antlr4.Runtime.IToken token)
    {
        return null;
    }

    public Object? GetDefaultValueForType(string declaredType)
    {
        if (declaredType.StartsWith("[]"))
    {
        // Si es un slice, puedes devolver una lista vacía
        return new List<object>();
    }

    return declaredType switch
    {
        "int" => 0,
        "float64" => 0.0,
        "string" => "",
        "bool" => false,
        "rune" => '\0',
        _ => throw new Exception("Tipo desconocido")
    };
        
    }
     //VisitFuncDcl
    public override Object? VisitFuncDcl(LanguageParser.FuncDclContext context)
{
    return null;
}


    //VisitClassDcl

    public override Object? VisitClassDcl(LanguageParser.ClassDclContext context)
    {
        return null;
    }

    //VisitNew

    public override Object? VisitNew(LanguageParser.NewContext context)
    {
        return null;
        
    }

    // VisitTypeDcl
    public override Object? VisitTypeDcl(LanguageParser.TypeDclContext context)
    {
        return null;
    }


//nil
 public override Object? VisitNil(LanguageParser.NilContext context)
{
    c.Comment("Valor nil");
    var nilObj = new StackObjet { Type = StackObjet.StackObjetType.Nil };
    c.PushConstant(nilObj, 0);
    return null;
}

public override Object? VisitSliceLiteral(LanguageParser.SliceLiteralContext context)
{
    return null;
}

public override Object? VisitSliceIndex(LanguageParser.SliceIndexContext context)
{
    return null;
}


public override Object? VisitSliceAppend(LanguageParser.SliceAppendContext context)
{
    return null;
}



public override Object? VisitSliceLen(LanguageParser.SliceLenContext context)
{
    return null;
}


public override Object? VisitStringJoin(LanguageParser.StringJoinContext context)
{
    return null;
}


public override Object? VisitArrayAccessExprContext(LanguageParser.ArrayAccessExprContextContext context)
{
    return null;
}


public override Object? VisitForWhileStmt(LanguageParser.ForWhileStmtContext context)
{
    c.Comment("For-While statement");

    var startLabel = c.GetLabel();
    var endLabel = c.GetLabel();
    var prevContinueLabel = continueLabel;
    var prevBreakLabel = breakLabel;

    continueLabel = startLabel;
    breakLabel = endLabel;

    c.NewScope();

    c.SetLabel(startLabel);                 // Etiqueta de inicio
    Visit(context.expr());                  // Evaluar condición
    c.PopObjet(Register.X0);               // Sacar resultado de condición
    c.Cbz(Register.X0, endLabel);          // Si es falso, saltamos al final

    Visit(context.stmt());                 // Cuerpo del bucle

    c.B(startLabel);                       // Volvemos al inicio
    c.SetLabel(endLabel);                 // Etiqueta de salida
    c.Comment("Fin del for-while");

    var bytesToRemove = c.EndScope();
    if (bytesToRemove > 0)
    {
        c.Comment($"Remover {bytesToRemove} bytes del stack");
        c.Mov(Register.X0, bytesToRemove);
        c.Add(Register.SP, Register.SP, Register.X0);
    }

    continueLabel = prevContinueLabel;
    breakLabel = prevBreakLabel;
    return null;
}

public override Object? VisitForRangeStmt(LanguageParser.ForRangeStmtContext context)
{
    return null;
}

public override Object? VisitPostIncrement(LanguageParser.PostIncrementContext context)
{
    return null;
}

public override Object? VisitPostDecrement(LanguageParser.PostDecrementContext context)
{
   return null;
}

}