

using System.Text;

public abstract record ValueWrapper;


public record IntValue(int Value) : ValueWrapper;
public record FloatValue(float Value) : ValueWrapper;
public record StringValue(string Value) : ValueWrapper;
public record BoolValue(bool Value) : ValueWrapper;

public record RuneValue(char Value) : ValueWrapper;

public record FuncionValue(Invocable invocable , string name) : ValueWrapper;

public record InstanceValue(Instance Instance) : ValueWrapper;

public record ClassValue(LenguageClass LenguageClass) : ValueWrapper;

public record StructValue(LenguageStruct LenguageStruct) : ValueWrapper;

public record SliceValue(List<ValueWrapper> Values) : ValueWrapper;
public record VoidValue : ValueWrapper;

public record NilValue : ValueWrapper
{
    public static readonly NilValue Instance = new NilValue();
}

// public class ValueWp
// {

//     public enum ValueType
//     {
//         Int,
//         Float,
//         String,
//         Bool,
//         Void
//     }

//     public ValueType Type { get; }
//     public object Value { get; }
// }