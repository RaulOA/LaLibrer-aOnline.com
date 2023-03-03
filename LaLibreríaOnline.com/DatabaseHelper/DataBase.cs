using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LaLibreríaOnline.com.DatabaseHelper
{
    public class DataBase
    {
        string cnn = "Data Source=localhost;Initial Catalog=Libreria;Integrated Security=True";

        public DataTable Obtener_Libros()
        {
            return Ejecutar_Querry("[dbo].[ObtenerLibros]", null);
        }

        public DataTable Ejecutar_Querry(string storedProcedure, List<SqlParameter> param)
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

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);

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