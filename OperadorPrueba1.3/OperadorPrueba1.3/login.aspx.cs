using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace OperadorPrueba1._3
{
    public partial class login : System.Web.UI.Page
    {
        ConexionUsuarios Us = new ConexionUsuarios();
        MySqlConnection cn;
        //Control de usuarios
        int tipo_usuario;
        // //////////////////

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Entrar_Click(object sender, EventArgs e)
        {
           
        
        }
        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}