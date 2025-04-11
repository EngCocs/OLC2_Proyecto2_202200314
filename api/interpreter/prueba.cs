using System;

public class ErrorCollectorTest
{
    public static void Main(string[] args)
    {
        // Limpia cualquier error previo.
        ErrorCollector.Clear();

        // Agrega errores de prueba.
        ErrorCollector.AddError("El struct 'Persona' no fue definido.", 1, 5, "semántico");
        ErrorCollector.AddError("No se puede dividir entre cero.", 6, 19, "semántico");
        ErrorCollector.AddError("El símbolo '¬' no es aceptado en el lenguaje.", 55, 2, "léxico");

        // Obtén el reporte.
        string report = ErrorCollector.GetReport();

        // Imprime el reporte en consola.
        Console.WriteLine(report);
    }
}
