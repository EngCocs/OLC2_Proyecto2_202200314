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
    c.Comment("Guardar FP previo y establecer FP = SP");
    c.Push(Register.FP); // Guardamos el valor anterior de x29
    c.Mov(Register.FP, Register.SP); // x29 = sp
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        c.Comment("Restaurar FP antes de finalizar");
    c.Pop(Register.FP); // Restauramos x29
        File.WriteAllText("output.s", c.ToString());

       
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
     // aqui delegamos a la funcion de declaracion de variables
    return VisitChildren(context);//hacemos visit a los hijos
}


    

    // Declaración explícita con tipo y valor inicial:
    public override Object? VisitExplicitVarDeclWithInit(LanguageParser.ExplicitVarDeclWithInitContext context)
    {
        return null;
    }

    // Declaración explícita con tipo sin valor inicial:
    public override Object? VisitExplicitVarDeclWithoutInit(LanguageParser.ExplicitVarDeclWithoutInitContext context)
    {
        return null;
    }

    // Declaración implícita (inferencia de tipo):
    public override Object? VisitImplicitVarDecl(LanguageParser.ImplicitVarDeclContext context)
    {
        string varName= context.ID().GetText();
        //VAMOS a dejar el valor en el staxk
        Visit(context.expr());
        //extraemos el valor a un registro temporal
        //c.Pop(Register.X0); // Pop the value to assign
        //reselvamos el espacio para la variable en el stack
        currentPosition -= 8;

        //c.Str(Register.X0, Register.FP, currentPosition); // esto es para guardar el valor en la variable
        //guardamos el nombre de la variable y su posicion en el stack
        variables.Add(varName, currentPosition);
        c.Comment("Variable " + varName + " assigned to stack position " + currentPosition);
        c.Comment($"Declaración variable implícita '{varName}' almacenada en [SP + {currentPosition}]");
        
        return null;
    }

    // VisitExprStmt
    public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        Visit(context.expr());
        c.Pop(Register.X0); // Descartamos el valor porque no lo necesitamos
        return null;
    }

    //VisitPrintStmt
    public override Object? VisitPrintStmt(LanguageParser.PrintStmtContext context)
    {
        c.Comment("Print statement");
        Visit(context.expr());
        c.Pop(Register.X0); // Pop the value to print
        c.PrintInterger(Register.X0); // Call the print function
        return null;
    }

    


    public override Object? VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        string varName = context.ID().GetText();
        
        if(!variables.ContainsKey(varName))
        {
            throw new Exception($"Variable '{varName}' no declarada");
        }
        int position = variables[varName];
        
        c.Ldr(Register.X0, Register.FP, position); // cargamos el valor de la variable en el registro X0
        c.Push(Register.X0); // hacemos push del valor de la variable en el stack
        c.Comment($"Acceso a variable '{varName}' en [SP + {position}]");

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
        c.Mov(Register.X0, int.Parse(value));
        c.Push(Register.X0);
        //c.Pop(Register.X0); 
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

        c.Pop(Register.X1); //pop 2 : top --> [1]
        c.Pop(Register.X0); //pop 1 : top --> []

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
    var leftExpr = context.expr(0);

    // Verificamos si es un identificador simple
    if (leftExpr is LanguageParser.IdentifierContext identifier)
    {
        string varName = identifier.ID().GetText();

        if (!variables.ContainsKey(varName))
            throw new Exception($"Variable '{varName}' no declarada.");

        // Evaluamos la expresión del lado derecho
        Visit(context.expr(1));
        c.Pop(Register.X0);

        int position = variables[varName];
        c.Str(Register.X0, Register.FP, position);
        c.Comment($"Asignación: variable '{varName}' actualizada en [FP + {position}]");

        return null;
    }

    throw new Exception("Lado izquierdo de la asignación no es un identificador simple.");
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