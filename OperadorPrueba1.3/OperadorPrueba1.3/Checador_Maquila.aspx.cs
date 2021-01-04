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
            }

        }
        public ejercicio()
        {
            cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
        }
        protected void BindGridview()
        {
            adap = new MySqlDataAdapter("select * from tareas_Asignadas_Maquila", cn);
            dt = new DataTable();
            adap.Fill(dt);
            gvEmpInfo.DataSource = dt;
            gvEmpInfo.DataBind();
        }
        protected void ChckedChanged(object sender, EventArgs e)
        {
            GetSelectedRows();
            BindSecondGrid();
        }
        protected void BindSecondGrid()
        {
            DataTable dt = (DataTable)ViewState["EmpDetails"];
            gvMovedRows.DataSource = dt;
            gvMovedRows.DataBind();
        }
        private void GetSelectedRows()
        {
            DataTable dt;
            if (ViewState["EmpDetails"] != null)
                dt = (DataTable)ViewState["EmpDetails"];
            else
                dt = CreateTable();
            for (int i = 0; i < gvEmpInfo.Rows.Count; i++)
            {
                System.Web.UI.WebControls.CheckBox chk = (System.Web.UI.WebControls.CheckBox)gvEmpInfo.Rows[i].Cells[0].FindControl("chkbox");
                if (chk.Checked)
                {
                    dt = MoveRows(gvEmpInfo.Rows[i], dt);

                }
                else
                {
                    dt = RemoveRow(gvEmpInfo.Rows[i], dt);
                }
            }
            ViewState["EmpDetails"] = dt;
        }
        private DataTable CreateTable()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Idtarea");
            dt.Columns.Add("fechaAsignacion");
            dt.Columns.Add("Asignador");
            dt.Columns.Add("emplinea");
            dt.Columns.Add("producto");
            dt.Columns.Add("modelo");
            dt.Columns.Add("unidad");
            dt.Columns.Add("procesos");
            dt.Columns.Add("cantidad");
            dt.AcceptChanges();
            return dt;
        }
        private DataTable MoveRows(GridViewRow gvRow, DataTable dt)
        {
            DataRow[] dr = dt.Select("Idtarea = '" + gvRow.Cells[1].Text + "'");
            if (dr.Length <= 0)
            {
                dt.Rows.Add();
                int rowscount = dt.Rows.Count - 1;
                dt.Rows[rowscount]["Idtarea"] = gvRow.Cells[1].Text;
                dt.Rows[rowscount]["fechaAsignacion"] = gvRow.Cells[2].Text;
                dt.Rows[rowscount]["Asignador"] = gvRow.Cells[3].Text;
                dt.Rows[rowscount]["emplinea"] = gvRow.Cells[4].Text;
                dt.Rows[rowscount]["producto"] = gvRow.Cells[5].Text;
                dt.Rows[rowscount]["modelo"] = gvRow.Cells[6].Text;
                dt.Rows[rowscount]["unidad"] = gvRow.Cells[7].Text;
                dt.Rows[rowscount]["procesos"] = gvRow.Cells[8].Text;
                dt.Rows[rowscount]["cantidad"] = gvRow.Cells[9].Text;
                dt.AcceptChanges();

                cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
                try
                {
                    //procedimiento  almacenado que permite guardar los registros evitando duplicaciones y redundancia de datos
                    MySqlCommand cmd = new MySqlCommand("Finish", cn);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("p_Idtarea", gvRow.Cells[1].Text.ToString());
                    cmd.Parameters.AddWithValue("p_fechaAsignacion", gvRow.Cells[2].Text.ToString());
                    cmd.Parameters.AddWithValue("p_Asignador", gvRow.Cells[3].Text.ToString());
                    cmd.Parameters.AddWithValue("p_emplinea", gvRow.Cells[4].Text.ToString());
                    cmd.Parameters.AddWithValue("p_producto", gvRow.Cells[5].Text.ToString());
                    cmd.Parameters.AddWithValue("p_modelo", gvRow.Cells[6].Text.ToString());
                    cmd.Parameters.AddWithValue("p_unidad", gvRow.Cells[7].Text.ToString());
                    cmd.Parameters.AddWithValue("p_procesos", gvRow.Cells[8].Text.ToString());
                    cmd.Parameters.AddWithValue("p_cantidad", gvRow.Cells[9].Text.ToString());

                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    
                }
                catch (Exception ex)
                {

                    MessageBox.Show("ERROR DE CONEXION");
                }

            }
            return dt;
        }
        private DataTable RemoveRow(GridViewRow gvRow, DataTable dt)
        {
            DataRow[] dr = dt.Select("Idtarea = '" + gvRow.Cells[1].Text + "'");
            if (dr.Length > 0)
            {
                dt.Rows.Remove(dr[0]);
                dt.AcceptChanges();


                cn = new MySqlConnection("Server=198.71.227.83; port=3306; username=AdministradorBD; pwd=hewh700307; Database=Wario_01;");
                try
                {
                     
                            //procedimiento  almacenado que permite guardar los registros evitando duplicaciones y redundancia de datos
                            MySqlCommand cmd = new MySqlCommand("Finish2", cn);

                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("p_Idtarea", gvRow.Cells[1].Text.ToString());

                            cn.Open();
                            cmd.ExecuteNonQuery();
                            cn.Close();
                }
                catch (Exception ex)
                {

                    MessageBox.Show("ERROR DE CONEXION");
                }


            }
            return dt;           
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


