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
    public partial class ResumenDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           

        }
        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 123 ; USER ID = nicolas");
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleDataAdapter da = new OracleDataAdapter(" select* from FINANZAS where NUMERO_MESA like '" + TextBox1.Text + "%'", conexion);
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.gvfacturas.DataSource = dt;
            gvfacturas.DataBind();
        }

        protected void btnexcel_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename = ResumenFacturas.xls");
            Response.ContentType = "application/vnd.xls";

            System.IO.StringWriter stringWriter = new System.IO.StringWriter();

            System.Web.UI.HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);
            gvfacturas.RenderControl(htmlTextWriter);
            Response.Write(stringWriter.ToString());

            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        int total = 0;
        protected void gvfacturas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToInt32(e.Row.Cells[3].Text);
                totaltxt.Text = total.ToString();
            }
        }
    }
}