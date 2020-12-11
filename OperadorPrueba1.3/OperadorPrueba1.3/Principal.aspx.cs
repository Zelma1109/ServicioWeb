using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Windows.Forms;

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

            //bloquear campos para escribir
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
                //-----------------------Aqui Traemos la unidad para el apartado---------------------------                  

                cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");

                MySqlCommand cmd = new MySqlCommand("SELECT fkidunidad, unidad FROM productos " +
                                                    "INNER JOIN unidad ON" +
                                                    " productos.fkidunidad = unidad.idunidad " +
                                                    "where producto = @ID and fkidmodelo = @Modelo", cn);

                cmd.Parameters.AddWithValue("@ID", Producto.SelectedValue);
                cmd.Parameters.AddWithValue("@Modelo", Modelos.SelectedValue);

                cn.Open();

                MySqlDataReader registro = cmd.ExecuteReader();
                if (registro.Read())
                {
                    unidad.Text = registro["unidad"].ToString();
                }

                //---------------------------------------------------------------------------------------          
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

            Processos.ClearSelection();
            Processos.Items.Clear();
        }
        protected void unidad_TextChanged(object sender, EventArgs e)
        {
            unidad.Enabled = false;
        }
        protected void asignar_Click(object sender, EventArgs e)
        {

            /*  cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
              MySqlCommand cmd = new MySqlCommand("AgregarTareas", cn);

              cmd.CommandType = CommandType.StoredProcedure;

              cmd.Parameters.Add("p_emplinea", MySqlDbType.VarChar).Value = line.Text.Trim();
              cmd.Parameters.Add("p_producto", MySqlDbType.VarChar).Value = Producto.Text.Trim();
              cmd.Parameters.Add("p_modelo", MySqlDbType.VarChar).Value = Modelos.Text.Trim();
              cmd.Parameters.Add("p_unidad", MySqlDbType.VarChar).Value = unidad.Text.Trim();
              cmd.Parameters.Add("p_procesos", MySqlDbType.VarChar).Value = Processos.Items;
              cmd.Parameters.Add("p_cantidad", MySqlDbType.VarChar).Value = Cantidad_text.Text.Trim();


              cn.Open();
              cmd.ExecuteNonQuery();
              cn.Close();
              MessageBox.Show("ASIGNACION CORRECTA");*/


            if (!string.IsNullOrEmpty(line.Text) && !string.IsNullOrEmpty(Producto.Text) &&
                           !string.IsNullOrEmpty(Modelos.Text) &&
                           !string.IsNullOrEmpty(Processos.Text) && !string.IsNullOrEmpty(Cantidad_text.Text) == true)
            {
                cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
                MySqlCommand cmd = new MySqlCommand("AgregarTareas", cn);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("p_emplinea", MySqlDbType.VarChar).Value = line.Text.Trim();
                cmd.Parameters.Add("p_producto", MySqlDbType.VarChar).Value = Producto.Text.Trim();
                cmd.Parameters.Add("p_modelo", MySqlDbType.VarChar).Value = Modelos.Text.Trim();
                cmd.Parameters.Add("p_unidad", MySqlDbType.VarChar).Value = unidad.Text.Trim();
                cmd.Parameters.Add("p_procesos", MySqlDbType.VarChar).Value = Processos.Text.Trim();
                cmd.Parameters.Add("p_cantidad", MySqlDbType.VarChar).Value = Cantidad_text.Text.Trim();


                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                MessageBox.Show("ASIGNACION CORRECTA");

            }
            else
            {
                MessageBox.Show("FAVOR DE LLENAR LOS CAMPOS QUE SE ENCUENTRAN VACIOS", "CAMPOS VACIOS");

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
            }
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
        protected void Processos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}