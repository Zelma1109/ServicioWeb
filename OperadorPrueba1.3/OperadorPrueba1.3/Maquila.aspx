<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maquila.aspx.cs" Inherits="OperadorPrueba1._3.Maquila" %>

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
       
#content {
  text-align: left;
  vertical-align: top;
}

#search {
  display: inline-block;
  width: 300px;
  height: 550px;
  margin: 10px auto;
  overflow: hidden;
  -moz-box-shadow: #555 0 0 8px;
  -webkit-box-shadow: #555 0 0 8px;
  -o-box-shadow: #555 0 0 8px;
  box-shadow: #555 0 0 8px;
}

#results {
  display: inline-block;
  width: 730px;
  height: 550px;
  margin: 10px auto;
  overflow: auto;
  -moz-box-shadow: #555 0 0 8px;
  -webkit-box-shadow: #555 0 0 8px;
  -o-box-shadow: #555 0 0 8px;
  box-shadow: #555 0 0 8px;
}

#Historial {
  display: inline-block;
  width: 100%;
  height: 550px;
  margin: 10px auto;
  overflow: hidden;
  -moz-box-shadow: #555 0 0 8px;
  -webkit-box-shadow: #555 0 0 8px;
  -o-box-shadow: #555 0 0 8px;
  box-shadow: #555 0 0 8px;
}
        .auto-style6 {
            width: 354px;
            margin-left: 0px;
        }
        .auto-style7 {         
            width:348px;
        }
        .auto-style8 {
            height: 84px;
        }
    </style>
</head>

<body style="height: 719px">
    <form id="form1" runat="server">
<!--____________________________________________________ Header______________________________________________-->
     <header id="main-headerXD" class="auto-style1">
        <a id="logo-header" href="#" class="auto-style8"><h1 class ="site-name"><font color="yellow" size="6" text-align="center">Wario&nbsp;&nbsp;&nbsp;</font></h1></a>
         &nbsp;&nbsp;&nbsp;&nbsp;
        <nav>
            <ul><font color="yellow">
                <a id="logo-header" href="#" class="auto-style8">
                    <h1 class ="site-name">
                        <asp:Button ID="salir" runat="server" Text="Cerrar sesión" BackColor="#24292E" BorderColor="#24292E" ForeColor="Yellow" OnClick="salir_Click" Width="129px" BorderStyle="None"></asp:Button>
                    </h1>
                </a>
                </font>
          </ul>
        </nav>
    </header>
        <div></div>
