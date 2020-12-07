using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace OperadorPrueba1._3
{
    public partial class Principal : System.Web.UI.Page
    {
        ConexionUsuarios c = new ConexionUsuarios();
        MySqlConnection cn;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Lineas();
                ComenzarLLenado();
            }
        }
        public DataSet consultar(string strSQL)
        {
            string strconn = @"Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;";
            MySqlConnection con = new MySqlConnection(strconn);
            con.Open();
            MySqlCommand cmd = new MySqlCommand(strSQL, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        private void Lineas()
        {
            line.DataSource = consultar("select * from Empleados");
            line.DataTextField = "nombre";
            line.DataValueField = "nombre";
            line.DataBind();
            line.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
        }

        private void ComenzarLLenado()
        {
            //------------------------------------------------------------------------------------
            Producto.DataSource = consultar("select * from productos");
            Producto.DataTextField = "producto";
            Producto.DataValueField = "idproducto";
            Producto.DataBind();
            Producto.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            Modelos.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            //-----------------------------------------------------------------------------------
        }
        protected void DropDown_Line_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Modelos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idproducto = Convert.ToInt32(Modelos.SelectedValue);
            Processos.DataSource = consultar("select idproducto, producto, fkidmodelo, fkidunidad, produccion,materiaprima,total,precioVenta,fechaInt,fechamod from productos where idproducto=" + idproducto);
            Processos.DataTextField = "proceso";
            Processos.DataValueField = "procesoID";
            Processos.DataBind();
            Processos.ClearSelection();
        }

        protected void Producto_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idproducto = Convert.ToInt32(Producto.SelectedValue);
            Modelos.DataSource = consultar("select fkidmodelo from productos where idproducto=" + idproducto);
            Modelos.DataTextField = "fkidmodelo";
            Modelos.DataValueField = "fkidmodelo";
            Modelos.DataBind();
            Modelos.DataBind();
            Modelos.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            Processos.ClearSelection();
        }
    }
}