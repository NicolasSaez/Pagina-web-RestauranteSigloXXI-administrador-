using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;


namespace PaginaPortafolioWeb.Recursos.ASPX
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                CargarGrillaCliente();


            }


        }

        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 123 ; USER ID = nicolas");


        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                OracleCommand comando = new OracleCommand("SP_insertar_cliente", conexion);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add("NomCliente", OracleDbType.Varchar2).Value = txtnombrecliente.Text;
                comando.Parameters.Add("ApeCliente", OracleDbType.Varchar2).Value = txtApellidoCliente.Text;
                comando.Parameters.Add("CorreoCliente", OracleDbType.Varchar2).Value = txtCorreoCliente.Text;
                comando.Parameters.Add("Direcc", OracleDbType.Varchar2).Value = txtDireccion.Text;
                comando.Parameters.Add("RutCliente", OracleDbType.Varchar2).Value = txtRutCliente.Text;
                comando.Parameters.Add("Fon", OracleDbType.Int64).Value = txtTelefono.Text;
                comando.ExecuteNonQuery();
                Response.Write("Se inserto exitosamente");
                conexion.Close();



            }
            catch (OracleException ex)
            {
                Response.Write("No se ha podido insertar el cliente" + ex.Message);
            }
            conexion.Close();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_eliminar_cliente", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("ID_CLIENT", OracleDbType.Int16).Value = txtidcliente.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se ha borrado el cliente");
            conexion.Close();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_actualizar_cliente", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("ID_CLIENTT", OracleDbType.Int16).Value = txtidcliente.Text;
            comando.Parameters.Add("nom_client", OracleDbType.Varchar2).Value = txtnombrecliente.Text;
            comando.Parameters.Add("ape_client", OracleDbType.Varchar2).Value = txtApellidoCliente.Text;
            comando.Parameters.Add("MailClient", OracleDbType.Varchar2).Value = txtCorreoCliente.Text;
            comando.Parameters.Add("DirecClient", OracleDbType.Varchar2).Value = txtDireccion.Text;
            comando.Parameters.Add("RutClient", OracleDbType.Varchar2).Value = txtRutCliente.Text;
            comando.Parameters.Add("FonClient", OracleDbType.Int64).Value = txtTelefono.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se actualizo con exito");
            conexion.Close();
        }
     
        private void CargarGrillaCliente()
        {
            string qry = "select * from CLIENTE";
            OracleDataAdapter da = new OracleDataAdapter(qry, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);

            gvclientes.DataSource = ds;
            gvclientes.DataBind();


        }

        protected void gvclientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtidcliente.Text = gvclientes.SelectedRow.Cells[1].Text;
            txtnombrecliente.Text = gvclientes.SelectedRow.Cells[2].Text;
            txtApellidoCliente.Text = gvclientes.SelectedRow.Cells[3].Text;
            txtCorreoCliente.Text = gvclientes.SelectedRow.Cells[4].Text;
            txtDireccion.Text = gvclientes.SelectedRow.Cells[5].Text;
            txtRutCliente.Text = gvclientes.SelectedRow.Cells[6].Text;
            txtTelefono.Text = gvclientes.SelectedRow.Cells[7].Text;

            txtidcliente.Enabled = true;
            txtnombrecliente.Enabled = true;
            txtApellidoCliente.Enabled = false;
            txtCorreoCliente.Enabled = true;
            txtDireccion.Enabled = true;
            txtRutCliente.Enabled = false;
            txtTelefono.Enabled = false;

        }
    }


}