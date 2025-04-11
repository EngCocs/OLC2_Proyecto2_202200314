'use client';

import { useState, useEffect } from 'react';

export const dynamic = 'force-dynamic';

export default function AstPage() {
  const [ast, setAst] = useState<string>('');

  useEffect(() => {
    // Puedes usar el mismo código que en el handleReporteAST de tu página principal
    const fetchAst = async () => {
      try {
        const response = await fetch('http://localhost:5209/Compile/ast', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ code: "" }), // Si necesitas enviar código, ajústalo
        });
        if (!response.ok) {
          throw new Error("Error al obtener el AST");
        }
        const svg = await response.text();
        setAst(svg);
      } catch (error) {
        console.error(error);
      }
    };

    fetchAst();
  }, []);

  return (
    <div className="container mt-5">
      <h1 className="text-center" style={{ color: 'black' }}>Árbol de Sintaxis Abstracta (AST)</h1>
      {ast ? (
        <div className="mt-4" style={{ backgroundColor: "#f0f0f0", padding: "1rem" }} dangerouslySetInnerHTML={{ __html: ast }} />
      ) : (
        <p className="text-center">Cargando AST...</p>
      )}
    </div>
  );
}
