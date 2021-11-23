<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdmin.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/StyleMenu.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form  runat="server">
        <ul class="menu">
       <li><a href="MenuAdmin.aspx">Inicio</a></li>
			<li><a href="MantenedorProducto.aspx">Mantenedor Producto</a></li>
			<li><a href="MantenedorCliente.aspx">Mantenedor Cliente</a></li>
			<li><a href="MantenedorMesa.aspx">Mantenedor Mesa</a></li>
            <li><a href="IngresarRecetas.aspx">Ingresar Receta</a></li>
            <li><a href="SolicitarInsumos.aspx">Solicitar Insumos</a></li>
            <li><a href="AsignarMesa.aspx">Asignar Mesa</a></li>
            <li><a href="ReponerInsumos.aspx">Reponer Insumos</a></li>
			
		</ul>
        <div>
        </div>
    </form>
</body>
</html>
