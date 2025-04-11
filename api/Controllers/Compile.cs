using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using analyzer;
using Antlr4.Runtime;
using Antlr4.Runtime.Tree;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Antlr4.Runtime.Misc;
using System.Text.Json;
using System.Text;


namespace api.Controllers
{
    [Route("[controller]")]
    public class Compile : Controller
    {
        private readonly ILogger<Compile> _logger;

        public Compile(ILogger<Compile> logger)
        {
            _logger = logger;
        }

        public class CompileRequest
        {
            [Required]
            public required string code { get; set; }
        }

        // POST /compile
        [HttpPost]
        public IActionResult Post([FromBody] CompileRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(new { error = "Invalid request" });
            }

            var inputStream = new AntlrInputStream(request.code);
            var lexer = new LanguageLexer(inputStream);

            lexer.RemoveErrorListeners();
            lexer.AddErrorListener(new LexicoErrorListener());
            

            var tokens = new CommonTokenStream(lexer);
            var parser = new LanguageParser(tokens);

 try
            {
            var tree = parser.program();

            var interpreter = new InterpreterVisitor();
            interpreter.Visit(tree);

            var compiler = new CompilerVisitor();
            compiler.Visit(tree);

            return Ok(new { result = compiler.c.ToString() });

            }
            catch (ParseCanceledException e)
            {
                return BadRequest(new { error = e.Message });
            }
            catch (SemnticErrorListener e)
            {
                return BadRequest(new { error = e.Message });
            }
            catch (ContinueExepction)
            {
                return BadRequest(new { error = "Continue fuera de ciclo" });
            }
            catch (BreakExepction)
            {
                return BadRequest(new { error = "Break fuera de ciclo" });
            }
            catch (ReturnExepction e)
            {
                return Ok(new { result = e.Value });
            }
            

            
        }

        [HttpPost("ast")]
        public async Task<IActionResult> GetAst([FromBody] CompileRequest request)
        {
            if (!ModelState.IsValid)//Valida que el request tenga el campo code
            {
                return BadRequest(new { error = "Invalid request" });
            }

            string grammarPath= Path.Combine(Directory.GetCurrentDirectory(),  "grammars/Language.g4");
            var grammar = "";

            try
            {
                if(System.IO.File.Exists(grammarPath))
                {
                    grammar = await System.IO.File.ReadAllTextAsync(grammarPath);
                }
                else
                {
                    return BadRequest(new { error = "No se encontro la gramatica" });
                }
            }
            catch (System.Exception)
            {
                return BadRequest(new { error = "Error leyendo la gramatica" });
            }

            var payload = new
            {
                grammar,
                lexgrammar = "",
                input=request.code,
                start= "program"
            };

            var jsonPayload = JsonSerializer.Serialize(payload);
            var context = new StringContent(jsonPayload, Encoding.UTF8, "application/json");

            using (var client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = await client.PostAsync("http://lab.antlr.org/parse/", context);
                    response.EnsureSuccessStatusCode();

                    string result = await response.Content.ReadAsStringAsync();

                    using var doc = JsonDocument.Parse(result);
                    var root = doc.RootElement;

                    if(root.TryGetProperty("result", out JsonElement resultElement)&& resultElement.TryGetProperty("svgtree", out JsonElement svgtreeElement))
                    {
                        string svgtree= svgtreeElement.GetString() ?? string.Empty;
                        return Content(svgtree, "image/svg+xml");
                    }
                    

                    return BadRequest(new { error = "Error al obtener el arbol" });

                }
                catch(System.Exception ex)
                {
                    _logger.LogError(ex,"Error al conectar con el servidor");
                    return BadRequest(new { error = "Error al conectar con el servidor" });
                }
            }
        }

        [HttpPost("tabla-simbolos")]
public IActionResult GetTablaSimbolos([FromBody] CompileRequest request)
{
    if (!ModelState.IsValid)
    {
        return BadRequest(new { error = "Invalid request" });
    }

    
    

    string html = GenerateSymbolTableHtml(SymbolTableCollector.Symbols);
    return Content(html, "text/html");
}

