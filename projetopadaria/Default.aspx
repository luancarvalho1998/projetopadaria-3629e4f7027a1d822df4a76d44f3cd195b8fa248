<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projetopadaria.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="Estilo.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="css1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <h1>PADARIA SABOR REAL&nbsp;</h1>
             
            <h2>CATANDUVA -SP</h2>

            <h3>Faça seu Login.</h3><br>
           
            

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="54px" />
        &nbsp;<asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>

        <asp:TextBox ID="txtUsuario" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" EnableTheming="True" ErrorMessage="Usuario Obrigatorio." ForeColor="Red">*</asp:RequiredFieldValidator>
        <br>
        <br>
        &nbsp; &nbsp;<asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label>
        <asp:TextBox ID="txtSenha" runat="server" style="margin-bottom: 0px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha" ErrorMessage="Senha Obrigatoria." ForeColor="Red">*</asp:RequiredFieldValidator>
        <br>
            
        <div>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEntrar" runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
        </div>
            <br>
            <li><a href="cadastro.aspx">Cadastro</a></li>&nbsp;&nbsp;
            <br>
            <li><a href="pedidos.aspx">Pedidos</a></li>&nbsp;&nbsp;
            <br>
            <li><a href="faleconosco.aspx">Fale Conosco</a></li>&nbsp;&nbsp;
            <br>
            <li><a href="localizacao.aspx">Localização</a></li>&nbsp;&nbsp;<br>
    </form>
</body>
</html>
