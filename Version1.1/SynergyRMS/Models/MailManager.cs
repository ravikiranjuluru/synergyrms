using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Collections;
namespace SynergyRMS.Models
{
    public static class MailManager
    {

        public enum messageFlag { AssignedProject, RemoveProject };

        private const string appName = "Resource Management System";

        private static string adminMailAddress;
        private static string adminMailPassword;
        private static string adminMailServer;
        private static int adminMailPort;

        private static string mailTitle = string.Empty;
        private static string mailMessage = string.Empty;

        //public static MailManager()
        //{
        //    //string mailTitle, string mailMessage
        //    //this.mailTitle = mailTitle;
        //    //this.mailMessage = mailMessage;


        //}

        private static void SetAdminValues()
        {
            adminMailAddress = ConfigurationSettings.AppSettings["adminMailAddress"].ToString();
            adminMailPassword = ConfigurationSettings.AppSettings["adminMailPassword"].ToString();
            adminMailServer = ConfigurationSettings.AppSettings["adminMailServer"].ToString();
            adminMailPort = Convert.ToInt16(ConfigurationSettings.AppSettings["adminMailPort"].ToString());
        }

        public static bool SendMail(ArrayList toAdresses, messageFlag flag)
        {
            SetAdminValues();

            SmtpClient smtpClient = new SmtpClient(adminMailServer, adminMailPort);

            NetworkCredential networkCredential = new NetworkCredential(adminMailAddress, adminMailPassword);

            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = networkCredential;

            MailMessage mail = new MailMessage();

            mail.From = new MailAddress(adminMailAddress, appName);

            for (int i = 0; i < (toAdresses.Count); i++)
            {
                mail.To.Add(new MailAddress(toAdresses[i].ToString()));
            }

            mail.Subject = appName + " - Mail Notification";
            mail.IsBodyHtml = true;
            mail.Body = MessageModifier(flag);
            //mail.Priority = MailPriority.High;

            try
            {
                smtpClient.Send(mail);
                return true;
            }
            catch
            {
                return false;
            }
        }

        private static string MessageModifier(messageFlag flag)
        {
            setMessage(flag);

            StringBuilder mailBody = new StringBuilder();

            mailBody.Append("<html>");
            mailBody.Append("<head>");
            mailBody.Append("<title>" + appName + " - " + mailTitle + "</title>");
            mailBody.Append("</head>");
            mailBody.Append("<body>");
            mailBody.Append("<span>");
            mailBody.Append("Dear User, </br><h3>" + mailMessage + "</h3></br>Please note this is an auto genarated email.");
            mailBody.Append("</span>");
            mailBody.Append("</body>");
            mailBody.Append("</html>");

            return mailBody.ToString();
        }

        private static void setMessage(messageFlag flag)
        {
            if (flag == messageFlag.AssignedProject)
            {
                mailTitle = "Assigned to a New  Project";
                mailMessage = "You've been Assigned to a new project";
            }
            else if (flag == messageFlag.AssignedProject)
            {
                mailTitle = "Removed from the Project";
                mailMessage = "You've been Removed from the current Project";
            }
            else
            {
                mailTitle = string.Empty;
                mailMessage = string.Empty;
            }
        }
    }
}
