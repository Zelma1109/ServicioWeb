using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

using System.ComponentModel;
using System.Drawing;

namespace OperadorPrueba1._3
{
    public partial class usuarios : System.Web.UI.Page
    {
        //Control de usuarios
        int tipo_usuario;
        // //////////////////


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Lineas();
                ComenzarLLenado();
            }
        }

        //CADENA DE CONEXION PARA ATRAER LOS DATOS A LOS COMBOBOX/DROPDOWNLIST
        public DataSet consultar(string strSQL)
        {
            string strconn = @"Data Source=LEHZ\ZELMA;Initial Catalog=Prueba1;Persist Security Info=True;User ID=sa;Password=Z37mA";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        private void Lineas()
        {
            Line.DataSource = consultar("select * from lineasproduccion");
            Line.DataTextField = "lineas";
            Line.DataValueField = "lineas";
            Line.DataBind();
            Line.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
        }     
        private void ComenzarLLenado()
        {

            //------------------------------------------------------------------------------------
            Product.DataSource = consultar("select * from productos");
            Product.DataTextField = "producto";
            Product.DataValueField = "productoID";
            Product.DataBind();
            Product.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            mod.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
           
           
            //-----------------------------------------------------------------------------------

        }
        protected void Product_SelectedIndexChanged(object sender, EventArgs e)
        {
            int productoID = Convert.ToInt32(Product.SelectedValue);
            mod.DataSource = consultar("select modelo from modelo where productoID=" + productoID);
            mod.DataTextField = "modelo";
            mod.DataValueField = "modeloID";
            mod.DataBind();
            Proces.DataBind();
            mod.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            Proces.ClearSelection();

        }
        protected void mod_SelectedIndexChanged(object sender, EventArgs e)
        {
            int modeloID = Convert.ToInt32(mod.SelectedValue);
            Proces.DataSource = consultar("select * from proceso where modeloID=" + modeloID);
            Proces.DataTextField = "proceso";
            Proces.DataValueField = "procesoID";
            Proces.DataBind();
            Proces.ClearSelection();

        }
        public  void AsignarTarea()
        {
            using ( SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Prueba1ConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insertar";
                cmd.Parameters.Add("@linea", SqlDbType.VarChar).Value = Line.Text.Trim();
                cmd.Parameters.Add("@producto", SqlDbType.VarChar).Value = Product.SelectedItem.Value;
                cmd.Parameters.Add("@modelo", SqlDbType.VarChar).Value = mod.Text.Trim();
                cmd.Parameters.Add("@proceso", SqlDbType.VarChar).Value = Proces.Text.Trim();
                //cmd.Parameters.Add("@cantidad", SqlDbType.VarChar).Value = txt_c.Text.Trim();
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();          

            }
       
        }
        protected void btn_Asignar_Click(object sender, EventArgs e)
        {
            AsignarTarea();

            //Limpiar datos al Guardar
            Line.Items.Clear();
            Product.Items.Clear();
            mod.Items.Clear();
            Proces.Items.Clear();
            //txtCantidad.Text = "";

        }
        protected void Line_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Proc_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
        }
        protected void Proces_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}
 