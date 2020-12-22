using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace OperadorPrueba1._3
{
    public class ConexionUsuarios
    {
        MySqlConnection cn;
        MySqlCommand cmd;
        MySqlDataReader dr;
        DataTable dt;
        MySqlDataAdapter da;

        public static MySqlConnection getConexxion()
        {
            string Server = "198.71.227.83";
            string port = "3306";
            string username = "AdministradorBD";
            string pwd = "hewh700307";
            string Database = "Wario_01";

            string cadenaConexion = "server=" + Server + "; port=" + port + "; username=" + username + "; pwd=" + pwd + "; Database=" + Database;
            MySqlConnection conexion = new MySqlConnection(cadenaConexion);

            return conexion;

        }

        public ConexionUsuarios()
        {
            try
            {
                cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
                cn.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show("No se conecto a la base de datos:" + ex.ToString());
            }
        }
    }
    public abstract class conectionLogin
    {
        private readonly string ConexionUsuarios;
        public conectionLogin()
        {
            ConexionUsuarios = "Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;";
        }
        protected MySqlConnection GetConnection()
        {
            return new MySqlConnection(ConexionUsuarios);

        }
    }
}