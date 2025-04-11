using System;
using System.Collections.Generic;
using Antlr4.Runtime;
using analyzer;

public static class SliceEvaluator
{
    public static ValueWrapper EvaluateSliceLiteral(LanguageParser.SliceLiteralContext context, InterpreterVisitor visitor)
    {
        List<ValueWrapper> elements = new List<ValueWrapper>();

        // Si existe una lista de expresiones, la evaluamos y la agregamos a la lista
        if (context.exprList() != null)
        {
            foreach (var exprCtx in context.exprList().expr())
            {
                ValueWrapper element = visitor.Visit(exprCtx);
                elements.Add(element);
            }
        }

        // Obtenemos el tipo base del slice, por ejemplo "int"
        // Asumimos que en la gramática se definió una regla 'baseType'
        string baseType = context.baseType().GetText();

        // Validamos que cada elemento sea del mismo tipo que el tipo base
        ValidateSliceElements(elements, baseType, context.Start);

        // Retornamos un SliceValue construido con los elementos evaluados
        return new SliceValue(elements);
    }

    public static void ValidateSliceElements(List<ValueWrapper> elements, string baseType, IToken token)
    {
        foreach (var element in elements)
        {
            switch (baseType)
            {
                case "int":
                    if (!(element is IntValue))
                        throw new SemnticErrorListener("Elemento no es de tipo int", token);
                    break;
                case "float64":
                    // Permitimos que un int se convierta a float64
                    if (!(element is FloatValue) && !(element is IntValue))
                        throw new SemnticErrorListener("Elemento no es de tipo float64", token);
                    break;
                case "string":
                    if (!(element is StringValue))
                        throw new SemnticErrorListener("Elemento no es de tipo string", token);
                    break;
                case "bool":
                    if (!(element is BoolValue))
                        throw new SemnticErrorListener("Elemento no es de tipo bool", token);
                    break;
                case "rune":
                    if (!(element is RuneValue))
                        throw new SemnticErrorListener("Elemento no es de tipo rune", token);
                    break;
                default:
                    throw new SemnticErrorListener($"Tipo base desconocido: {baseType}", token);
            }
        }
    }

}