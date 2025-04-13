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
}