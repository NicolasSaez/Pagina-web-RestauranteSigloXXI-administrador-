<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PaginaPortafolioWeb.ASPX.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
    <title>Login</title>
    <link href="../CSS/Estilos.css" rel="stylesheet" />
</head>
<body  >
    <div >
        <div class="loginbox">
            
            <img src="../IMG/user-6.png" alt="Alternate Text" class="user"/>
            <h2>Iniciar Sesion</h2>
             <form runat="server">
                   <asp:Label ID="lblusuario"  runat ="server" Text="Usuario" CssClass="lblusuario"></asp:Label>
                   <asp:TextBox ID="tbusuario"  runat="server" placeholder="Nombre de usuario" CssClass="tbusuario" required=""></asp:TextBox>
                   <asp:Label ID="lblcontraseña" runat="server" Text="Contraseña" CssClass="lblcontraseña"></asp:Label>
                   <asp:TextBox ID="tbcontraseña" runat="server" placeholder="Contraseña" CssClass="tbcontraseña" TextMode="Password" required=""></asp:TextBox>
                   <br />
                    <a href="index.aspx">pagina de clientes</a>
                 <br />
                   <asp:Button ID="Btningresar"  runat="server" Text="Ingresar" OnClick="Btningresar_Click"  CssClass="Btningresar"/>  
                 
             </form>
        </div>
    </div>
   
</body>
</html>
