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
        public List<m.Libro> Obtener_Libros()
        {
            return convertDsToList(new DatabaseHelper.DataBase().Obtener_Libros());
        }
        public List<m.Libro> convertDsToList(DataTable ds)
        {
            List<m.Libro> resortsList = new List<m.Libro>();
            foreach (DataRow row in ds.Rows)
            {
                resortsList.Add(new m.Libro
                {
                    isbn = row["isbn"].ToString(),
                    titulo = row["titulo"].ToString(),
                    autor = row["autor"].ToString(),
                    fechaPublicacion = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    precio = Convert.ToDecimal(row["precio"]),
                    foto = row["foto"].ToString()
                });
            }
            return resortsList;
        }

    }
}