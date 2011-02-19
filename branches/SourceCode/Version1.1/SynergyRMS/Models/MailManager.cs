using System;
using System.Collections.Generic;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace SynergyRMS.Models
{
    public static class MailManager
    {
        public enum messageFlag { AssignedProject, RemovedProject, UpdatedProject, ScheduledProject, AccountCreated };

        private const string appName = "Resource Management System";

        private static string adminMailAddress;
        private static string adminMailPassword;
        private static string adminMailServer;
        private static int adminMailPort;

        private static string mailTitle = string.Empty;
        private static string mailMessage = string.Empty;

        private static void SetAdminValues()
        {
            adminMailAddress = ConfigurationManager.AppSettings["adminMailAddress"].ToString();
            adminMailPassword = ConfigurationManager.AppSettings["adminMailPassword"].ToString();
            adminMailServer = ConfigurationManager.AppSettings["adminMailServer"].ToString();
            adminMailPort = Convert.ToInt16(ConfigurationManager.AppSettings["adminMailPort"].ToString());
        }

        public static bool SendMail(List<string> toAdresses, messageFlag flag)
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

        public static bool SendMail(string toAdresses, messageFlag flag)
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
            mail.To.Add(new MailAddress(toAdresses));

            mail.Bcc.Add(new MailAddress("virath.liyanage@gmail.com"));// Temp

            mail.Subject = appName + " - Mail Notification";
            mail.IsBodyHtml = true;
            mail.Body = MessageModifier(flag);

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
            else if (flag == messageFlag.UpdatedProject)
            {
                mailTitle = "Project Updated";
                mailMessage = "The Project details have been updated";
            }
            else if (flag == messageFlag.ScheduledProject)
            {
                mailTitle = "Project Scheduled";
                mailMessage = "You've been allocated for a Project(Certain Period)";
            }
            else if (flag == messageFlag.AccountCreated)
            {
                mailTitle = "Account Created";
                mailMessage = "Your account has been Created";
            }
            else
            {
                mailTitle = string.Empty;
                mailMessage = string.Empty;
            }
        }
    }
}