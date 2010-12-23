using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net;

namespace Notification_Test_Module
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential("virath.liyanage@gmail.com", "test123");
            smtpClient.UseDefaultCredentials = true;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("virath.liyanage@gmail.come", "Resource Management System");
            mail.To.Add(new MailAddress("jeevantha@gmail.com"));
            mail.CC.Add(new MailAddress("virath.liyanage@gmail.come"));

            StringBuilder mailBody = new StringBuilder();

            mailBody.Append("<html>");
            mailBody.Append("<head>");
            mailBody.Append("<title>Resource Management System - Notification (Project Assignment)</title>");
            mailBody.Append("</head>");
            mailBody.Append("<body>");
            mailBody.Append("<span>");
            mailBody.Append("Dear User, </br><h3>You have been assign to a project.</h3></br>Please note this is an auto genarated email.");
            mailBody.Append("</span>");
            mailBody.Append("</body>");
            mailBody.Append("</html>");

            mail.Subject = "Resource Management System - Mail Notification";
            mail.IsBodyHtml = true;
            mail.Body = mailBody.ToString();  

            smtpClient.Send(mail);
        }
    }
}
