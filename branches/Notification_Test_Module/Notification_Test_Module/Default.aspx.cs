using System;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Notification_Test_Module
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 465);//209.85.227.109

            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.EnableSsl = true;

            NetworkCredential info = new NetworkCredential("virath.liyanage@gmail.com", "Password");// Type your Email and the password
            smtpClient.Credentials = info;

            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("virath.liyanage@gmail.com", "Resource Management System");
            mail.To.Add(new MailAddress("jeevantha@gmail.com"));
            mail.To.Add(new MailAddress("gayanpw@gmail.com"));
            mail.CC.Add(new MailAddress("virath.liyanage@gmail.com"));

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

            //The error is No connection could be made because the target machine actively refused it 209.85.227.109:25
            smtpClient.Send(mail);
        }
    }
}
