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
    public partial class AsignarMesaAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFechaSol.Enabled = false;
                Calendario1.Visible = false;
                InicialProductos();
                txtidmesa.Visible = false;



            }

        }

        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 123 ; USER ID = nicolas");

        protected void btnenviar_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                OracleCommand comando = new OracleCommand("SP_Realizar_Reserva", conexion);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add("ID_RESERVA_CLIENT", OracleDbType.Int64).Value = txtidcliente.Text;
                comando.Parameters.Add("ID_RESERVA_MES", OracleDbType.Int64).Value = txtidmesa.Text;
                comando.Parameters.Add("fec_reserva", OracleDbType.Date).Value = txtFechaSol.Text;
                comando.Parameters.Add("identidad", OracleDbType.Int64);
                comando.Parameters["identidad"].Direction = ParameterDirection.Output;


                comando.ExecuteNonQuery();


                var identidad = (comando.Parameters["identidad"].Value);
                Response.Write("su id es " + identidad);


            }
            catch (Exception ex)
            {
                Response.Write("No se ha podido realizar su reserva, El ID de cliente no existe o hubo un problema" + ex.Message);
            }
            conexion.Close();
        }



        public DataSet Consultar(string strSQL)
        {
            conexion.Open();
            OracleCommand cmd = new OracleCommand(strSQL, conexion);
            OracleDataAdapter das = new OracleDataAdapter(cmd);
            DataSet ds = new DataSet();
            das.Fill(ds);
            conexion.Close();
            return ds;
        }

        private void InicialProductos()
        {
            cmbmesas.DataSource = Consultar("SELECT TAMANNO_MESA,NUMERO_MESA FROM MESA where DISPONIBILIDAD =1 ");
            cmbmesas.DataTextField = "TAMANNO_MESA";
            cmbmesas.DataValueField = "NUMERO_MESA";
            cmbmesas.DataBind();
            cmbmesas.Items.Insert(0, new ListItem("", "0"));


        }

        protected void Calendario1_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaSol.Text = Calendario1.SelectedDate.ToString("dd/MM/yyyy");
            Calendario1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendario1.Visible)
            {
                Calendario1.Visible = false;
            }
            else
            {
                Calendario1.Visible = true;
            }
        }

        protected void cmbmesas_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtidmesa.Text = cmbmesas.SelectedValue;
        }
    }
}