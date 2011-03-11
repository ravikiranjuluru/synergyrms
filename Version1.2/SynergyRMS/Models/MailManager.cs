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
        public enum messageFlag { AssignedProject, RemovedProject, UpdatedProject, ScheduledAssigned, ScheduledDelete, ScheduledUpdate, AccountCreated, AccountEdited };

        private const string appName = "Resource Management System";
        private const string appUrl = "http://www.rmssynergy.com/";

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

        public static bool SendMail(List<string> toAdresses, messageFlag flag, string projectName, string userName)
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

            //mail.CC.Add(new MailAddress("chandusliit@gmail.com"));// Temp
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

        public static bool SendMail(string toAdresses, messageFlag flag, PM_ProjectResources projectResources, List<string> cCAdresses)
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

            for (int i = 0; i < (cCAdresses.Count); i++)
            {
                mail.CC.Add(new MailAddress(cCAdresses[i].ToString()));
            }

            //mail.CC.Add(new MailAddress("chandusliit@gmail.com"));// Temp
            mail.Bcc.Add(new MailAddress("virath.liyanage@gmail.com"));// Temp

            mail.Subject = appName + " - Mail Notification";
            mail.IsBodyHtml = true;
            mail.Body = MessageModifier(flag, projectResources);

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

        public static bool SendMail(string toAdresses, messageFlag flag, List<string> ResourceInfo)
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

            //mail.CC.Add(new MailAddress("chandusliit@gmail.com"));// Temp
            mail.Bcc.Add(new MailAddress("virath.liyanage@gmail.com"));// Temp

            mail.Subject = appName + " - Mail Notification";
            mail.IsBodyHtml = true;
            mail.Body = MessageModifier(flag, ResourceInfo);

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

        private static string MessageModifier(messageFlag flag, PM_ProjectResources projectResources)
        {
            setMessage(flag);

            StringBuilder mailBody = new StringBuilder();

            mailBody.Append("<html>");
            mailBody.Append("<head>");
            mailBody.Append("<title>" + appName + " - " + mailTitle + "</title>");
            mailBody.Append("</head>");
            mailBody.Append("<body>");
            mailBody.Append("<span>");
            mailBody.Append("Dear " + projectResources.aspnet_Users.UserName.ToUpper() + ", </br><h3>" + mailMessage + "</h3></br><div>Project Name: " + projectResources.PM_Projects.ProjectName + "</div></br><div>Project Type: " + projectResources.PM_Projects.PM_Types.TypeName + "</div></br><div>Start Date: " + projectResources.PM_Projects.ProjectStartDate.ToShortDateString() + "</div></br><div>End Date: " + projectResources.PM_Projects.ProjectEndDate.ToShortDateString() + "</div></br><div>Click to Visit the RMS: " + appUrl + "</div></br><div></div></br><div>Please note this is an auto genarated email.</div>");
            mailBody.Append("</span>");
            mailBody.Append("</body>");
            mailBody.Append("</html>");

            return mailBody.ToString();
        }

        private static string MessageModifier(messageFlag flag, List<string> ResourceInfo)
        {
            setMessage(flag);

            StringBuilder mailBody = new StringBuilder();

            mailBody.Append("<html>");
            mailBody.Append("<head>");
            mailBody.Append("<title>" + appName + " - " + mailTitle + "</title>");
            mailBody.Append("</head>");
            mailBody.Append("<body>");
            mailBody.Append("<span>");
            mailBody.Append("Dear " + ResourceInfo[0].ToString().ToUpper() + ", </br><h3>" + mailMessage + "</h3></br><div>User Name: " + ResourceInfo[1].ToString() + "</div></br><div>Password: " + ResourceInfo[2].ToString() + "</div></br><div>E-mail Address: " + ResourceInfo[3].ToString() + "</div></br><div>Role: " + ResourceInfo[4].ToString() + "</div></br><div>Click to Visit the RMS: " + appUrl + "</div></br><div></div></br><div>Please note this is an auto genarated email.</div>");
            mailBody.Append("</span>");
            mailBody.Append("</body>");
            mailBody.Append("</html>");

            return mailBody.ToString();
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
            //mailBody.Append("Dear " + userName + " , </br><h3>" + mailMessage + "</h3></br>" + appUrl + "</br>Please note this is an auto genarated email.");
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
            else if (flag == messageFlag.RemovedProject)
            {
                mailTitle = "Removed from the Project";
                mailMessage = "You've been Removed from a Project";
            }
            else if (flag == messageFlag.UpdatedProject)
            {
                mailTitle = "Project Updated";
                mailMessage = "The Project details have been updated";
            }
            else if (flag == messageFlag.ScheduledAssigned)
            {
                mailTitle = "Project Scheduled Allocated";
                mailMessage = "You've been allocated for a Project(Certain Period)";
            }
            else if (flag == messageFlag.ScheduledDelete)
            {
                mailTitle = "Project Scheduled Deleted";
                mailMessage = "You've been deleted for a Project";
            }
            else if (flag == messageFlag.ScheduledUpdate)
            {
                mailTitle = "Project Scheduled Updated";
                mailMessage = "Project schedule has been updated";
            }
            else if (flag == messageFlag.AccountCreated)
            {
                mailTitle = "Account Created";
                mailMessage = "Your account has been Created";
            }
            else if (flag == messageFlag.AccountEdited)
            {
                mailTitle = "Account Updated";
                mailMessage = "Your account has been Updated";
            }
            else
            {
                mailTitle = string.Empty;
                mailMessage = string.Empty;
            }
        }
    }
}