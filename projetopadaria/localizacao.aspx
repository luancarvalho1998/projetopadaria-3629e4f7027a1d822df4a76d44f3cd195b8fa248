<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="localizacao.aspx.cs" Inherits="projetopadaria.localizacao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="estilos4.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Localização</title>
    <style type="text/css">
        .auto-style1 {
            height: 598px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
   
            <h2>
        <asp:Label ID="lbltexto" runat="server" Text="Localização" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </h2><br />
            <br />
            
        <asp:Label ID="lbltexto0" runat="server" Text="Estamos Localizados na Rua Agua Clara n°310" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <br />
        <asp:Label ID="lbltexto1" runat="server" Text="Bairro: Jardim Salles - Catanduva-SP" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <br />
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.9987356822003!2d-48.97245368555318!3d-21.11261658161873!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94bc1e982cbad76b%3A0xc61c8b95dafe3c75!2sR.%20%C3%81gua%20Clara%2C%20Catanduva%20-%20SP!5e0!3m2!1spt-BR!2sbr!4v1590920907978!5m2!1spt-BR!2sbr" frameborder="0" style="border-style: none; border-color: inherit; border-width: 0; height: 403px; width: 679px;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

        <asp:Label ID="lbltexto2" runat="server" Text="Localização no Google Maps para facilitar seu trajeto..." Font-Size="X-Large" ForeColor="White"></asp:Label>

        </div>
    </form>
</body>
</html>
