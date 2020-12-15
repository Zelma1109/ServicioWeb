using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace OperadorPrueba1._3
{
    public class userDatos : ConexionUsuarios
    {
        public bool login(string usuario, string contraseña)
        {
            using (var conecction = getConexxion())
            {
                conecction.Open();

                using(var cmd = new MySqlCommand())
                {
                    cmd.Connection = conecction;
                    cmd.CommandText = "select * from Usuarios where usuario = @usuario and contraseña = @contraseña";
                    cmd.Parameters.AddWithValue("@usuario", usuario);
                    cmd.Parameters.AddWithValue("@contraseña", contraseña);
                    cmd.CommandType = CommandType.Text;
                    MySqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            cache.idUsuario = reader.GetInt32(0);
                            cache.usuario = reader.GetString(1);
                            cache.contraseña = reader.GetString(2);
                            cache.fk_idroll = reader.GetInt32(3);
                        }
                        return true;
                    }
                    else
                        return false;
                }
            }
        }
        //privilegios
        public void AnyMetod()
        {
            if (cache.fk_idroll == Cargos.ADMINISTRADOR.CompareTo(0))
            {

            }
            if (cache.fk_idroll == Cargos.SORTEADOR.CompareTo(3) || cache.fk_idroll == Cargos.CHECADOR.CompareTo(4))
            {

            }
        }
    }
}