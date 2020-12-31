using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OperadorPrueba1._3
{
    public partial class Checador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MOSTRAR USUARIO QUE HA INGRESADO EN EL SISTEMA
            lbl_Usuario.Text = Secc.usuario;

            /////////////////////////////////////////////////
        }
        protected void salir_Click(object sender, EventArgs e)
        {
            //Cerramos y cerramos sesion
            Response.Redirect("Login.aspx");
            //Aqui se reinicia la sesion XD
            Secc ss = new Secc();
        }
    }
}