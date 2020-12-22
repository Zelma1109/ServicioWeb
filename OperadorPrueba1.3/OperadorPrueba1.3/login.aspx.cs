using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
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

        MySqlConnection cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
       

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        
        protected void Entrar_Click(object sender, EventArgs e)
        {
            string usuario = txtusuario.Text;
            string password = txtpassword.Text;
            try
            {
                control ctrl = new control();
                string respuesta = ctrl.ctrlLogin(usuario, password);
                if (respuesta.Length > 0)
                {
                    MessageBox.Show(respuesta, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    Response.Redirect("onePErmisos.aspx");
                }
            }
            catch (Exception)
            {
              // MessageBox.Show(ex.Message, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {

        }

    }
}