namespace TaroAppLibrary;

public static class Helpers
{
    public static byte[] ConvertFilePathToVarbinary(string filePath)
    {
        return System.IO.File.ReadAllBytes(filePath);
    }
        
}