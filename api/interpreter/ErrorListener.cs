using Antlr4.Runtime;
using Antlr4.Runtime.Misc;
using System.IO;

// arreglo 
public class SemnticErrorListener : Exception
{
    private readonly string mensaje;
    private readonly IToken token;

    public SemnticErrorListener(string mensaje, IToken token)
    {
        this.mensaje = mensaje;
        this.token = token;
        // Registrar el error semántico
        ErrorCollector.AddError(mensaje, token.Line, token.Column, "semántico");
    }
    public string GetMessage() => $"{mensaje} en la línea {token.Line}, columna {token.Column}";
    
    public override string Message
    {
        get
        {
            return $"{mensaje} en la línea {token.Line}, columna {token.Column}";
        }
    }
}

public class LexicoErrorListener : BaseErrorListener, IAntlrErrorListener<int>
{
    public void SyntaxError(TextWriter output, IRecognizer recognizer, int offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        // Registrar error léxico
        ErrorCollector.AddError(msg, line, charPositionInLine, "léxico");
        // Puedes optar por lanzar o no una excepción (o solo registrar)
        throw new ParseCanceledException($"Error en la línea {line}, columna {charPositionInLine}: {msg}");
    }
}


public class SyntaxErrorListener : BaseErrorListener, IAntlrErrorListener<IToken>
{
    public override void SyntaxError(TextWriter output, IRecognizer recognizer, IToken offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        // Registrar error sintáctico
        ErrorCollector.AddError(msg, line, charPositionInLine, "sintáctico");
        throw new ParseCanceledException($"Error en la línea {line}, columna {charPositionInLine}: {msg}");
    }
}
