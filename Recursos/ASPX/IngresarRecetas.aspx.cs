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
    public partial class IngresarRecetas : System.Web.UI.Page
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
                OracleCommand comando = new OracleCommand("SP_insertar_receta", conexion);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add("Nreceta", OracleDbType.Varchar2).Value = txtRecetaN.Text;
                comando.Parameters.Add("Ingredent", OracleDbType.Varchar2).Value = txtingredientes.Text;
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

        private void CargarGrilla()
        {
            string qry = "select * from RECETA";
            OracleDataAdapter da = new OracleDataAdapter(qry, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);

            gvrecetas.DataSource = ds;
            gvrecetas.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtIdReceta.Text = gvrecetas.SelectedRow.Cells[1].Text;
            txtRecetaN.Text = gvrecetas.SelectedRow.Cells[2].Text;
            txtingredientes.Text = gvrecetas.SelectedRow.Cells[3].Text;


            txtIdReceta.Enabled = true;
            txtRecetaN.Enabled = true;
            txtingredientes.Enabled = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_actualizar_receta", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("id_rece", OracleDbType.Int16).Value = txtIdReceta.Text;
            comando.Parameters.Add("N_receta", OracleDbType.Varchar2).Value = txtRecetaN.Text;
            comando.Parameters.Add("ingredents", OracleDbType.Varchar2).Value = txtingredientes.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se actualizo correctamente");
            conexion.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_eliminar_receta", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("IdReceta", OracleDbType.Int16).Value = txtIdReceta.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se ha borrado la recets");
            conexion.Close();
        }
    }
}