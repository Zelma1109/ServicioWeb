<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio.aspx.cs" Inherits="OperadorPrueba1._3.ejercicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

<form id="form1" runat="server">  
        <div>  
                <asp:GridView ID="gvEmpInfo" AutoGenerateColumns="False" CellPadding="4" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">  
                <Columns>  
                <asp:TemplateField>  
                <ItemTemplate>  
                <asp:CheckBox ID="chkbox" runat="server" AutoPostBack="true" OnCheckedChanged="ChckedChanged" />  
                </ItemTemplate>  
                </asp:TemplateField>  
                        <asp:BoundField HeaderText="ID" DataField="Idtarea" />  
                        <asp:BoundField HeaderText="AIGNACION" DataField="fechaAsignacion" />  
                        <asp:BoundField HeaderText="POR:" DataField="Asignador" />  
                        <asp:BoundField HeaderText="PARA:" DataField="emplinea" /> 
                        <asp:BoundField HeaderText="PRODUCTO" DataField="producto" />  
                        <asp:BoundField HeaderText="MODELO" DataField="modelo" />  
                        <asp:BoundField HeaderText="UNIDAD" DataField="unidad" />  
                        <asp:BoundField HeaderText="PROCESOS" DataField="procesos" /> 
                        <asp:BoundField HeaderText="CANTIDAD" DataField="cantidad" />
                    
                </Columns>  
                       <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />  
                <HeaderStyle BackColor="#003399" Font-Bold="true" ForeColor="#CCCCFF" />  
                       <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />  
                       <RowStyle BackColor="White" ForeColor="#003399" />  
                       <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />  
                       <SortedAscendingCellStyle BackColor="#EDF6F6" />  
                       <SortedAscendingHeaderStyle BackColor="#0D4AC4" />  
                       <SortedDescendingCellStyle BackColor="#D6DFDF" />  
                       <SortedDescendingHeaderStyle BackColor="#002876" />  
                </asp:GridView>  
                <br />  
                <b >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp; TAREAS COMPLETADAS</b>  
                <asp:GridView ID="gvMovedRows" AutoGenerateColumns="False" CellPadding="4" runat="server" ForeColor="#333333" GridLines="None">  
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />  
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
                    <EditRowStyle BackColor="#999999" />  
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />  
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="true" ForeColor="White" />  
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />  
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />  
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />  
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />  
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />  
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />  
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />  
                </asp:GridView>  
          </div>  
  </form>  
</body>
</html>
