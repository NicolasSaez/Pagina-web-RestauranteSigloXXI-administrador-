using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace PaginaPortafolioWeb.Recursos.ASPX
{
    public partial class SolicitarInsumosAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnenviar_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.Port = 25;
                smtp.Credentials = new NetworkCredential("saeznico318@gmail.com", "eazynrs319");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("saeznico318@gmail.com", "Restaurant SIA");
                mail.To.Add(new MailAddress("pruebaproveedor20@gmail.com"));
                mail.Subject = "Solicitacion de insumos";
                mail.Body = txtdescripcion.Text;
                smtp.EnableSsl = true;
                smtp.Send(mail);
                Response.Write("Correo Enviado");

            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);

            }




        }
    }
}