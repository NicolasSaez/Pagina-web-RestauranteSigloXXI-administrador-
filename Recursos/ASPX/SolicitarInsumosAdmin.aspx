<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitarInsumosAdmin.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.SolicitarInsumosAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link rel="stylesheet" href="../CSS/Estilos2.css" />
    <link rel="stylesheet" href="../CSS/font-awesome.css" />
    <link href="../CSS/StyleMenu.css" rel="stylesheet" />


    <script src="../js/jquery-3.2.1.js"></script>
    <script src="../js/script.js"></script>
    <title>Solicitar Insumos</title>
</head>
<body>

   <ul class="menu">
       <li><a href="MenuAdmin.aspx">Inicio</a></li>
			<li><a href="MantenedorProducto.aspx">Mantenedor Producto</a></li>
			<li><a href="MantenedorCliente.aspx">Mantenedor Cliente</a></li>
			<li><a href="MantenedorMesa.aspx">Mantenedor Mesa</a></li>
            <li><a href="RegistrarUsuarios.aspx">Registrar Usuarios</a></li>
            <li><a href="SolicitarInsumosAdmin.aspx">Solicitar Insumos</a></li>
            <li><a href="ReponerInsumosAdmin.aspx">Reponer Insumos</a></li>
            <li><a href="ResumenDatosAdmin.aspx">Resumen Datos</a></li>
            <li><a href="IngresarRecetasAdmin.aspx">Ingresar Recetas</a></li>
             <li><a href="AsignarMesaAdmin.aspx">Asignar Mesa</a></li>

           <li><a href="Login.aspx">Cerrar sesion</a></li>
			
		</ul>

	 <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-user-circle"></span>
                <h2>Solicitar <br>Insumos</h2>
            </section>
            <section class="info_items">
                
            </section>
        </section>

    <form runat="server" class="form_contact">
     
             <h2>Completa los datos</h2>
            <div class="user_info">
                

                <label >Descripcion</label>
                 <asp:TextBox runat="server" type="text" id="txtdescripcion"/>

                

                               
                <asp:Button runat="server" type="button" text="Solicitar insumos" id="btnenviar"  CssClass="BtnGuardar" OnClick="btnenviar_Click"  OnClientClick="return confirm('¿Desea realizar esta accion?');"  />

        </div>
    </form>
</section>
</body>
</html>
