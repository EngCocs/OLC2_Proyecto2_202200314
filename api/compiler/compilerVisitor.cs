using analyzer;
using Microsoft.AspNetCore.Authentication;
using System.Globalization;
using System.Text;
public class CompilerVisitor : LanguageBaseVisitor<Object?>
{
    public ArmGenerator c = new ArmGenerator();
    private Dictionary<string, int> variables = new ();
    //usamo esto par la posicion de las variables
    private int currentPosition = 0;
    
    public CompilerVisitor()
    {
        
    }

    // VisitProgram
    public override Object? VisitProgram(LanguageParser.ProgramContext context)
    {
         // Setup del frame pointer
    // c.Comment("Guardar FP previo y establecer FP = SP");
    // c.Push(Register.FP); // Guardamos el valor anterior de x29
    // c.Mov(Register.FP, Register.SP); // x29 = sp
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
    //     c.Comment("Restaurar FP antes de finalizar");
    // c.Pop(Register.FP); // Restauramos x29
    //     File.WriteAllText("output.s", c.ToString());

       
      // Si existe una función main, la invoca con una lista vacia de argumentos
    // if (currentEnvironment.ExistsVariable("main"))
    // {
    //     Object? mainFunc = currentEnvironment.GetVariable("main", null);
    //     if (mainFunc is FuncionValue funcValue)
    //     {
    //         return funcValue.invocable.Invoke(new List<Object?>(), this);
    //     }
    //     else
    //     {
    //         throw new SemnticErrorListener("La variable 'main' no es una función", null);
    //     }
    // }  
        
    // return defaultVoid;
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

    //var = varName = context.ID().GetText();
    //C.Comment("Declaración de variable: " + varName);
    // Visit la expresión de inicialización:
    // Visit(context.expr());
    //c.TagObjet(varName);

    
    
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
        // Obtenemos el identificador y el tipo declarado.
    string varName = context.ID().GetText();
    string typeDeclared = context.typeSpecifier().GetText();
    
    c.Comment($"Declaración explícita sin inicialización: {varName}, tipo: {typeDeclared}");
    
    // Creamos un objeto por defecto dependiendo del tipo declarado.
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
    
    // Se empuja el objeto por defecto al stack.
    c.PushObjet(defaultObj);
    // Se etiqueta con el identificador de la variable.
    c.TagObjet(varName);
        return null;
    }

    // Declaración implícita (inferencia de tipo):
    public override Object? VisitImplicitVarDecl(LanguageParser.ImplicitVarDeclContext context)
    {
        // Obtenemos el nombre de la variable, por ejemplo, "a" en "a := 5;"
    string varName = context.ID().GetText();
    
    // Evaluamos la expresión de inicialización. Se espera que el método Visit
    // empuje un objeto al stack de ArmGenerator (por ejemplo, mediante PushConstant)
    Visit(context.expr());
    
    // Con la nueva lógica, ya no manejamos un offset con currentPosition,
    // sino que confiamos en el stack interno.
    // Se etiqueta el último objeto del stack con el ID de la variable.
    c.TagObjet(varName);
    
    // Emitimos un comentario para la generación de código ARM.
    c.Comment($"Declaración variable implícita '{varName}' almacenada en el stack.");
    
    // Opcionalmente, si antes usabas un diccionario para registrar variables,
    // ya no es necesario, pues ArmGenerator mantiene internamente los objetos.
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
        Visit(context.expr());
        var value= c.PopObjet(Register.X0); // Pop the value to print
        if(value.Type == StackObjet.StackObjetType.Int){
            c.PrintInterger(Register.X0); // Call the print function
        }
        else if(value.Type == StackObjet.StackObjetType.String){
            c.PrintString(Register.X0); // Call the print function
        }
        
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
        c.Ldr(Register.X0, Register.X0); // Cargamos el valor de la variable en x0
        c.Push(Register.X0); // Hacemos push del valor de la variable en el stack
        var newObjet= c.CloneObjet(obj);
        newObjet.ID= null;
        c.PushObjet(newObjet); // Hacemos push del objeto de la variable en el stack
        

        return null;
    }

    // VisitParens
    public override Object? VisitParens(LanguageParser.ParensContext context)
    {
        //return Visit(context.expr());
        return null;
    }

    // VisitNegate
    public override Object? VisitNegate(LanguageParser.NegateContext context)
    {
        return null;
    }

    //VisitNot
    public override Object? VisitNot(LanguageParser.NotContext context)
    {
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

        if (opetarion == "+")
        {
            c.Add(Register.X0, Register.X0, Register.X1); //x0= x0 + x1
        }
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
        return null;
    }

    // VisitRelational
    public override Object? VisitRelationalS(LanguageParser.RelationalSContext context)
    {
        return null;
    }
    //VisitLogical
    public override Object? VisitLogical(LanguageParser.LogicalContext context)
    {
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
        return null;
    }


    // VisitBoolean
    public override Object? VisitBoolean(LanguageParser.BooleanContext context)
    {
       return null; 
    }


    // VisitString
    public override Object? VisitString(LanguageParser.StringContext context)
{
    var value = context.STRING().GetText().Trim('"'); // Eliminar las comillas
    c.Comment("String: " + value);
    var stringObject = c.StringObject();
    c.PushConstant(stringObject, value); // Convertir a bytes y hacer push
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
        

        return null;
    }

    // VisitSwitS
    public override Object? VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
{
    
    
    return null;
}



    // VisitWhileStmt
    public override Object? VisitWhileStmt(LanguageParser.WhileStmtContext context)
    {
        return null;
    }

    // VisitForStmt
    public override Object? VisitForStmt(LanguageParser.ForStmtContext context)
    {
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
        return null;
    }
    //VisitContinueStmt
    public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
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
        return null;
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
    // Por ejemplo, se retorna VoidValue o se podría definir NilValue.
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