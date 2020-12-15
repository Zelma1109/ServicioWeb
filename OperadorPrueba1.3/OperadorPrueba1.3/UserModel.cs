using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OperadorPrueba1._3
{
    public class UserModel
    {
        userDatos userdatos = new userDatos();
        public bool userLogin(string usuario, string contraseña)
        {
            return userdatos.login(usuario, contraseña);
        }

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