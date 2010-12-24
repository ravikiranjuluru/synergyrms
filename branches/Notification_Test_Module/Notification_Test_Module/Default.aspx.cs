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
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 25);

            NetworkCredential info = new NetworkCredential("virath.liyanage@gmail.com", "ThePassword");// Type your Email and the password

            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            smtpClient.Credentials = info;
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

            //The error is No connection could be made because the target machine actively refused it 209.85.227.109:25
            smtpClient.Send(mail);
        }
    }
}
