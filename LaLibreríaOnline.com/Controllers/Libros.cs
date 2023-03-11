using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using m = LaLibreríaOnline.com.Models;

namespace LaLibreríaOnline.com.Controllers
{
    public class Libros
    {
        public List<m.Libro> Obtener_Todos_Libros()
        {
            return Convertir_DataTable_A_Lista(new DatabaseHelper.DataBase().Obtener_Todos_Libros());
        }
        public List<m.Libro> Obtener_Resultados_Busqueda(string busqueda)
        {
            return Convertir_DataTable_A_Lista(new DatabaseHelper.DataBase().Obtener_Resultados_Busqueda(busqueda));
        }
        public List<m.Libro> Convertir_DataTable_A_Lista(DataTable ds)
        {
            List<m.Libro> Lista_De_Libros = new List<m.Libro>();
            foreach (DataRow row in ds.Rows)
            {
                Lista_De_Libros.Add(new m.Libro
                {
                    isbn = row["isbn"].ToString(),
                    titulo = row["titulo"].ToString(),
                    autor = row["autor"].ToString(),
                    fechaPublicacion = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    precio = Convert.ToDecimal(row["precio"]),
                    foto = row["foto"].ToString()
                });
            }
            return Lista_De_Libros;
        }
    }
}