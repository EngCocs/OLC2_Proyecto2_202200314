using System.Text;

public static class Utils
{
    //convierte un string a un array de bytes
    public static List<byte> StringToBytesArrays(string str)
    {
       var result = new List<byte>();
       int elementIndex = 0;
       while(elementIndex < str.Length){
        result.Add((byte)str[elementIndex]);
        elementIndex++;
       }
       result.Add(0);
       return result;
    }
    public static int FloatLabelCounter = 0;

    public static List<byte> ConvertStringToBytes(string input)
    {
        return Encoding.ASCII.GetBytes(input).ToList(); // renamed method
    }
}