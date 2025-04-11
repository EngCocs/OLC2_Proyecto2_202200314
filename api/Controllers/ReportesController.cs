using Microsoft.AspNetCore.Mvc;

namespace api.Controllers
{
    [Route("[controller]")]// aqui se define la ruta de acceso en mi caso es /reportes
    public class Reportes : Controller
    {
        [HttpGet]
        public IActionResult GetReportes()
        {
            // Para pruebas, agrega errores ficticios:
            // Para pruebas, limpiamos y agregamos errores de ejemplo:
    ErrorCollector.Clear();
    ErrorCollector.AddError("El struct 'Persona' no fue definido.", 1, 5, "semántico");
    ErrorCollector.AddError("No se puede dividir entre cero.", 6, 19, "semántico");
    ErrorCollector.AddError("El símbolo '¬' no es aceptado en el lenguaje.", 55, 2, "léxico");
    ErrorCollector.AddError("El símbolo '¬' no es aceptado en el lenguaje.", 55, 2, "léxico");
    // Obtenemos el reporte de errores

    // Retornamos directamente el arreglo de errores
    return Ok(ErrorCollector.Errors);
        }
    }
}
