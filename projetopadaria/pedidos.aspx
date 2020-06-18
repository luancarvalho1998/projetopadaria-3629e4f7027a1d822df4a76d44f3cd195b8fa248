<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pedidos.aspx.cs" Inherits="projetopadaria.pedidos1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pedidos</title>
    <link href="css1.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <div class="quadro">
            <div>
                &nbsp;<h2>Faça sua Encomenda</h2>

            </div>
            <div>
               <asp:Label ID="lblUsuarioLogado" runat="server" Font-Underline="True" ForeColor="Black" Text="Label" BackColor="White" BorderColor="Black"></asp:Label>
            </div>
            <div>
                <asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Sair</asp:LinkButton>
            </div>
            <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
            <asp:Image ID="Image1" runat="server" Height="402px" ImageUrl="~/cardapio.JPG" Width="366px" />
            </div>
            <div>
            <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
            <asp:DropDownList ID="ddlUsuario" runat="server">
            </asp:DropDownList>
            </div>
            <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEncomenda" ErrorMessage="Encomenda Obrigatoria" ForeColor="#CC0000" ValidationGroup="form">*</asp:RequiredFieldValidator>
             <h4>Digite a Encomenda que Deseja Encomendar</h4>
             <asp:TextBox ID="txtEncomenda" runat="server" Width="198px"></asp:TextBox>
            </div>
            <div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Quantidade Obrigatorio" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
             <h4> Digite a quantidade Desejada</h4>
             <asp:TextBox ID="txtQuantidade" runat="server" Width="61px"></asp:TextBox>
            </div>
            <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtData" ErrorMessage="Data Obrigatoria" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>        
            <h4>Digite a Data que deseja Retirar</h4>
            <asp:TextBox ID="txtData" runat="server" Width="193px" TextMode="Date"></asp:TextBox>
            </div>
            <div>
            <h4> Deseja fazer alguma alteração no Pedido</h4> 
            <asp:TextBox ID="txtAlteracao" runat="server" Width="194px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
           <div>
            <asp:Button ID="btnEncomendar" runat="server" Text="Encomendar/Salvar" OnClick="btnEncomendar_Click" ValidationGroup="form" />
            &nbsp;&nbsp;
            <asp:Button ID="btnAlterar" runat="server" Text="Alterar" Width="125px" OnClick="btnAlterar_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="btnRemover" runat="server" OnClick="btnRemover_Click" Text="Remover" />
            &nbsp;&nbsp;
            <asp:Button ID="btnLimpar" runat="server" BorderColor="#CCCCCC" ForeColor="Black" OnClick="btnLimpar_Click" Text="Limpar" Width="158px" />
           </div>
            <div>
                <h4>Buscar por Encomenda</h4>
                <asp:TextBox ID="txtBuscar" runat="server" Width="225px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </div>
           <div>
                   <asp:GridView ID="gridPedidos" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="438px" AutoGenerateColumns="False" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="cadastros.nome" HeaderText="Nome" />
                <asp:BoundField DataField="encomenda" HeaderText="Encomenda" />
                <asp:BoundField DataField="data" HeaderText="Data" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="alteracao" HeaderText="Alterações" />
                <asp:BoundField DataField="quantidade" HeaderText="Quantidade" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
               <div>
               </div>
           </div>
      </div>
    </form>
</body>
</html>
