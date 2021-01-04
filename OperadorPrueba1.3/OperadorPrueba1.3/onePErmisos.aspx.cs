using MySqlX.XDevAPI;
using System;

namespace OperadorPrueba1._3
{
    public partial class onePErmisos : System.Web.UI.Page
    {
        //Control de usuarios
        int Tipo_usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            //MOSTRAR USUARIO QUE HA INGRESADO EN EL SISTEMA
            lbl_usuarios.Text = Secc.usuario;

            /////////////////////////////////////////////////


            //Control de usuarios
            Tipo_usuario = Secc.idroll;

            //CONTROL DE ACCESO AL SISTEMA
            /////////////////////////////// DEFINIMOS ACCESOS A LOS TIPOS DE USUARIO///////
            //////////////ADMINISTRADOR////
            if (Tipo_usuario == 1)
            {          
                btn_asignarTaller.Visible = true;
                btn_AsignarMaquila.Visible = true;
                btn_ChecarTaller.Visible = true;
                btn_checadorMaquila.Visible = true;
            }
            else
            {
                /////////////////////////////////////////////OFICINA////
                if (Tipo_usuario == 2)
                {
                    Response.Redirect("Login.aspx");
                }
                    else
                    {
                        ///////////////////////////////SORTEADOR////
                        if(Tipo_usuario == 3)
                        {
                            btn_asignarTaller.Visible = true;
                            btn_AsignarMaquila.Visible = true;
                            btn_ChecarTaller.Visible = false;
                            btn_checadorMaquila.Visible = false;
                        }
                            else
                            {
                                ////////////////////CHECADOR////
                                if(Tipo_usuario == 4)
                                {

                                    btn_asignarTaller.Visible = false;
                                    btn_AsignarMaquila.Visible = false;
                                    btn_ChecarTaller.Visible = true;
                                    btn_checadorMaquila.Visible = true;
                                }
                            }
                    }
            }
        }
        protected void salir_Click(object sender, EventArgs e)
        {
            //Cerramos y cerramos sesion
            Response.Redirect("Login.aspx");
            //Aqui se reinicia la sesion XD
            Secc ss = new Secc();
        }
        protected void btn_AsignarMaquila_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maquila.aspx");
        }
        protected void btn_ChecarTaller_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checador_Taller.aspx");
        }
        protected void btn_asignarTaller_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sorteador.aspx");
        }
        protected void btn_checadorMaquila_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checador_Maquila.aspx");
        }
    }
}