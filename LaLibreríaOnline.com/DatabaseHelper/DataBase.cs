using LaLibreríaOnline.com.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using m = LaLibreríaOnline.com.Models;

namespace LaLibreríaOnline.com.DatabaseHelper
{
    public class DataBase
    {
        string cnn = "Data Source=localhost;Initial Catalog=Libreria;Integrated Security=True";
        public DataTable Obtener_Todos_Libros()
        {
            return Ejecutar_Querry("[dbo].[ObtenerLibros]", null, true);
        }
        public DataTable Obtener_Resultados_Busqueda(string busqueda)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@busqueda", busqueda ),
            };
            return Ejecutar_Querry("[dbo].[ObtenerResultadosBusqueda]", param, true);
        }
        public DataTable Obtener_Datos_Usuario(string email)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@email", email ),
            };
            return Ejecutar_Querry("[dbo].[ObtenerDatosUsuario]", param, true);
        }
        public DataTable Obtener_Favoritos_Usuario(int idUsuario)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@idUsuario", idUsuario ),
            };
            return Ejecutar_Querry("[dbo].[ObtenerFavoritosUsuario]", param, true);
        }
        public DataTable Obtener_Carrito_Usuario(int idUsuario)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@idUsuario", idUsuario ),
            };
            return Ejecutar_Querry("[dbo].[ObtenerCarritoUsuario]", param, true);
        }
        public void Agregar_Favorito_BD(string isbn, int idUsuario)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", idUsuario ),
            };
            Ejecutar_Querry("[dbo].[AgregarFavorito]", param, false);
        }
        public void Agregar_Carrito_BD(string isbn, int idUsuario)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", idUsuario ),
                new SqlParameter("@cantidad", 1 ),
            };
            Ejecutar_Querry("[dbo].[AgregarCarrito]", param, false);
        }
        public DataTable Ejecutar_Querry(string storedProcedure, List<SqlParameter> param, bool usar_adapter)
        {
            try
            {
                DataTable ds = new DataTable();
                using (SqlConnection connection = new SqlConnection(cnn))
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storedProcedure;
                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }
                    cmd.ExecuteNonQuery();
                    if (usar_adapter)
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        adapter.Fill(ds);
                    }
                }
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}