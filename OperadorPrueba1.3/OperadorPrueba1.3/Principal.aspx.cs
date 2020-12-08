using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Web.UI.WebControls;

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

            //Campos Limpios
            Processos.Items.Clear();
            unidad.Text = "";
            Cantidad_text.Text = "";

            //bloqueo de texto en campos
            unidad.Enabled = false;
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
        private void procesos()
        {
            Processos.DataSource = consultar("select * from procesos");
            Processos.DataTextField = "proceso";
            Processos.DataValueField = "idProcs";
            Processos.DataBind();
            Processos.ClearSelection();
        }
        private void ComenzarLLenado()
        {
            //------------------------------------------------------------------------------------
            Producto.DataSource = consultar("select * from NombreProducto");
            Producto.DataTextField = "NombredeProducto";
            Producto.DataValueField = "idNombreProducto";
            Producto.DataBind();
            Producto.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            Modelos.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            Processos.ClearSelection();
            //-----------------------------------------------------------------------------------
        }
        protected void DropDown_Line_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Modelos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Producto.AppendDataBoundItems == false)
            {
                procesos();
                Processos.ClearSelection();
            }
        }
        protected void Producto_SelectedIndexChanged(object sender, EventArgs e)
        {
                int idproducto = Convert.ToInt32(Producto.SelectedIndex);
                Modelos.DataSource = consultar("select fkidmodelo from productos where producto=" + idproducto);
                Modelos.DataTextField = "fkidmodelo";
                Modelos.DataValueField = "fkidmodelo";
                Modelos.DataBind();
                Modelos.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
                //--------------------------------------------------------------------------

                //--------------------------------------------------------------------------
                Processos.ClearSelection();
                Processos.Items.Clear();
        }

        protected void unidad_TextChanged(object sender, EventArgs e)
        {
            unidad.Enabled = false;
        }

        protected void asignar_Click(object sender, EventArgs e)
        {

        }
        protected void Cancelar_Click(object sender, EventArgs e)
        {
            //Campos Limpios
            Processos.Items.Clear();
            line.Items.Clear();
            Producto.Items.Clear();
            Modelos.Items.Clear();
            Processos.Items.Clear();
            unidad.Text = "";
            Cantidad_text.Text = "";

            //Aqui volvemos a llenar
            Lineas();
            ComenzarLLenado();
            //procesos();
        }
    }
}