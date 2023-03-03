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
            DatabaseHelper.DataBase db = new DatabaseHelper.DataBase();

            DataTable ds = db.Obtener_Libros();

            return convertDsToList(ds);
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
                    //fecha_De_Publicacion = row["fechaPublicacion"].ToString(),
                    fecha_De_Publicacion = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    precio = Convert.ToDecimal(row["precio"]),
                    foto = row["foto"].ToString()
                });
            }

            return resortsList;
        }

    }
}