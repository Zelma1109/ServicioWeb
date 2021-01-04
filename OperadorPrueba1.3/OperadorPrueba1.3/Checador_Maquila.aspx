<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checador_Maquila.aspx.cs" Inherits="OperadorPrueba1._3.ejercicio" %>
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
  height: 250px;
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
  height: 250px;
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
<!--____________________________________________________ Header_________________________________________________-->
    <header id="main-headerXD" class="auto-style1">
        <a id="logo-header" href="#" class="auto-style8"><h1 class ="site-name"><font color="yellow" size="6" text-align="center">Wario&nbsp;&nbsp;&nbsp;</font></h1></a>
         &nbsp;&nbsp;&nbsp;&nbsp;
        <nav>
            <ul><font color="yellow">
                <a id="logo-header" href="#" class="auto-style8">
                    <h1 class ="site-name">
                            <asp:Button ID="salir" runat="server" Text="Cerrar Sesion" BackColor="#24292E" BorderColor="#24292E" ForeColor="Yellow"  Width="129px" BorderStyle="None" ></asp:Button>
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
                                              <div>  
                                               <!--<div class="container">-->
                                                <div class="row">
                                                  <div class="col-md-12">
                                                     <div style="width:100%; height:100%; overflow:auto;">
                                                       <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        TAREAS POR COMPLETAR</b><br />
                                                          
                                                    <asp:GridView ID="gvEmpInfo" AutoGenerateColumns="False" CellPadding="4" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" SelectedRowStyle-HorizontalAlign="Justify" HorizontalAlign="Center" >  
                                                            <Columns>  
                                                                <asp:TemplateField>  
                                                                    <ItemTemplate>  
                                                                        <asp:CheckBox ID="chkbox" runat="server" AutoPostBack="true" OnCheckedChanged="ChckedChanged" />  
                                                                    </ItemTemplate>  
                                                                </asp:TemplateField > 
                                                                
                                                                    <asp:BoundField HeaderText="ID" DataField="Idtarea" />  
                                                                    <asp:BoundField HeaderText="AIGNACION " DataField="fechaAsignacion" />  
                                                                    <asp:BoundField HeaderText="POR:" DataField="Asignador" />  
                                                                    <asp:BoundField HeaderText="PARA:" DataField="emplinea" /> 
                                                                    <asp:BoundField HeaderText="PRODUCTO  " DataField="producto" />  
                                                                    <asp:BoundField HeaderText="MODELO  " DataField="modelo" />  
                                                                    <asp:BoundField HeaderText="UNIDAD  " DataField="unidad" />  
                                                                    <asp:BoundField HeaderText="PROCESOS  " DataField="procesos" /> 
                                                                    <asp:BoundField HeaderText="CANTIDAD" DataField="cantidad" />                    
                                                            </Columns>  

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
                                                     <br /> 
                                             </div>
                                           </div>
                                        </div>
                                      </div>
                                    </div>
                                 </div>

 <!--_______________________________________________________________________________________________________-->

                        <div id="results" class="auto-style7">
                        <br />
                             <div>  
                               <!-- <div class="container">-->
                                     <div class="row">
                                          <div class="col-md-12">
                                                     <b >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TAREAS COMPLETADAS</b> <br />
                                                    
                                <asp:GridView ID="gvMovedRows" AutoGenerateColumns="False" CellPadding="4" runat="server" ForeColor="#333333"  BackColor="White" HorizontalAlign="Center">  
                                        <AlternatingRowStyle BackColor="White" BorderColor="black" ForeColor="#284775" HorizontalAlign="Center" BorderStyle="None" BorderWidth="1px"/>  
                                    <Columns>  
                                            <asp:BoundField HeaderText="ID" DataField="Idtarea" />  
                                            <asp:BoundField HeaderText="ASIGNACION" DataField="fechaAsignacion" />  
                                            <asp:BoundField HeaderText="POR:" DataField="Asignador" />  
                                            <asp:BoundField HeaderText="PARA:" DataField="emplinea" /> 
                                            <asp:BoundField HeaderText="PRODUCTO" DataField="producto" />  
                                            <asp:BoundField HeaderText="MODELO" DataField="modelo" />  
                                            <asp:BoundField HeaderText="UNIDAD" DataField="unidad" />  
                                            <asp:BoundField HeaderText="PROCESOS" DataField="procesos" /> 
                                            <asp:BoundField HeaderText="CANTIDAD" DataField="cantidad" /> 
                                    </Columns>  
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
