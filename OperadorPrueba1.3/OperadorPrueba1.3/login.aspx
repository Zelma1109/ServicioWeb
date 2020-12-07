<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OperadorPrueba1._3.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport" content="width=device-width"/>
<link href="img/login.css" rel="stylesheet" type="text/css"/>

    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 283px;
        }
        .auto-style3 {
            float: left;
            width: 47%;
            margin-left: 0px;
            height: 600px;
            overflow: auto;
        }

        .auto-style4 {
            margin-top: 3px;
        }

    </style>
</head>


<body>

    <form id="form1" runat="server" aling="left" class="auto-style3">
        <div>
             <div style="text-align:center;">  
                 <div class="auto-style2"></div>
                  <div><font color="yellow">Usuario<br /></font><asp:TextBox ID="txtusuario" Style="text-transform: uppercase" runat="server" Width="253px" TabIndex="1"></asp:TextBox>
                      <br />
                 </div>

                  <div><br /></div>
                  <div><font color="yellow">Contraseña<br /></font><asp:TextBox ID="txtpassword" Style="text-transform: uppercase" runat="server" Width="247px" TabIndex="2" TextMode="Password" OnTextChanged="txtpassword_TextChanged"></asp:TextBox>
                      <br />
                 </div>
                  <div><br /><br /></div>
                  <div><asp:Button ID="Entrar" runat="server" Text="Iniciar Sesión" Width="132px" OnClick="Entrar_Click" TabIndex="3" BackColor="#6B1F08" BorderColor="#DBB535" BorderStyle="Solid" ForeColor="White" CssClass="auto-style4"  /></div>
                  <div><br /><asp:Label ID="lblError" runat="server" Text=" "></asp:Label></div>
            </div>
        </div>
    </form>

</body>
</html>
