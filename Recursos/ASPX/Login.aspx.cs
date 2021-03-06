using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace PaginaPortafolioWeb.ASPX
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 123 ; USER ID = nicolas");
        protected void Btningresar_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SELECT * FROM USUARIOS WHERE USUARIO = :usuario AND CLAVE = :clave",conexion);

            comando.Parameters.Add(":usuario", tbusuario.Text);
            comando.Parameters.Add(":clave", tbcontraseña.Text);

            OracleDataReader lector = comando.ExecuteReader();

            if (lector.Read())
            {
                if (lector["ROL"].ToString() == "ADMIN")
                {
                    Server.Transfer("MenuAdmin.aspx");
                    conexion.Close();

                }
                if (lector["ROL"].ToString() == "FINANZAS")
                {
                    Server.Transfer("MenuFinanzas.aspx");
                    conexion.Close();
                }
                if (lector["ROL"].ToString() == "BODEGUERO")
                {
                    Server.Transfer("MenuBodega.aspx");
                    conexion.Close();
                }
                if (lector["ROL"].ToString() == "COCINERO")
                {
                    Server.Transfer("MenuCocina.aspx");
                    conexion.Close();
                }
                if (lector["ROL"].ToString() == "RECEPCION")
                {
                    Server.Transfer("MenuRecepcion.aspx");
                    conexion.Close();
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('Usuario o contraseña incorrecta, intentelo nuevamente');</script>");
            }
        }
    }
}