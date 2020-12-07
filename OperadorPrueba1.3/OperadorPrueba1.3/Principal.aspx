<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="OperadorPrueba1._3.Principal" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
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
        <a id="logo-header" href="#"><h1 class ="site-name"><font color="yellow">WARIO</font></h1></a>
         &nbsp;&nbsp;&nbsp;&nbsp;<a id="logo-header" href="#"><h1 class ="site-names"><font color="yellow">
           <asp:Label ID="lbl_usuarios" runat="server" Text=""></asp:Label></h1></a>
        <nav>
            <ul><li><a><font color="yellow">Cerrar Sesion</font></a></li></ul>
        </nav>
    </header>
<!--__________________________________________________developing_____________________________________________-->
    <section>
        <div class="content">
              <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><font color="black">ASIGNACION DE TAREAS</font></a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><font color="black">HISTORIAL

                                                                                                                    </font></a></li>
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">

                 <div role="tabpanel" class="tab-pane active" id="home">
                            <!-- A QUI IRA LO DE LA ASIGNACION DE LAS TARERAS-->
                     <br /><br />
                    <div>
                    <br /><font color="black"> Linea :&nbsp;&nbsp;&nbsp;&nbsp;</font><br />
                    &nbsp;<br />
                        <asp:DropDownList ID="line" runat="server" AutoPostBack="True" ForeColor="Black" Height="27px" Width="249px">
                        </asp:DropDownList>
                    </div>

                     <div>
                    <br /><font color="black"> Producto :&nbsp;&nbsp;&nbsp;&nbsp;</font><br />
                         <font color="yellow">
                         <br />&nbsp;<asp:DropDownList ID="Producto" runat="server" AutoPostBack="True" ForeColor="Black"  Height="27px" Width="249px" OnSelectedIndexChanged="Producto_SelectedIndexChanged">
                         </asp:DropDownList>
                         </font>
                         </div>

                     <div>
                    <br /><font color="black"> Modelo :&nbsp;&nbsp;&nbsp;&nbsp;<font color="yellow"><asp:Label ID="unidad" runat="server" Text="" ForeColor="Black"></asp:Label>
                         </font></font><br />
                         <br /><font color="yellow">
                         <asp:DropDownList ID="Modelos" runat="server" CssClass="offset-sm-0" ForeColor="Black"  Height="27px" Width="249px" AutoPostBack="True" OnSelectedIndexChanged="Modelos_SelectedIndexChanged">
                         </asp:DropDownList>
                         </font>&nbsp;
                   </div>
                     

                     <div>
                         <br /><font color="black"> Procesos:&nbsp;&nbsp;&nbsp;&nbsp;</font><br />
                         <asp:RadioButtonList ID="Processos" runat="server"  Height="27px" Width="249px" AutoPostBack="True">
                         </asp:RadioButtonList>
                    </div>


                     <div>
                         <br /> <br /><font color="black">Cantidad :&nbsp;&nbsp;&nbsp;&nbsp;<br />
                         <br />
                         </font>
                         <asp:TextBox ID="Cantidad_text" runat="server"  Height="27px" Width="249px" ForeColor="Black"></asp:TextBox>
                         <br />
                         <br />
                    </div>

                     <div>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="asignar" runat="server" Text="Button" ForeColor="Black" Width="109px" />
                         <br />
                    </div>

                     <div>

                     </div>

              <!----------------------------------------------------------------------------->
                 </div>
                 <div role="tabpanel" class="tab-pane" id="profile">
                            <!-- A QUI IRA LO DEl CHECADOR DE LAS TARERAS-->
                 </div>
              </div>
         </div>
     </section>
<!--__________________________________________________Footer_________________________________________________-->
   <footer id="main-footer">
        <p><font color="yellow">&copy;Guantes Industriales Wario</font></p>
    </footer> 
<!--_____________________________________________________________________________________________ ____________-->
        
	   <script src="CSS/js/jquery.js"></script>
		<script src="CSS/js/xxa.js"></script>
		<script src="CSS/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
	</form>
	</body>
</html>
