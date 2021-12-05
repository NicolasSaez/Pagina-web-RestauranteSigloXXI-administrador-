<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResumenDatos.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.ResumenDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    
    <link rel="stylesheet" href="../CSS/Estilos2.css" />
    <link rel="stylesheet" href="../CSS/font-awesome.css" />
    <link href="../CSS/StyleMenu.css" rel="stylesheet" />


    <script src="../js/jquery-3.2.1.js"></script>
    <script src="../js/script.js"></script>
    <title>Resumen de datos</title>
</head>
<body>
    <ul class="menu">

            <li><a href="ResumenDatos.aspx">Resumen de datos</a></li>
        <li><a href="Login.aspx">Cerrar sesion</a></li>
			
		</ul>

     <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-user-circle"></span>
                <h2>Resumen de<br>Datos</h2>
            </section>
            <section class="info_items">
                
            </section>
        </section>

         <form runat="server" class="form_contact">
            <h2>Completa los datos</h2>
            <div class="user_info">
                
                <asp:Label ID="Label1" runat="server" Text="Ingrese el valor a buscar"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Ganancia total"></asp:Label>
                <asp:TextBox ID="totaltxt" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="buscar" OnClick="Button1_Click" />
                <asp:Button ID="btnexcel" runat="server" Text="Exportar a excel" OnClick="btnexcel_Click" />
                
                

               
                 </div>

             <asp:GridView id="gvfacturas" runat="server" OnRowDataBound="gvfacturas_RowDataBound"> </asp:GridView>
                </form>


          </section>

</body>
</html>
