<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuarios.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.RegistrarUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>



       <link rel="stylesheet" href="../CSS/Estilos2.css" />
    <link rel="stylesheet" href="../CSS/font-awesome.css" />
    <link href="../CSS/StyleMenu.css" rel="stylesheet" />


    <script src="../js/jquery-3.2.1.js"></script>
    <script src="../js/script.js"></script>
    <title>Registrar usuarios</title>
</head>
<body>
    
        <ul class="menu">
       <li><a href="MenuAdmin.aspx">Inicio</a></li>
			<li><a href="MantenedorProducto.aspx">Mantenedor Producto</a></li>
			<li><a href="MantenedorCliente.aspx">Mantenedor Cliente</a></li>
			<li><a href="MantenedorMesa.aspx">Mantenedor Mesa</a></li>
            <li><a href="RegistrarUsuarios.aspx">Registrar Usuarios</a></li>
           <li><a href="Login.aspx">Cerrar sesion</a></li>
			
		</ul>


     <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-user-circle"></span>
                <h2>Registrar<br>Usuario</h2>
            </section>
            <section class="info_items">
                
            </section>
        </section>
        <form runat="server" class="form_contact">

          <h2>Completa los datos</h2>
            <div class="user_info">
                <label >Ingrese el usuario</label>
                 <asp:TextBox runat="server" type="text" id="txtusuario" />

                <label >Contraseña</label>
                <asp:TextBox ID="txtcontraseña" runat="server" > </asp:TextBox>

                <label >Asigne el rol</label>
                <asp:DropDownList ID="cmbroles" runat="server" AppendDataBoundItems="true">
                     <asp:ListItem Value="0">Seleccione el rol</asp:ListItem>
                     <asp:ListItem value="ADMIN"></asp:ListItem>
                     <asp:ListItem value="FINANZAS"></asp:ListItem>
                     <asp:ListItem value="BODEGUERO"></asp:ListItem>
                    <asp:ListItem value="COCINERO"></asp:ListItem>
                    <asp:ListItem value="RECEPCION"></asp:ListItem>

                 </asp:DropDownList>

                
          
                               
                <asp:Button runat="server" type="button" text="Registrar usuario" id="btnAsignar"  CssClass="BtnGuardar" OnClick="btnAsignar_Click"  />
        
        </div>
    </form>
         </section>
</body>
</html>
