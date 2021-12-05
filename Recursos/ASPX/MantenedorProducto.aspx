<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenedorProducto.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../CSS/Estilos2.css" />
    <link rel="stylesheet" href="../CSS/font-awesome.css" />
    <link href="../CSS/StyleMenu.css" rel="stylesheet" />


    <script src="../js/jquery-3.2.1.js"></script>
    <script src="../js/script.js"></script>


    <title></title>
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
                <h2>Mantenedor<br>de producto</h2>
            </section>
            <section class="info_items">
                
            </section>
        </section>

        <form runat="server" class="form_contact">
            <h2>Completa los datos</h2>
            <div class="user_info">
                <label >ID_PRODUCTO</label>
                 <asp:TextBox runat="server" type="text" id="txtidproducto" Enabled="false"/>

                <label >Nombre producto</label>
                 <asp:TextBox runat="server" type="text" id="txtnombrep"/>

                <label >Producto ID_RECETA</label>
                 <asp:TextBox  runat="server" type="text" id="txtP_ID_RECETA"/>

                <label >Tipo de producto</label>
                 <asp:TextBox  runat="server" type="text" id="txtTipoProducto" />

                <label >Precio unidad</label>
                 <asp:TextBox runat="server" type="text" id="txtPrecioUnidad" />

                <label >Cantidad</label>
                <asp:TextBox runat="server" type="text" id="txtCantidad" />

                <label >Stock</label>
                 <asp:TextBox runat="server" type="text" id="txtStock" />

                <label >Producto ID_PROVEEDOR</label>
                 <asp:TextBox runat="server" type="text" id="txtP_ID_PROVEEDOR" />


                
                <asp:Button runat="server" type="button" text="Guardar" id="btnSave"  CssClass="BtnGuardar" OnClick="btnSave_Click"  OnClientClick="return confirm('¿Desea guardar este producto?');"/>
                <asp:Button runat="server" type="button" text="Borrar" id="btnDelete" CssClass="BtnBorrar" OnClick="btnDelete_Click" OnClientClick="return confirm('¿Desea eliminar  este producto?');"/>
                <asp:Button runat="server" type="button" text="Actualizar" id="btnUpdate" CssClass="BtnActualizar" OnClick="btnUpdate_Click" OnClientClick="return confirm('¿Desea actualizar este producto?');"/>
                <asp:GridView ID="gvproductos" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="104%" OnSelectedIndexChanged="gvproductos_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                    <Columns>

                        <asp:CommandField ShowSelectButton="True"  />

                        <asp:BoundField HeaderText="Id producto  " DataField="ID_PRODUCTO"/>
                        <asp:BoundField HeaderText="Nombre producto  " DataField="NOMBRE_PRODUCTO"/>
                        <asp:BoundField HeaderText="Producto id receta  " DataField="PRODUCTO_ID_RECETA"/>
                        <asp:BoundField HeaderText="Tipo producto  " DataField="TIPO_PRODUCTO"/>
                        <asp:BoundField HeaderText="Precio unidad  " DataField="PRECIO_UNIDAD"/>
                        <asp:BoundField HeaderText="Cantidad  " DataField="CANTIDAD"/>
                        <asp:BoundField HeaderText="Stock" DataField="STOCK"/>
                        <asp:BoundField HeaderText="Producto id proveedor  " DataField="PRODUCTO_ID_PROOVEDOR"/>



                    </Columns>
                </asp:GridView>
            </div>
        </form>

    </section>
</body>
</html>
