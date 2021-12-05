<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReponerInsumos.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.ReponerInsumos" %>

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
             <li><a href="SolicitarInsumos.aspx">Solicitar Insumos</a></li>
            <li><a href="ReponerInsumos.aspx">Reponer Insumos</a></li>
            <li><a href="Login.aspx">Cerrar sesion</a></li>
			
		</ul>
    <section class="form_wrap">
           <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-user-circle"></span>
                <h2>Reponer<br>Insumos</h2>
            </section>
            <section class="info_items">
                
            </section>
        </section>
    <form runat="server" class="form_contact">
     
            <h2>Completa los datos</h2>
            <div class="user_info">
               
                 <asp:TextBox runat="server" type="text" id="txtidproducto" Enabled="false" Visible="false"/>

                <label >Nombre producto</label>
                 <asp:TextBox runat="server" type="text" id="txtnombrep" Enabled="false"/>

                <label >Stock</label>
                 <asp:TextBox runat="server" type="text" id="txtcantidad" Enabled="true"/>

         
                

                               
                <asp:Button runat="server" type="button" text="Reponer insumo" id="btnreponer"  CssClass="BtnGuardar" OnClick="btnreponer_Click"    />

                 <asp:GridView ID="gvinsumos" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="104%" OnSelectedIndexChanged="gvinsumos_SelectedIndexChanged">
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

                        <asp:BoundField HeaderText="ID  " DataField="ID_RECETA"/>    
                        <asp:BoundField HeaderText="Producto  " DataField="NOMBRE_RECETA"/>                       
                        <asp:BoundField HeaderText="Stock  " DataField="CANTIDAD"/>

                     



                    </Columns>
                </asp:GridView>

        </div>
    </form>
  </section>
</body>
</html>
