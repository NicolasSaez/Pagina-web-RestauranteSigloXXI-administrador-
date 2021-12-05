<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenedorCliente.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.WebForm2" %>

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
                <h2>Mantenedor<br>de cliente</h2>
            </section>
            <section class="info_items">
                
            </section>
        </section>

        <form runat="server" class="form_contact">
            <h2>Completa los datos</h2>
            <div class="user_info">
                <label >ID CLIENTE</label>
                 <asp:TextBox runat="server" type="text" id="txtidcliente" Enabled="false"/>

                <label >Nombre</label>
                 <asp:TextBox runat="server" type="text" id="txtnombrecliente"/>

                <label >Apellido</label>
                 <asp:TextBox  runat="server" type="text" id="txtApellidoCliente"/>

                <label >Correo</label>
                 <asp:TextBox  runat="server" type="text" id="txtCorreoCliente" />

                <label >Direccion</label>
                 <asp:TextBox runat="server" type="text" id="txtDireccion" />

                <label >Rut</label>
                <asp:TextBox runat="server" type="text" id="txtRutCliente" />

                <label >Telefono</label>
                 <asp:TextBox runat="server" type="text" id="txtTelefono" />

            


                
                <asp:Button runat="server" type="button" text="Guardar" id="btnSave"  CssClass="BtnGuardar" OnClick="btnSave_Click" OnClientClick="return confirm('¿Desea guardarlo?');"/>
                <asp:Button runat="server" type="button" text="Borrar" id="btnDelete" CssClass="BtnBorrar" OnClick="btnDelete_Click" OnClientClick="return confirm('¿Desea eliminarlo?');" />
                <asp:Button runat="server" type="button" text="Actualizar" id="btnUpdate" CssClass="BtnActualizar" OnClick="btnUpdate_Click" OnClientClick="return confirm('¿Desea actualizarlo?');"  />


                <asp:GridView ID="gvclientes" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="104%" OnSelectedIndexChanged="gvclientes_SelectedIndexChanged"  >
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
                <columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField HeaderText="ID CLIENTE  " DataField="ID_CLIENTE"/>
                    <asp:BoundField HeaderText="Nombre  " DataField="NOMBRE_CLIENTE"/>
                    <asp:BoundField HeaderText="Apellido  " DataField="APELLIDO_CLIENTE"/>
                    <asp:BoundField HeaderText="Mail  " DataField="CORREO"/>
                    <asp:BoundField HeaderText="Direccion  " DataField="DIRECCION"/>
                    <asp:BoundField HeaderText="Rut  " DataField="RUT"/>
                    <asp:BoundField HeaderText="Telefono  " DataField="TELEFONO"/>

                </columns>
               </asp:GridView>
              
            </div>
        </form>

    </section>
</body>
</html>
