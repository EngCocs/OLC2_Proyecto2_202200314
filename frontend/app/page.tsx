'use client';

import { Editor } from "@monaco-editor/react";
import { useState, useRef } from "react";
import { useRouter } from 'next/navigation';

const API_URL = 'http://localhost:5209';

export default function Home() {
  const [code, setCode] = useState<string>('');
  const [output, setOutput] = useState<string>('');
  const [error, setError] = useState<string>('');
  const [ast, setAst] = useState<string>('');  // Estado para el AST
  const [showHerramientas, setShowHerramientas] = useState(false);
  const [showReportes, setShowReportes] = useState(false);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const router = useRouter();

  const handleExecute = async () => {
    try {
      const response = await fetch(`${API_URL}/compile`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code }),
      });
      const data = await response.json();
      if (!response.ok) {
        throw new Error(data.error || 'Error desconocido');
      }
      setOutput(data.result);
      setError('');
    } catch (err) {
      setOutput('');
      setError(err instanceof Error ? err.message : 'Error desconocido');
    }
  };

  // Funciones para Herramientas
  const handleNewFile = () => setCode('');
  const handleOpenFile = () => fileInputRef.current?.click();
  const onFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (event) => setCode(event.target?.result as string);
      reader.readAsText(file);
    }
  };
  const handleSaveFile = () => {
    const blob = new Blob([code], { type: "text/plain;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = "archivo.glt";
    a.click();
    URL.revokeObjectURL(url);
  };

  // Funciones para Reportes
  const handleReporteErrores = async () => {
    try {
      const response = await fetch(`${API_URL}/compile/reporte-errores`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code }), // Envia el código para que se realice el análisis
      });
      if (!response.ok) {
        throw new Error("Error al obtener el reporte de errores");
      }
      const html = await response.text();
      window.open("", "_blank")?.document.write(html);
    } catch (err) {
      console.error(err);
    }
  };
  

  //const handleReporteTablaSimbolos = () => alert("Mostrar reporte de tabla de símbolos");
  const handleReporteTablaSimbolos = async () => {
    try {
      const response = await fetch(`${API_URL}/compile/tabla-simbolos`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code }), // o enviar código si es necesario
      });
      if (!response.ok) {
        throw new Error("Error al obtener el reporte de tabla de símbolos");
      }
      const html = await response.text();
      const newWindow = window.open("", "_blank");
      newWindow?.document.write(html);
    } catch (err) {
      console.error(err);
    }
  };
  
  

  const handleReporteAST = async () => {
    try {
      // Envia el código actual al endpoint para obtener el AST
      const response = await fetch(`${API_URL}/compile/ast`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code }),
      });
      if (!response.ok) {
        throw new Error("Error al obtener el AST");
      }
      // El endpoint devuelve el SVG como texto
      const svg = await response.text();
      setAst(svg);
    } catch (err) {
      console.error(err);
    }
  };

  return (
    <div className="relative min-h-screen py-2">
      {/* Header en la esquina superior izquierda con botones en línea */}
      <div className="absolute top-2 left-2 flex space-x-4 z-10">
        <div className="relative">
          <button 
            className="rounded font-medium py-2 px-4 bg-blue-500 hover:bg-blue-400 text-black focus:outline-none"
            onClick={() => {
              setShowHerramientas(!showHerramientas);
              setShowReportes(false);
            }}
          >
            Herramientas
          </button>
          {showHerramientas && (
            <div className="absolute left-0 mt-1 bg-gray-400 shadow-md rounded border w-60">
              <button 
                onClick={() => { handleNewFile(); setShowHerramientas(false); }}
                className="block px-4 py-2 text-sm text-black w-full text-left hover:bg-black hover:text-white"
              >
                Crear archivos
              </button>
              <button 
                onClick={() => { handleOpenFile(); setShowHerramientas(false); }}
                className="block px-4 py-2 text-sm text-black w-full text-left hover:bg-black hover:text-white"
              >
                Abrir archivos
              </button>
              <button 
                onClick={() => { handleSaveFile(); setShowHerramientas(false); }}
                className="block px-4 py-2 text-sm text-black w-full text-left hover:bg-black hover:text-white"
              >
                Guardar archivo
              </button>
            </div>
          )}
        </div>
        <div className="relative">
          <button 
            className="rounded font-medium py-2 px-4 bg-red-500 hover:bg-red-400 text-black focus:outline-none"
            onClick={() => {
              setShowReportes(!showReportes);
              setShowHerramientas(false);
            }}
          >
            Reportes
          </button>
          {showReportes && (
            <div className="absolute left-0 mt-1 bg-gray-400 shadow-md rounded border w-60">
              <button 
                onClick={() => { handleReporteErrores(); setShowReportes(false); }}
                className="block px-4 py-2 text-sm text-black w-full text-left hover:bg-black hover:text-white"
              >
                Reporte de Errores
              </button>
              <button 
                onClick={() => { handleReporteTablaSimbolos(); setShowReportes(false); }}
                className="block px-4 py-2 text-sm text-black w-full text-left hover:bg-black hover:text-white"
              >
                Reporte de Tabla de Símbolos
              </button>
              <button 
                onClick={() => { handleReporteAST(); setShowReportes(false); }}
                className="block px-4 py-2 text-sm text-black w-full text-left hover:bg-black hover:text-white"
              >
                Reporte de AST
              </button>
            </div>
          )}
        </div>
      </div>

      {/* Input oculto para abrir archivos */}
      <input 
        type="file" 
        accept=".glt" 
        ref={fileInputRef} 
        onChange={onFileChange} 
        style={{ display: 'none' }} 
      />

      {/* Contenido principal */}
      <div className="flex flex-col items-center justify-center min-h-screen pt-12">
        <Editor
          height="70vh"
          defaultLanguage="go"
          theme="vs-dark"
          value={code}
          onChange={(value) => setCode(value || '')}
        />
        <button
          className="mt-4 bg-green-700 hover:bg-green-500 text-white font-bold py-2 px-4 rounded"
          onClick={handleExecute}
        >
          Ejecutar
        </button>
        {error && (
          <div className="mt-4 text-red-500">
            <h2>Error:</h2>
            <pre>{error}</pre>
          </div>
        )}
        {output && (
          <div className="mt-4 flex flex-col items-center">
            <h2 className="text-xl font-semibold">Output:</h2>
            <pre className="bg-gray-800 text-white p-4 rounded">{output}</pre>
          </div>
        )}
        {/* Si se obtuvo AST, se muestra debajo */}
        {ast && (
          <div className="mt-4 w-full flex justify-center ">
            <div className="border p-4 bg-gray-500 overflow-auto" style={{ maxWidth: "90vw", maxHeight: "80vh" }} dangerouslySetInnerHTML={{ __html: ast }} />
          </div>
        )}
      </div>
    </div>
  );
}




