using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OperadorPrueba1._3
{
    public class Users
    {
        int idUsuario, idroll;
        string usuario, contraseña, confContraseña;

        public int IdUsuario { get => idUsuario; set => idUsuario = value; }
        public int Idroll { get => idroll; set => idroll = value; }
        public string Usuario { get => usuario; set => usuario = value; }
        public string Contraseña { get => contraseña; set => contraseña = value; }
        public string ConfContraseña { get => confContraseña; set => confContraseña = value; }
    }
}