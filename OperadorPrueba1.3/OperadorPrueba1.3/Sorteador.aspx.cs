﻿using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.Common;
using System.Data.SqlClient;

namespace OperadorPrueba1._3
{
    public partial class Principal : System.Web.UI.Page
    {
        ConexionUsuarios c = new ConexionUsuarios();
        MySqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            //MOSTRAR USUARIO QUE HA INGRESADO EN EL SISTEMA
            lbl_usuarios.Text = Secc.usuario;

            /////////////////////////////////////////////////


            //------------------
            historial();
            //------------------
            if (!IsPostBack)
            {
                Lineas();
                ComenzarLLenado();
            }

            //bloquear campo de texto
            unidad.Enabled = false;
        }
        private void historial()
        {
            //Funciona plox----
            Historial_Total.DataSource = consultar("Select fechaAsignacion as 'Asignacion:', emplinea as 'Linea'," +
                                                    " producto as 'Producto', modelo as 'Modelo', unidad as 'Unidad'," +
                                                    " procesos as 'Procesos', cantidad as 'Cantidad' from tareas_Asignadas;");
            Historial_Total.DataBind();
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
            Producto.DataValueField = "NombredeProducto";
            Producto.DataBind();
            Producto.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            //Processos.ClearSelection();
            //-----------------------------------------------------------------------------------
        }
        protected void DropDown_Line_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Modelos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Producto.AppendDataBoundItems == false)
            {
                //MEJJORA-----------------------Aqui Traemos la unidad para el apartado---------------------------                  
                cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
                
                int idproducto = Convert.ToInt32(Producto.SelectedIndex);
                MySqlCommand cmd = new MySqlCommand("SELECT fkidunidad, unidad FROM productos " +
                                                    "INNER JOIN unidad ON" +
                                                    " productos.fkidunidad = unidad.idunidad " +
                                                    "where producto = " + idproducto +" and fkidmodelo = @Modelo",  cn);

                //cmd.Parameters.AddWithValue("@ID", Producto.SelectedValue);
                cmd.Parameters.AddWithValue("@Modelo", Modelos.SelectedValue);

                cn.Open();

                MySqlDataReader registro = cmd.ExecuteReader();
                if (registro.Read())
                {
                    unidad.Text = registro["unidad"].ToString();
                }

                //--------------------------------------------------------------------------------------- 
                
                procesos();
                //Processos.ClearSelection();
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
            Processos.DataBind();
            Processos.ClearSelection();
            //Processos.Items.Clear();
        }
        public void AsignarTarea()
        { 
            //Guardado datos seleccionados en el checkbox
            string cbx = "";
            for (int i = 0; i < Processos.Items.Count; i++)
            {
                if (Processos.Items[i].Selected)
                {
                    if (cbx == "")
                    {
                        cbx = Processos.Items[i].Text;
                    }
                    else
                    {
                        cbx += "," + Processos.Items[i].Text;
                    }
                }
            }

            cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");

            MySqlCommand cmd = new MySqlCommand("INSERT INTO tareas_Asignadas(emplinea, producto, modelo," +
                                                " unidad, procesos, cantidad)" +
                                                 "Values('" + line.Text + "','" + Producto.Text + "','" + Modelos.Text + "','" 
                                                 + unidad.Text + "','" + cbx + "','" + txt_c.Text +"')", cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            MessageBox.Show("ASIGNACION CORRECTA");

            limpiarycargar();
            historial();
        }
        protected void asignar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(line.Text) && !string.IsNullOrEmpty(Producto.Text) &&
                           !string.IsNullOrEmpty(Modelos.Text) && !string.IsNullOrEmpty(Processos.Text) 
                           && !string.IsNullOrEmpty(txt_c.Text) == true)
            {
                
                AsignarTarea();
            }
            else
            {
                MessageBox.Show("FAVOR DE LLENAR LOS CAMPOS QUE SE ENCUENTRAN VACIOS", "CAMPOS VACIOS");
                //Aqui no se limpian los campos ya que la validacion solo retiene los campos hasta llenarlos
            }
        }
        public void limpiarycargar()
        {
            //Campos Limpios
            Processos.Items.Clear();
            line.Items.Clear();
            Producto.Items.Clear();
            Modelos.Items.Clear();
            unidad.Text = "";
            Processos.Items.Clear();
            txt_c.Text = "";

            //Aqui volvemos a llenar
            Lineas();
            ComenzarLLenado();
        }
        protected void Cancelar_Click(object sender, EventArgs e)
        {
            limpiarycargar();
        }
        protected void Processos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void unidad_TextChanged(object sender, EventArgs e)
        {
            unidad.Enabled = false;
        }
        protected void Buscador_TextChanged(object sender, EventArgs e)
        {
      
        }
        protected void CerrarSesion_Click(object sender, EventArgs e)
        {
            //Cerramos y cerramos sesion
            Response.Redirect("Login.aspx");
            //Aqui se reinicia la sesion XD
            Secc ss = new Secc();
        }
    }
}