private string GenerateSymbolTableHtml(List<SymbolInfo> symbols)
{
    var sb = new StringBuilder();
    sb.AppendLine("<!DOCTYPE html>");
    sb.AppendLine("<html lang=\"es\">");
    sb.AppendLine("<head>");
    sb.AppendLine("<meta charset=\"UTF-8\">");
    sb.AppendLine("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
    sb.AppendLine("<title>Tabla de Símbolos</title>");
    sb.AppendLine("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\">");
    sb.AppendLine("<style>");
    sb.AppendLine("body { background-color: rgb(63, 87, 110); color: white; }");
    sb.AppendLine("h1 { text-align: center; color: white; }");
    sb.AppendLine("table { background-color: #343a40; }");
    sb.AppendLine("th, td { border: 1px solid #dee2e6; padding: 8px; }");
    sb.AppendLine("th { background-color: #6c757d; }");
    sb.AppendLine("tr:nth-child(even) { background-color: #495057; }");
    sb.AppendLine("</style>");
    sb.AppendLine("</head>");
    sb.AppendLine("<body>");
    sb.AppendLine("<div class=\"container mt-5\">");
    sb.AppendLine("<h1>Reporte de Tabla de Símbolos</h1>");
    sb.AppendLine("<table class=\"table table-dark table-striped mt-3\">");
    sb.AppendLine("<thead>");
    sb.AppendLine("<tr>");
    sb.AppendLine("<th>#</th>");
    sb.AppendLine("<th>ID</th>");
    sb.AppendLine("<th>Tipo símbolo</th>");
    sb.AppendLine("<th>Tipo dato</th>");
    sb.AppendLine("<th>Ámbito</th>");
    sb.AppendLine("<th>Línea</th>");
    sb.AppendLine("<th>Columna</th>");
    sb.AppendLine("</tr>");
    sb.AppendLine("</thead>");
    sb.AppendLine("<tbody>");

    for (int i = 0; i < symbols.Count; i++)
    {
        var s = symbols[i];
        sb.AppendLine("<tr>");
        sb.AppendLine($"<td>{i + 1}</td>");
        sb.AppendLine($"<td>{s.ID}</td>");
        sb.AppendLine($"<td>{s.SymbolType}</td>");
        sb.AppendLine($"<td>{s.DataType}</td>");
        sb.AppendLine($"<td>{s.Scope}</td>");
        sb.AppendLine($"<td>{s.Line}</td>");
        sb.AppendLine($"<td>{s.Column}</td>");
        sb.AppendLine("</tr>");
    }

    sb.AppendLine("</tbody>");
    sb.AppendLine("</table>");
    sb.AppendLine("</div>");
    sb.AppendLine("</body>");
    sb.AppendLine("</html>");

    return sb.ToString();
    }

    [HttpPost("reporte-errores")]
public IActionResult GetReporteErrores([FromBody] CompileRequest request)
{
    if (!ModelState.IsValid)
    {
        return BadRequest(new { error = "Invalid request" });
    }
    
    // Ejecuta el análisis para que se registren los errores (si hay)
    var inputStream = new AntlrInputStream(request.code);
    var lexer = new LanguageLexer(inputStream);
    lexer.RemoveErrorListeners();
    lexer.AddErrorListener(new LexicoErrorListener());
    var tokens = new CommonTokenStream(lexer);
    var parser = new LanguageParser(tokens);
    
    try
    {
        var tree = parser.program();
        var visitor = new InterpreterVisitor();
        visitor.Visit(tree);
    }
    catch (Exception ex)
    {
        // Ignora la excepción, ya que solo se necesita el reporte de errores
    }
    
    // Genera el reporte de errores con la información acumulada
    string html = GenerateErrorReportHtml(ErrorCollector.Errors);
    return Content(html, "text/html");
}

private string GenerateErrorReportHtml(List<ErrorInfo> errors)
{
    var sb = new StringBuilder();
    sb.AppendLine("<!DOCTYPE html>");
    sb.AppendLine("<html lang=\"es\">");
    sb.AppendLine("<head>");
    sb.AppendLine("<meta charset=\"UTF-8\">");
    sb.AppendLine("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
    sb.AppendLine("<title>Reporte de Errores</title>");
    sb.AppendLine("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\">");
    sb.AppendLine("<style>");
    sb.AppendLine("body { background-color: rgb(63, 87, 110); color: white; }");
    sb.AppendLine("h1 { text-align: center; color: white; }");
    sb.AppendLine("table { background-color: #343a40; }");
    sb.AppendLine("th, td { border: 1px solid #dee2e6; padding: 8px; }");
    sb.AppendLine("th { background-color: #6c757d; }");
    sb.AppendLine("tr:nth-child(even) { background-color: #495057; }");
    sb.AppendLine("</style>");
    sb.AppendLine("</head>");
    sb.AppendLine("<body>");
    sb.AppendLine("<div class=\"container mt-5\">");
    sb.AppendLine("<h1>Reporte de Errores</h1>");
    sb.AppendLine("<table class=\"table table-dark table-striped mt-3\">");
    sb.AppendLine("<thead>");
    sb.AppendLine("<tr>");
    sb.AppendLine("<th>#</th>");
    sb.AppendLine("<th>Descripción</th>");
    sb.AppendLine("<th>Línea</th>");
    sb.AppendLine("<th>Columna</th>");
    sb.AppendLine("<th>Tipo</th>");
    sb.AppendLine("</tr>");
    sb.AppendLine("</thead>");
    sb.AppendLine("<tbody>");
    
    if (errors.Count == 0)
    {
        sb.AppendLine("<tr>");
        sb.AppendLine("<td colspan=\"5\" class=\"text-center\">No se encontraron errores.</td>");
        sb.AppendLine("</tr>");
    }
    else
    {
        for (int i = 0; i < errors.Count; i++)
        {
            var err = errors[i];
            sb.AppendLine("<tr>");
            sb.AppendLine($"<td>{i + 1}</td>");
            sb.AppendLine($"<td>{err.Description}</td>");
            sb.AppendLine($"<td>{err.Line}</td>");
            sb.AppendLine($"<td>{err.Column}</td>");
            sb.AppendLine($"<td>{err.Type}</td>");
            sb.AppendLine("</tr>");
        }
    }
    
    sb.AppendLine("</tbody>");
    sb.AppendLine("</table>");
    sb.AppendLine("</div>");
    sb.AppendLine("</body>");
    sb.AppendLine("</html>");
    return sb.ToString();
}





    }
}
