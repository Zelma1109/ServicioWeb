using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OperadorPrueba1._3
{
    public class Modelo
    {
        //Metodo para saber si existe o no el usuario
        public bool ExisteUsuario(string usuario)
        {
            MySqlDataReader reader;
            MySqlConnection conexion = ConexionUsuarios.getConexxion();
            conexion.Open();

            string sql = "Select idUsuario from Usuarios where usuario LIKE @usuario";

            MySqlCommand comando = new MySqlCommand(sql, conexion);
            comando.Parameters.AddWithValue("@usuario", usuario);

            reader = comando.ExecuteReader();

            if (reader.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //Metodo para ingresar al sistema de acuerdo al usuario 
        public Users porUsuario(string usuario)
        {
            MySqlDataReader reader;
            MySqlConnection conexion = ConexionUsuarios.getConexxion();
            conexion.Open();

            string sql = "Select idUsuario, usuario, contraseña, fk_idroll from Usuarios where usuario LIKE @usuario";

            MySqlCommand comando = new MySqlCommand(sql, conexion);
            comando.Parameters.AddWithValue("@usuario", usuario);

            reader = comando.ExecuteReader();

            Users usr = null;

            while (reader.Read())
            {
                usr = new Users();
                usr.IdUsuario = int.Parse(reader["idUsuario"].ToString());
                usr.Usuario = reader["usuario"].ToString();
                usr.Contraseña = reader["contraseña"].ToString();
                usr.Idroll = int.Parse(reader["fk_idroll"].ToString());
            }
            return usr;
        }
    }
}