<!--__________________________________________________developing_____________________________________________-->
    <div>
        <section>
            <div class="content">

              <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><font color="black">TAREAS </font></a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><font color="black">HISTORIAL TALLER</font></a></li>             
              </ul>
            
            <!-- Tab panes -->
           <div class="tab-content">
 <!-------------------------------------------------------------------------------------------------------------------------------->
                    <!-- A QUI IRA LO DE LA ASIGNACION DE LAS TARERAS-->
                    <div role="tabpanel" class="tab-pane active" id="home"><br />
                    <!--_________________________________________________________________________________________________________-->
                           <div id="content">
 <!--___________________________________________________________________________________________________________________________________________-->
                                <div id="search" class="auto-style6">

                                    <!-- ......................................................................................... -->
                                                <div>
                                                    <br /><font color="black">&nbsp;&nbsp;&nbsp;&nbsp;Maquila :</font><br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="line" runat="server" AutoPostBack="True" ForeColor="Black" Height="27px" Width="249px" TabIndex="1" OnSelectedIndexChanged="line_SelectedIndexChanged"></asp:DropDownList>
                                                </div>
                                    <!-- ......................... -->
                                                <div>
                                                     <br /><font color="black">&nbsp;&nbsp;&nbsp;&nbsp;Producto :</font><br />
                                                     &nbsp;&nbsp;&nbsp;
                                                     <asp:DropDownList ID="Producto" runat="server" AutoPostBack="True" ForeColor="Black" Height="27px" Width="249px" TabIndex="2" OnSelectedIndexChanged="Producto_SelectedIndexChanged"></asp:DropDownList>
                                                </div>
                                    <!-- ......................... -->
                                                <div>
                                                     <br /><font color="black">&nbsp;&nbsp;&nbsp;&nbsp;Modelo : </font><br />
                                                     &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="Modelos" runat="server" CssClass="offset-sm-0" ForeColor="Black"  Height="24px" Width="162px" AutoPostBack="True" TabIndex="3" OnSelectedIndexChanged="Modelos_SelectedIndexChanged1"></asp:DropDownList>
                                                     &nbsp;
                                                     <asp:TextBox ID="unidad" runat="server" AutoPostBack="True" ForeColor="Black"  Width="80px" OnTextChanged="unidad_TextChanged"></asp:TextBox>
                                                </div>
                                    <!-- ......................... -->
                                                <div>
                                                     <br /><font color="black">&nbsp;&nbsp;&nbsp;&nbsp;Procesos:</font><br />
                                                     &nbsp;&nbsp;&nbsp;<asp:CheckBoxList ID="Processos" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" RepeatLayout="Flow" ForeColor="Black" CssClass="DefaultCheckBoxList" TabIndex="4" Width="247px"></asp:CheckBoxList>
                                                     <br />
                                                </div>
                                    <!-- ......................... -->
                                                 <div>
                                                     <br /><font color="black">&nbsp;&nbsp;&nbsp;&nbsp;Cantidad :</font><br />
                                                     &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_c" runat="server" Type="number" min="1" MaxLength="1000"  TabIndex="5" Height="26px" Width="243px" ForeColor="Black"></asp:TextBox>
                                                </div>
                                    <!-- ......................... -->
                                    
                                                <div><br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="Asignar" runat="server" Text="Asignar" ForeColor="Black" Width="90px" TabIndex="6" OnClick="Asignar_Click1" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="Cancelar" runat="server" Text="Cancelar" ForeColor="Black" Width="90px" TabIndex="7" OnClick="Cancelar_Click"/>
                                                </div>
                                    <!-- ......................................................................................... -->
                                </div>
 <!--____________________________________________________________________________________________________________________________________________-->

                                <div id="results" class="auto-style7">
                                    <br />
                                    <!-- ......................................................................................... -->       
                                             <div class="container">
                                                <div class="row">
                                                  <div class="col-md-12">
                                                     <div style="width:100%; height:100%; overflow:auto;">
                                                             <asp:GridView ID="Historial_D_usuario" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Height="25px" Width="1000px" OnSelectedIndexChanged="Historial_D_usuario_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
                                                                 <FooterStyle BackColor="#CCCCCC" />
                                                                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                 <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                 <RowStyle BackColor="White" />
                                                                 <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                 <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                 <SortedDescendingHeaderStyle BackColor="#383838" />
                                                       </asp:GridView>
                                                    </div>
                                                 </div>
                                               </div>
                                             </div>
                                    <!-- ......................................................................................... -->                        
                                </div>
 <!--____________________________________________________________________________________________________________________________________________-->
                          </div>
                    <!--_________________________________________________________________________________________________________-->
                    </div>
                     
 <!-------------------------------------------------------------------------------------------------------------------------------->
                     <!-- A QUI IRA LO DEl HISTORIAL TOTAL DE LAS TARERAS-->
                     <div role="tabpanel" class="tab-pane" id="profile"><br /><br />
                    <!--_________________________________________________________________________________________________________-->
                        <div id="content">
                                <div id="Historial" class="auto-style6">
                                    <br />
                                     <div class="container">
                                                <div class="row">
                                                  <div class="col-md-12">
                                                     <div style="width:100%; height:100%; overflow:auto;">
                                                             <asp:GridView ID="Historial_Total" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="25px" Width="1000px">
                                                                 <FooterStyle BackColor="#CCCCCC" />
                                                                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                 <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                 <RowStyle BackColor="White" />
                                                                 <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                 <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                 <SortedDescendingHeaderStyle BackColor="#383838" />
                                                             </asp:GridView>
                                                      </div>
                                                   </div>
                                               </div>
                                      </div>
                                </div>
                        </div>
                    <!--_________________________________________________________________________________________________________-->
                     </div>                   
<!---------------------------------------------------------------------------------------------------------------------------------->
               <br />
           </div>      
      </section>
</div>
<!--__________________________________________________Footer_________________________________________________-->
   <footer id="main-footer">
        <p><font color="yellow">&copy;Guantes Industriales Wario
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          
            <asp:Label ID="lbl_Usuario" runat="server" Font-Size="X-Small" ></asp:Label></font></p>           
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

