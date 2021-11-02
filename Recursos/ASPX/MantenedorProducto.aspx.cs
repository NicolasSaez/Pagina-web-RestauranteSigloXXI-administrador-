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
    public partial class HomeAdmin : System.Web.UI.Page
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
                OracleCommand comando = new OracleCommand("SP_insertar_producto", conexion);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add("nombre_p", OracleDbType.Varchar2).Value = txtnombrep.Text;
                comando.Parameters.Add("P_ID_RECETA", OracleDbType.Int16).Value = txtP_ID_RECETA.Text;
                comando.Parameters.Add("TIPO_PRO", OracleDbType.Varchar2).Value = txtTipoProducto.Text;
                comando.Parameters.Add("PREC_UNIDAD", OracleDbType.Int16).Value = txtPrecioUnidad.Text;
                comando.Parameters.Add("CANTIDAAD", OracleDbType.Int16).Value = txtCantidad.Text;
                comando.Parameters.Add("STOCKK", OracleDbType.Int16).Value = txtStock.Text;
                comando.Parameters.Add("P_ID_PROVEEDOR", OracleDbType.Int16).Value = txtP_ID_PROVEEDOR.Text;
                comando.ExecuteNonQuery();
                Response.Write("Se inserto exitosamente");
                conexion.Close();



            }
            catch (OracleException ex)
            {
                Response.Write("No se ha podido insertar el producto" + ex.Message);
            }
            conexion.Close();

        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_actualizar_producto", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("id_prod", OracleDbType.Int16).Value = txtidproducto.Text;
            comando.Parameters.Add("nom_producto", OracleDbType.Varchar2).Value = txtnombrep.Text;
            comando.Parameters.Add("P_id_receta", OracleDbType.Int16).Value = txtP_ID_RECETA.Text;
            comando.Parameters.Add("T_producto", OracleDbType.Varchar2).Value = txtTipoProducto.Text;
            comando.Parameters.Add("P_UNIDAD", OracleDbType.Int16).Value = txtPrecioUnidad.Text;
            comando.Parameters.Add("CANTID", OracleDbType.Int16).Value = txtCantidad.Text;
            comando.Parameters.Add("STOOCK", OracleDbType.Int16).Value = txtStock.Text;
            comando.Parameters.Add("P_ID_PROVEEDOR", OracleDbType.Int16).Value = txtP_ID_PROVEEDOR.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se actualizo con exito");
            conexion.Close();


        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SP_eliminar_producto", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("ID_PROD", OracleDbType.Int16).Value = txtidproducto.Text;
            comando.ExecuteNonQuery();
            Response.Write("Se ha borrado el producto");
            conexion.Close();
        }

        private void CargarGrilla()
        {
            string qry = "select * from PRODUCTO";
            OracleDataAdapter da = new OracleDataAdapter(qry, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);

            gvproductos.DataSource = ds;
            gvproductos.DataBind();

        }



        protected void gvproductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtidproducto.Text = gvproductos.SelectedRow.Cells[1].Text;
            txtnombrep.Text = gvproductos.SelectedRow.Cells[2].Text;
            txtP_ID_RECETA.Text = gvproductos.SelectedRow.Cells[3].Text;
            txtTipoProducto.Text = gvproductos.SelectedRow.Cells[4].Text;
            txtPrecioUnidad.Text = gvproductos.SelectedRow.Cells[5].Text;
            txtCantidad.Text = gvproductos.SelectedRow.Cells[6].Text;
            txtStock.Text = gvproductos.SelectedRow.Cells[7].Text;
            txtP_ID_PROVEEDOR.Text = gvproductos.SelectedRow.Cells[8].Text;

            txtidproducto.Enabled = true;
            txtnombrep.Enabled = true;
            txtP_ID_RECETA.Enabled = true;
            txtTipoProducto.Enabled = true;
            txtPrecioUnidad.Enabled = true;
            txtCantidad.Enabled = true;
            txtStock.Enabled = true;
            txtP_ID_PROVEEDOR.Enabled = true;
        }

   



    }




}

