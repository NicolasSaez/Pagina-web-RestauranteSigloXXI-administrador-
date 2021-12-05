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
    public partial class ReponerInsumos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrilla();
                
            }


        }

        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 123 ; USER ID = nicolas");

        private void CargarGrilla()
        {
            string qry = "select * from RECETA";
            OracleDataAdapter da = new OracleDataAdapter(qry, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);

            gvinsumos.DataSource = ds;
            gvinsumos.DataBind();

        }

        protected void gvinsumos_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtidproducto.Text = gvinsumos.SelectedRow.Cells[1].Text;
            txtnombrep.Text = gvinsumos.SelectedRow.Cells[2].Text;
            txtcantidad.Text = gvinsumos.SelectedRow.Cells[3].Text;



            txtidproducto.Enabled = false;
            txtnombrep.Enabled = false;


        }

        protected void btnreponer_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_Reponer_insumo", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("id_prod", OracleDbType.Int16).Value = txtidproducto.Text; 
            comando.Parameters.Add("STOOCK", OracleDbType.Int16).Value = txtcantidad.Text;         
            comando.ExecuteNonQuery();
            Response.Write("Se ha reponido el producto");
            conexion.Close();
        }
    }
}