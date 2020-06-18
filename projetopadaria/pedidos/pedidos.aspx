<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pedidos.aspx.cs" Inherits="projetopadaria.pedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pedidos</title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <h2>Pedidos</h2>
            <p>
                &nbsp;<p>
                <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                <asp:DropDownList ID="ddlUsuario" runat="server">
                </asp:DropDownList>
            <p>
                <asp:Label ID="lblEncomenda" runat="server" Text="Selecione o que Deseja encomendar "></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="txtEncomenda" runat="server" Width="307px"></asp:TextBox>
            </p>
        </div>
        <p aria-atomic="False">
            Informe a Data que você deseja retirar o pedido:</p>
        <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
        <br />
        <br />
        Deseja fazer alguma alteração ou adição no pedido<br />
        <br />
        <asp:TextBox ID="txtAlteracao" runat="server" Width="315px"></asp:TextBox>
 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="btnEncomendar" runat="server" Text="Encomendar" OnClick="btnEncomendar_Click" />
        <asp:GridView ID="GridPedidos" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="330px">
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
 
    </form>
</body>
</html>
