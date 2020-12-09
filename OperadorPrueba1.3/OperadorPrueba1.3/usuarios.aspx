<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="OperadorPrueba1._3.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="Css/Interfaz.css" rel="stylesheet" type="text/css"/>

    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
        }
    </style>

</head>

<body>
    
    <form id="form1" runat="server">
        <div>
               <div style="text-align:right; height: 33px;" >           
                              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="cerrar.aspx" style="color:ActiveBorder">
                                  <font color="white">Salir</font></asp:HyperLink>

               </div>
        </div>

                

        <div style="text-align:center;">

        <div><h2 style="text-align:center"><font color="yellow">Asignación de Tareas</font></h2></div>   <div><br /></div>
                  
                <div>
                    <br /><font color="white"> Linea :&nbsp;&nbsp;&nbsp;&nbsp;</font><br />
                    &nbsp;<asp:DropDownList ID="Line" runat="server" OnSelectedIndexChanged="Line_SelectedIndexChanged"
                     AutoPostBack="true" Width="208px" Height="16px" TabIndex="1" ></asp:DropDownList>
                    <br />
                </div>

                <div>
                    <br /><font color="white">Producto :</font><br />
                    &nbsp;<asp:DropDownList ID="Product" runat="server" OnSelectedIndexChanged="Product_SelectedIndexChanged"
                    AutoPostBack="true" Width="210px" Height="18px" TabIndex="2" ></asp:DropDownList>
                    <br />
                </div>

                <div>
                    <br /><font color="white">Modelo :</font><br />
                    &nbsp;<asp:DropDownList ID="mod" runat="server" OnSelectedIndexChanged="mod_SelectedIndexChanged"
                    AutoPostBack="true" Width="205px" Height="18px" TabIndex="3" CssClass="auto-style2" ></asp:DropDownList>
                    <br />
                </div>

                <div style="nav-index:auto">
                    <br /><font color="white"> Proceso :</font><br />
                    &nbsp;<asp:CheckBoxList ID="Proces" runat="server" AutoPostBack="true"  CssClass="DefaultCheckBoxList" Width="205px" 
                    OnSelectedIndexChanged="Proces_SelectedIndexChanged" TabIndex="4" BorderColor="#CCCCCC" BorderStyle="Solid" RepeatLayout="Flow" ForeColor="White"></asp:CheckBoxList>
               </div>                        

                <div>
                    <br /><font color="white">Cantidad :</font><br />
                    &nbsp;<asp:TextBox ID="txtCantidad" runat="server" Type="number" min="1" MaxLength="1000" Width="204px" OnTextChanged="txtCantidad_TextChanged" Height="19px" TabIndex="5" CssClass="auto-style2"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCantidad" ErrorMessage="Campos vacios" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                 <div /><div><br /></div>

                <div style="text-align:center;">
                    <asp:Button ID="btn_Asignar" runat="server" Text="Asignar" OnClick="btn_Asignar_Click" TabIndex="6" BackColor="#E1E6E9" BorderColor="#000066" BorderStyle="Solid" Width="94px" style="height: 26px" />
                </div>
                <div /><div><br /><br /></div>
            </div>
       </div>
    </form>

</body>
</html>
