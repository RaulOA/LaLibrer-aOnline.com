using LaLibreríaOnline.com.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace LaLibreríaOnline.com.DatabaseHelper
{
    public class DataBase
    {
        string connectionString = "Data Source=DESKTOP-5DRNVDJ\\MSSQLSERVER01;Initial Catalog=Libreria;Integrated Security=True";



        public DataTable GetAllBooks()
        {
            return ExecuteQuery("[dbo].[ObtenerLibros]", null, true);
        }
        public DataTable GetSearchResults(string keyword)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@busqueda", keyword ),
            };
            return ExecuteQuery("[dbo].[ObtenerResultadosBusqueda]", parameters, true);
        }
        public DataTable GetUserData(string email)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@email", email ),
            };
            return ExecuteQuery("[dbo].[ObtenerDatosUsuario]", parameters, true);
        }
        public DataTable GetFavorites(int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@idUsuario", userId ),
            };
            return ExecuteQuery("[dbo].[ObtenerFavoritosUsuario]", parameters, true);
        }
        public DataTable GetCartItems(int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@idUsuario", userId ),
            };
            return ExecuteQuery("[dbo].[ObtenerCarritoUsuario]", parameters, true);
        }



        public void SaveUser(List<UserData> userData)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@idUsuario", userData[0].userId),
                new SqlParameter("@Email", userData[0].email),
                new SqlParameter("@Nombre", userData[0].name),
                new SqlParameter("@Pais", userData[0].country),
                new SqlParameter("@Provincia", userData[0].province),
                new SqlParameter("@Direccion", userData[0].address),
                new SqlParameter("@CodigoPostal", userData[0].postalCode),
                new SqlParameter("@NumeroTarjeta", userData[0].cardNumber),
                new SqlParameter("@Expiracion", userData[0].expirationDate),
                new SqlParameter("@CodigoSeguridad", userData[0].securityCode),
            };
            ExecuteQuery("[dbo].[GuardarDatosUsuario]", parameters, false);
        }
        public void AddFavorite(string isbn, int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", userId ),
            };
            ExecuteQuery("[dbo].[AgregarFavorito]", parameters, false);
        }
        public void AddToCart(string isbn, int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", userId ),
                new SqlParameter("@cantidad", 1 ),
            };
            ExecuteQuery("[dbo].[AgregarCarrito]", parameters, false);
        }
        public void DeleteFavorite(string isbn, int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", userId ),
            };
            ExecuteQuery("[dbo].[EliminarFavorito]", parameters, false);
        }
        public void RemoveCartItem(string isbn, int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", userId ),
            };
            ExecuteQuery("[dbo].[EliminarArticuloCarrito]", parameters, false);
        }
        public void DeductAmountToCartItem(string isbn, int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", userId ),
            };
            ExecuteQuery("[dbo].[RestarArticuloCarrito]", parameters, false);
        }
        public void AddAmountToCartItem(string isbn, int userId)
        {
            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@isbn", isbn ),
                new SqlParameter("@idUsuario", userId ),
            };
            ExecuteQuery("[dbo].[SumarArticuloCarrito]", parameters, false);
        }
        



        public DataTable ExecuteQuery(string storedProcedure, List<SqlParameter> parameters, bool useAdapter)
        {
            try
            {
                DataTable dataTable = new DataTable();
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = storedProcedure;
                    if (parameters != null)
                    {
                        foreach (SqlParameter parameter in parameters)
                        {
                            command.Parameters.Add(parameter);
                        }
                    }
                    command.ExecuteNonQuery();
                    if (useAdapter)
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        adapter.Fill(dataTable);
                    }
                }
                return dataTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}