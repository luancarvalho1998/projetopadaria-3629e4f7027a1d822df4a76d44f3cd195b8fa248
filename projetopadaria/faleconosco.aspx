<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faleconosco.aspx.cs" Inherits="projetopadaria.faleconosco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Estilos3.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fale Conosco</title>
    <style type="text/css">
        .auto-style1 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    
            <h2>
        <asp:Label ID="lbltexto" runat="server" Text="Contatos." Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </h2>
            <br />
        <asp:Label ID="lbltexto5" runat="server" Text="Telefone: (17) 3525-1115 Ligue para agendar Encomendas ou faça Online" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <li><a href="cadastro.aspx">Cadastro</a></li>&nbsp;&nbsp;
            <br />
            <li><a href="pedidos.aspx">Pedidos</a></li><br />
            <br />
                &nbsp;<asp:Label ID="lbltexto1" runat="server" Text="Entre em Contato pelo Whatsapp&nbsp;" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; <br />
            <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl="~/WhatsApp-icone.png" Width="137px" CssClass="auto-style1" />
            <br />
            <br />
        <asp:Label ID="lbltexto2" runat="server" Text="(17) 99604-2951" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                <br />
            <br />
            <br />
            &nbsp;<asp:Label ID="lbltexto3" runat="server" Text="ou Pelo nosso email : " Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
        &nbsp;<a href="mailto:padariasaborreal@gmail.com">padariasaborreal@gmail.com</a><br />
            <br />
            &nbsp;<asp:Label ID="lbltexto4" runat="server" Text="Envie duvidas, sugestões e Receba nossas Ofertas e Novidades." Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
        </div>
    </form>
</body>
</html>
