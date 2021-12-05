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
    public partial class RegistrarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 123 ; USER ID = nicolas");
        protected void btnAsignar_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                OracleCommand comando = new OracleCommand("SP_registrar_usuario_rol", conexion);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add("usuario", OracleDbType.Varchar2).Value = txtusuario.Text;
                comando.Parameters.Add("pass", OracleDbType.Varchar2).Value = txtcontraseña.Text;
                comando.Parameters.Add("rol", OracleDbType.Varchar2).Value = cmbroles.Text;
                comando.ExecuteNonQuery();
                Response.Write("Se registro exitosamente");
                conexion.Close();



            }
            catch 
            {
                Response.Write("No se ha Registrar intentelo nuevamente" );
            }
            conexion.Close();
        }
    }
}