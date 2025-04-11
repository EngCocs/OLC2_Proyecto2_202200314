'use client';

export const dynamic = 'force-dynamic';
// o export const revalidate = 0;

import { useState, useEffect } from 'react';

interface ErrorInfo {
  Description: string;
  Line: number;
  Column: number;
  Type: string;
}

export default function ReporteErrores() {
  const [errors, setErrors] = useState<ErrorInfo[]>([]);

  useEffect(() => {
    fetch('http://localhost:5209/reportes')
      .then(async (response) => {
        const text = await response.text();
        return text ? JSON.parse(text) : [];
      })
      .then((data) => setErrors(data))
      .catch((error) => console.error("Error al obtener reporte de errores:", error));
  }, []);

  return (
    <div className="container mt-5">
      <h1 className="text-center" style={{ color: 'black' }}>Reporte de Errores</h1>
      <table className="table table-dark table-striped mt-3">
        <thead>
          <tr>
            <th>#</th>
            <th>Tipo</th>
            <th>Descripción</th>
            <th>Fila</th>
            <th>Columna</th>
          </tr>
        </thead>
        <tbody>
  {errors.length === 0 ? (
    <tr>
      <td colSpan={5} className="text-center">No se encontraron errores.</td>
    </tr>
  ) : (
    errors.map((err, index) => (
      <tr key={index}>
        <td>{index + 1}</td>
        <td>{err.Type?.toUpperCase() || ""}</td>
        <td>{err.Description}</td>
        <td>{err.Line}</td>
        <td>{err.Column}</td>
      </tr>
    ))
  )}
</tbody>
      </table>
    </div>
  );
}
