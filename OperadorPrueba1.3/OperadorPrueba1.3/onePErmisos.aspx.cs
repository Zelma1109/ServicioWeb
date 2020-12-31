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
                btn_asignarTareas.Visible = true;
                btn_Checar.Visible = true;
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
                            btn_asignarTareas.Visible = true;
                            btn_Checar.Visible = false;
                        }
                            else
                            {
                                ////////////////////CHECADOR////
                                if(Tipo_usuario == 4)
                                {

                                    btn_asignarTareas.Visible = false;
                                    btn_Checar.Visible = true;
                                }
                            }
                    }
            }
        }
        protected void btn_asignarTareas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sorteador.aspx");
        }
        protected void btn_Checar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checador.aspx");
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