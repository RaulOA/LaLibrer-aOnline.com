using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using m = LaLibreríaOnline.com.Models;

namespace LaLibreríaOnline.com.Controllers
{
    public class DatosDeUsuario
    {
        // Traer datos del usuario

        public List<m.DatosUsuario> Traer_Datos_Usuario(String email)
        {
            return Convertir_Datos(new DatabaseHelper.DataBase().Obtener_Datos_Usuario(email));
        }
        public List<m.DatosUsuario> Convertir_Datos(DataTable ds)
        {
            List<m.DatosUsuario> datosUsuario = new List<m.DatosUsuario>();
            foreach (DataRow row in ds.Rows)
            {
                datosUsuario.Add(new m.DatosUsuario
                {
                    idUsuario = Convert.ToInt16(row["idUsuario"]),
                    nombre = row["nombre"].ToString(),
                    email = row["email"].ToString(),
                    pais = row["pais"].ToString(),
                    provincia = row["provincia"].ToString(),
                    direccion = row["direccion"].ToString(),
                    codigoPostal = row["codigoPostal"].ToString(),
                    numeroTarjeta = row["numeroTarjeta"].ToString(),
                    expiracion = row["expiracion"].ToString(),
                    codigoSeguridad = row["codigoSeguridad"].ToString(),
                });
            }
            return datosUsuario;
        }
        // Traer favoritos del usuario
        public List<m.Libro> Traer_Favoritos_Usuario(int idUsuario)
        {
            return Convertir_Favoritos(new DatabaseHelper.DataBase().Obtener_Favoritos_Usuario(idUsuario));
        }
        public List<m.Libro> Convertir_Favoritos(DataTable ds)
        {
            List<m.Libro> FavoritosUsuario = new List<m.Libro>();
            foreach (DataRow row in ds.Rows)
            {
                FavoritosUsuario.Add(new m.Libro
                {
                    isbn = row["isbn"].ToString(),
                    titulo = row["titulo"].ToString(),
                    autor = row["autor"].ToString(),
                    fechaPublicacion = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    precio = Convert.ToDecimal(row["precio"]),
                    foto = row["foto"].ToString(),
                });
            }
            return FavoritosUsuario;
        }
        // Traer carrito del usuario
        public List<m.Libro> Traer_Carrito_Usuario(int idUsuario)
        {
            return Convertir_Carrito(new DatabaseHelper.DataBase().Obtener_Carrito_Usuario(idUsuario));
        }
        public List<m.Libro> Convertir_Carrito(DataTable ds)
        {
            List<m.Libro> FavoritosUsuario = new List<m.Libro>();
            foreach (DataRow row in ds.Rows)
            {
                FavoritosUsuario.Add(new m.Libro
                {
                    isbn = row["isbn"].ToString(),
                    titulo = row["titulo"].ToString(),
                    autor = row["autor"].ToString(),
                    fechaPublicacion = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    precio = Convert.ToDecimal(row["precio"]),
                    foto = row["foto"].ToString(),
                    cantidad = Convert.ToInt16(row["total_comprado"]),
                });
            }
            return FavoritosUsuario;
        }

    }
}