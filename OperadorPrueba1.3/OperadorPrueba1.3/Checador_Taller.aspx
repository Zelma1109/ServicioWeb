<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checador_Taller.aspx.cs" Inherits="OperadorPrueba1._3.Checador" %>
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
        H3{text-align: center}
        .auto-style2 {
            width: 116px;
        }
        .auto-style3 {
            width: 138px;
        }
        .auto-style4 {
            width: 212px;
        }

        #content {
  text-align: left;
  vertical-align: top;
}

#search {
  display: inline-block;
  width: 100%;
  height: 300px;
  margin: 10px auto;
  overflow: auto;
  -moz-box-shadow: #555 0 0 8px;
  -webkit-box-shadow: #555 0 0 8px;
  -o-box-shadow: #555 0 0 8px;
  box-shadow: #555 0 0 8px;
}

#results {
  display: inline-block;
  width: 100%;
  height: 300px;
  margin: 10px auto;
  overflow: auto;
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
                        <asp:Button ID="salir" runat="server" Text="Cerrar sesión" BackColor="#24292E" BorderColor="#24292E" ForeColor="Yellow"  Width="129px" BorderStyle="None" OnClick="salir_Click1"></asp:Button>
                    </h1>
                </a>
                </font>
          </ul>
        </nav>
    </header>
<!--____________________________________________________ Developer______________________________________________-->
         <div>
        <section>
                     <div id="content">
 <!--___________________________________________________________________________________________________________-->
                                <div id="search" class="auto-style6">
                                    <br />
                   <!--........................................................................................ -->       
                                             <div class="container">
                                                <div class="row">
                                                  <div class="col-md-12">
                                                     <div style="width:100%; height:100%; overflow:auto;">
                                                             <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="25px" Width="1000px">
                                                                 <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                                                 <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                                                 <RowStyle BackColor="White" ForeColor="#330099" />
                                                                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                                                 <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                                                 <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                                                 <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                                                 <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                                       </asp:GridView>
                                                    </div>
                                                 </div>
                                               </div>
                                             </div>
                <!-- ......................................................................................... -->                        
                                </div>
 <!--__________________________________________________________________________________________________________-->

                                <div id="results" class="auto-style7">
                                    <br />
                 <!-- ......................................................................................... -->       
                                             <div class="container">
                                                <div class="row">
                                                  <div class="col-md-12">
                                                     <div style="width:100%; height:100%; overflow:auto;">
                                                             <asp:GridView ID="Historial_D_usuario" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="25px" Width="1000px">
                                                                 <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                                                 <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                                                 <RowStyle BackColor="White" ForeColor="#330099" />
                                                                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                                                 <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                                                 <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                                                 <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                                                 <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                                       </asp:GridView>
                                                    </div>
                                                 </div>
                                               </div>
                                             </div>
                  <!-- ......................................................................................... -->                        
                                </div>
 <!--____________________________________________________________________________________________________________-->
                          </div>
 <!--_____________________________________________________________________________________________________________-->
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
