using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace OperadorPrueba1._3
{
    public class control
    {

        //Metodo para login
        public string ctrlLogin(string usuario, string password)
        {
            Modelo modelo = new Modelo();

            string respuesta = "";
            Users datosUser = null;

            if (string.IsNullOrEmpty(usuario) || string.IsNullOrEmpty(password))
            {
                respuesta = "Debe llenar todos los campos";
            }
            else
            {
                datosUser = modelo.porUsuario(usuario);
                if (datosUser == null)
                {
                    respuesta = "El usuario no existe";
                }
                else
                {
                    if (datosUser.Contraseña != generarSHA1(password))
                    {
                        respuesta = "El Usuario y/o Contraseña no existen";
                    }
                    else
                    {

                        Secc.id = datosUser.IdUsuario;
                        Secc.usuario = datosUser.Usuario;
                        Secc.idroll = datosUser.Idroll;

                    }
                }
            }
            return respuesta;
        }

        //Hasheo SHA1
        private string generarSHA1(string cadena)
        {
            UTF8Encoding enc = new UTF8Encoding();
            byte[] data = enc.GetBytes(cadena);
            byte[] result;

            SHA1CryptoServiceProvider sha = new SHA1CryptoServiceProvider();
            result = sha.ComputeHash(data);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                if (result[i] < 16)
                {
                    sb.Append("0");
                }
                sb.Append(result[i].ToString("x"));
            }
            return sb.ToString();
        }
    }
}