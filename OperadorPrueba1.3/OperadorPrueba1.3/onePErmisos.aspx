﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onePErmisos.aspx.cs" Inherits="OperadorPrueba1._3.onePErmisos" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!DOCTYPE html>
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="CSS/estilos.css" >
	<link rel="stylesheet" href="CSS/xx.css" >
    <link rel="stylesheet" href="CSS/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <style type="text/css">
        .auto-style1 {
            left: 0;
            top: 1;
            height: 34px;
        }      
        .footers {
          position: fixed;
          left: 0;
          bottom: 0;
          width: 100%;
          background-color: rgb(36,41,46);
          color: white;
          text-align: center;
        }
        #heading { color: rgb(255,202,24);}
        </style>
</head>
<body style="height: 719px">
    <form id="form1" runat="server">
<!--____________________________________________________ Header______________________________________________-->
     <header id="main-headerXD" class="auto-style1">
        <a id="logo-header" href="#"><h1 class ="site-name"><font color="yellow" size="6" text-align="center">Wario</font></h1></a>
         &nbsp;&nbsp;&nbsp;&nbsp;<a id="logo-header" href="#"><h1 class ="site-names" style="width: 351px; height: 3px"><font color="yellow" size="2">
         Bienvenido: &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_usuarios" runat="server" Text=""></asp:Label></h1></a>
         <nav>
            <ul><font color="yellow">
                <a id="logo-header" href="#" class="auto-style8">
                    <h1 class ="site-name">
                        <asp:Button ID="salir" runat="server" Text="Cerrar sesión" BackColor="#24292E" BorderColor="#24292E" ForeColor="Yellow" Width="129px" BorderStyle="None" OnClick="salir_Click"></asp:Button>
                    </h1>
                </a>
                </font>
          </ul>
        </nav>
    </header>
<!--__________________________________________________developing_____________________________________________-->
    <div align=center >
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btn_asignarTareas" runat="server" ForeColor="#FFDF1B" Height="94px" Text="ASIGNACION A TALLER" Width="338px" BackColor="#24292E" Font-Bold="True" OnClick="btn_asignarTareas_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Maquill" runat="server" ForeColor="#FFDF1B" Height="94px" Text="ASIGNACION A MAQUILAS" Width="338px" BackColor="#24292E" Font-Bold="True" OnClick="btn_Maquill_Click" />
        </font>
        <br />
        <br /> 
        <br />
        <br /> 
        </div>
        <!--......................................................................................................................................................................................................-->
        <div align=center >
        <asp:Button ID="btn_Checar" runat="server" ForeColor="#FFDF1B" Height="91px" Text="CHECADOR DE TAREAS" Width="340px" BackColor="#24292E" Font-Bold="True" OnClick="btn_Checar_Click" />
        <br />
        <br />
        <br />
        <br />
    </div>
<!--___________________________________________________Footer_________________________________________________-->
   <footer id="main-footer">
        <p><font color="yellow">&copy;Guantes Industriales Wario</font></p>
    </footer> 
<!--_________________________________________________________________________________________________________-->
        
	   <script src="CSS/js/jquery.js"></script>
		<script src="CSS/js/xxa.js"></script>
		<script src="CSS/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
	</form>
	</body>
</html>

