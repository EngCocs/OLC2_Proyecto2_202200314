//BreakExepction

public class BreakExepction: Exception
{
    public BreakExepction(): base("Break")
    {
        
    }
}

//ContinueExepction
public class ContinueExepction: Exception
{
    public ContinueExepction(): base("Continue")
    {
        
    }
}

//ReturnExepction
public class ReturnExepction: Exception
{
    public ValueWrapper Value { get; }
    public ReturnExepction(ValueWrapper value): base("Return")
    {
        Value = value;
    }
    
}