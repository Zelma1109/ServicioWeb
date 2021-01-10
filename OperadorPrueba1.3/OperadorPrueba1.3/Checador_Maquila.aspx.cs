using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using CheckBox = System.Web.UI.WebControls.CheckBox;

namespace OperadorPrueba1._3
{
    public partial class ejercicio : System.Web.UI.Page
    {
        ConexionUsuarios c = new ConexionUsuarios();
        MySqlConnection cn;

        MySqlDataAdapter adap;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                BindGridview();
                BindGridviewTer();
            }

        }
        public ejercicio()
        {
            cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
        }
        protected void BindGridview()
        {
            adap = new MySqlDataAdapter("select * from tareas_Asignadas_Maquila1 ORDER BY Idtarea DESC", cn);
            dt = new DataTable();
            adap.Fill(dt);
            gvEmpInfo.DataSource = dt;
            gvEmpInfo.DataBind();
        }
        protected void BindGridviewTer()
        {
            adap = new MySqlDataAdapter("select * from Terminado_Maquila ORDER BY Idtarea DESC", cn);
            dt = new DataTable();
            adap.Fill(dt);
            Terminado.DataSource = dt;
            Terminado.DataBind();
        }
        protected void ChckedChanged(object sender, EventArgs e)
        {
        }
        protected void salir_Click(object sender, EventArgs e)
        {
            //Cerramos y cerramos sesion
            Response.Redirect("Login.aspx");
            //Aqui se reinicia la sesion XD
            Secc ss = new Secc();
        }
        protected void btn_Menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("OnePErmisos.aspx");
        }
        protected void btn_Registrar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Las tareas a registrar ¿estan correctas?", "ADVERTENCIA", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {

                foreach (GridViewRow row in gvEmpInfo.Rows)
                {
                    CheckBox chkitem = (CheckBox)(row.FindControl("chkbox"));

                    if (chkitem.Checked)
                    {
                        //Invocar al método que inserta los registros/
                        cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
                        MySqlCommand cmd = new MySqlCommand("Finish_Mac", cn);

                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("p_Idtarea", row.Cells[1].Text.Trim());
                        cmd.Parameters.AddWithValue("p_fechaAsignacion", row.Cells[2].Text.Trim());
                        cmd.Parameters.AddWithValue("p_Asignador", row.Cells[3].Text.Trim());
                        cmd.Parameters.AddWithValue("p_emplinea", row.Cells[4].Text.Trim());
                        cmd.Parameters.AddWithValue("p_producto", row.Cells[5].Text.Trim());
                        cmd.Parameters.AddWithValue("p_modelo", row.Cells[6].Text.Trim());
                        cmd.Parameters.AddWithValue("p_unidad", row.Cells[7].Text.Trim());
                        cmd.Parameters.AddWithValue("p_procesos", row.Cells[8].Text.Trim());
                        cmd.Parameters.AddWithValue("p_cantidad", row.Cells[9].Text.Trim());


                        //procedimiento  almacenado que permite guardar los registros evitando duplicaciones y redundancia de datos
                        MySqlCommand cmdD = new MySqlCommand("FinishTareasMaquila", cn);

                        cmdD.CommandType = CommandType.StoredProcedure;
                        cmdD.Parameters.AddWithValue("p_Idtarea", row.Cells[1].Text.Trim());

                        cn.Open();
                        cmd.ExecuteNonQuery();
                        cmdD.ExecuteNonQuery();
                        cn.Close();

                        //una vez que se guardan cargan en la siguiente de completadas
                        BindGridview();
                        BindGridviewTer();
                    }
                }
            }
            else
            {
                foreach (GridViewRow row in gvEmpInfo.Rows)
                {

                    CheckBox check = row.FindControl("chkbox") as CheckBox;
                    check.Checked = false;
                }
            }
        }
        protected void btn_desRegistrar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Registrar las tareas elaboradas en la semana?", "ADVERTENCIA", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {

                foreach (GridViewRow row in Terminado.Rows)
                {
                    CheckBox chkitem = (CheckBox)(row.FindControl("chkbox2"));

                    if (chkitem.Checked)
                    {
                        //Invocar al método que inserta los registros/
                        cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
                        MySqlCommand cmd = new MySqlCommand("PorSemanaMAc", cn);

                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("p_Idtarea", row.Cells[1].Text.Trim());
                        cmd.Parameters.AddWithValue("p_fechaAsignacion", row.Cells[2].Text.Trim());
                        cmd.Parameters.AddWithValue("p_Asignador", row.Cells[3].Text.Trim());
                        cmd.Parameters.AddWithValue("p_emplinea", row.Cells[4].Text.Trim());
                        cmd.Parameters.AddWithValue("p_producto", row.Cells[5].Text.Trim());
                        cmd.Parameters.AddWithValue("p_modelo", row.Cells[6].Text.Trim());
                        cmd.Parameters.AddWithValue("p_unidad", row.Cells[7].Text.Trim());
                        cmd.Parameters.AddWithValue("p_procesos", row.Cells[8].Text.Trim());
                        cmd.Parameters.AddWithValue("p_cantidad", row.Cells[9].Text.Trim());


                        //procedimiento  almacenado que permite guardar los registros evitando duplicaciones y redundancia de datos
                        MySqlCommand cmdD = new MySqlCommand("LimpiarSemanaMAcOP", cn);

                        cmdD.CommandType = CommandType.StoredProcedure;
                        cmdD.Parameters.AddWithValue("p_Idtarea", row.Cells[1].Text.Trim());

                        cn.Open();
                        cmd.ExecuteNonQuery();
                        cmdD.ExecuteNonQuery();
                        cn.Close();

                        //una vez que se guardan cargan en la siguiente de completadas
                        BindGridviewTer();
                    }
                }
            }
            else
            {
                foreach (GridViewRow row in Terminado.Rows)
                {

                    CheckBox check = row.FindControl("chkbox2") as CheckBox;
                    check.Checked = false;
                }
            }

        }

        protected void salir_Click1(object sender, EventArgs e)
        {
            //Cerramos y cerramos sesion
            Response.Redirect("Login.aspx");
            //Aqui se reinicia la sesion XD
            Secc ss = new Secc();
        }
    }
}


