using analyzer;
using Antlr4.Runtime.Misc;



public class FrameElement{
    public string Name { get; set; }
    public int Offset { get; set; }
    public FrameElement(string name, int offset)
    {
        Name = name;
        Offset = offset;
    }
}

public class FrameVisitor : LanguageBaseVisitor<Object?>
{
    public List<FrameElement> Frame;
    public int LocalOffser;
    public int BaseOffset;

    public FrameVisitor(int baseOffset)
    {
        Frame = new List<FrameElement>();
        LocalOffser = 0;
        BaseOffset = baseOffset;
    }
    public override Object? VisitVarDcl( LanguageParser.VarDclContext context)
    {
        String name = context.GetChild(0).GetText(); // Adjust based on your grammar
        Frame.Add(new FrameElement(name,BaseOffset + LocalOffser) );
        LocalOffser += 1; // Assuming each variable takes 4 bytes
        return null;
    }
    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        foreach (var dlc in context.dcl())
        {
            Visit(dlc);
        }
        return null;
    }
    public override Object? VisitIfStmt([NotNull] LanguageParser.IfStmtContext context)
    {
        Visit(context.stmt(0));
        if (context.stmt().Length > 1) Visit(context.stmt(1));
        return null;

    }

    public override Object? VisitWhileStmt([NotNull] LanguageParser.WhileStmtContext context)
    {
        Visit(context.stmt());
        return null;
    }
    public override Object? VisitForStmt([NotNull] LanguageParser.ForStmtContext context)
    {
        if (context.forInit().varDcl() != null)
        {
            Visit(context.forInit().varDcl());
        }
        Visit(context.stmt());
        return null;
    }
}