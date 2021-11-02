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
    public partial class MantenedorMesa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrilla();
            }

        }
        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 123 ; USER ID = nicolas");
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                OracleCommand comando = new OracleCommand("SP_insertar_mesa", conexion);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add("TamMesa", OracleDbType.Varchar2).Value = txttamaño.Text;
                comando.Parameters.Add("Disp", OracleDbType.Int16).Value = txtdisponibilidad.Text;
                comando.ExecuteNonQuery();
                Response.Write("Se inserto exitosamente");
                conexion.Close();



            }
            catch (OracleException ex)
            {
                Response.Write("No se ha podido insertar la mesa" + ex.Message);
            }
            conexion.Close();
        }
        
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_eliminar_mesa", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("N_MESA", OracleDbType.Int16).Value = txtNumeroMesa.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se ha borrado la mesa");
            conexion.Close();
        }

        private void CargarGrilla()
        {
            string qry = "select * from MESA";
            OracleDataAdapter da = new OracleDataAdapter(qry, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);

            gvmesa.DataSource = ds;
            gvmesa.DataBind();

        }
       
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_actualizar_mesa", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("N_MESA", OracleDbType.Int16).Value = txtNumeroMesa.Text;
            comando.Parameters.Add("TamMesa", OracleDbType.Varchar2).Value = txttamaño.Text;
            comando.Parameters.Add("Disp", OracleDbType.Int16).Value = txtdisponibilidad.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se actualizo correctamente");
            conexion.Close();

        }


        protected void gvmesa_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtNumeroMesa.Text = gvmesa.SelectedRow.Cells[1].Text;
            txttamaño.Text = gvmesa.SelectedRow.Cells[2].Text;
            txtdisponibilidad.Text = gvmesa.SelectedRow.Cells[3].Text;


            txtNumeroMesa.Enabled = true;
            txttamaño.Enabled = true;
            txtdisponibilidad.Enabled = true;

        }

      

    }
}