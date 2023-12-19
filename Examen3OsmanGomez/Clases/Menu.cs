using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;

namespace Examen3OsmanGomez.Clases
{
    public class Menu
    {
        private int id { get; set; }
        public string Numen { get; set; }
        public String Correo { get; set; }

        public int Edad { get; set; }
        public static object DBConn { get; private set; }
        public static string Nombre { get; internal set; }

        public Menu(int Id, String tipo, int Telefono, String Correoele)

        {
            id = Id;
            Numen = Numen;
            Correo = Correo;
            Edad = Edad;
            Nombre = Nombre;

        }

        public Menu(int v1, string v2)
        {
        }

        public static int Agregar(string Numen, String Correo , string Nombre, int Edad)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerconexion())
                {
                    SqlCommand cmd = new SqlCommand("INGRESAR", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Numen", Numen));
                    cmd.Parameters.Add(new SqlParameter("@Correo", Correo));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Edad", Edad));


                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;

        }
    }
}