<%@ Page Language="C#"  Debug="true" AutoEventWireup="true" CodeBehind="MantenedorMesa.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.MantenedorMesa"  %>

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
                <h2>Mantenedor<br>de mesa</h2>
            </section>
            <section class="info_items">
                
            </section>
        </section>

        <form runat="server" class="form_contact">
            <h2>Completa los datos</h2>
            <div class="user_info">
                <label >Numero Mesa</label>
                 <asp:TextBox runat="server" type="text" id="txtNumeroMesa" Enabled="false"/>

                <label >Tamaño Mesa</label>
                 <asp:DropDownList ID="cmbMesas" runat="server" AppendDataBoundItems="true">
                     <asp:ListItem Value="0">Seleccione una mesa</asp:ListItem>
                     <asp:ListItem value="chica (2 personas)"></asp:ListItem>
                     <asp:ListItem value="mediana(4-6 personas)"></asp:ListItem>
                     <asp:ListItem value="grande (8-10 personas)"></asp:ListItem>

                 </asp:DropDownList>

                <label >Disponibilidad</label>
                 <asp:TextBox  runat="server" type="text" id="txtdisponibilidad"/>

               



                 
                <asp:Button runat="server" type="button" text="Guardar" id="btnSave"  CssClass="BtnGuardar" OnClick="btnSave_Click"  OnClientClick="return confirm('¿Desea guardar esta mesa?');"/>
                <asp:Button runat="server" type="button" text="Borrar" id="btnDelete" CssClass="BtnBorrar" OnClick="btnDelete_Click" OnClientClick="return confirm('¿Desea eliminar la mesa?');"/>
                <asp:Button runat="server" type="button" text="Actualizar" id="btnUpdate" CssClass="BtnActualizar" OnClick="btnUpdate_Click" OnClientClick="return confirm('¿Desea actualizar la mesa?');"  />
                <asp:GridView ID="gvmesa" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="gvmesa_SelectedIndexChanged"  >
                    <Columns>
                        <asp:CommandField  ShowSelectButton="True" />
                      
                        
                      
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                

                 
            </div>
              
        </form>

    
     </section>
</body>
</html>
