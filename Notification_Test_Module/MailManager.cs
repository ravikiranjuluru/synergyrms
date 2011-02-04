using System;
using System.Collections;
using System.Configuration;
using System.Net.Mail;
using System.Text;

public class MailManager
{
    private const string appName = "Resource Management System";

    private string mailTitle;
    private string mailMessage;

    private string adminMailAddress;
    private string adminMailPassword;
    private string adminMailServer;
    private int adminMailPort;

    public MailManager(string mailTitle,string mailMessage)
    {
        this.mailTitle = mailTitle;
        this.mailMessage = mailMessage;

        SetAdminValues();
    }

    private void SetAdminValues()
    {
        adminMailAddress = ConfigurationManager.AppSettings["adminMailAddress"].ToString();
        adminMailPassword = ConfigurationManager.AppSettings["adminMailPassword"].ToString();
        adminMailServer = ConfigurationManager.AppSettings["adminMailServer"].ToString();
        adminMailPort = Convert.ToInt16(ConfigurationManager.AppSettings["adminMailPort"].ToString());
    }

    public bool SendMail(ArrayList toAdresses)
    {
        SmtpClient smtpClient = new SmtpClient(adminMailServer, adminMailPort);

        smtpClient.Credentials = new System.Net.NetworkCredential(adminMailAddress, adminMailPassword);
        smtpClient.UseDefaultCredentials = true;
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient.EnableSsl = true;
        smtpClient.UseDefaultCredentials = false;
        MailMessage mail = new MailMessage();

        mail.From = new MailAddress(adminMailAddress, appName);

        for (int i = 0; i < (toAdresses.Count); i++)
        {
            mail.To.Add(new MailAddress(toAdresses[i].ToString()));
        }

        mail.Subject = appName + " - Mail Notification";
        mail.IsBodyHtml = true;
        mail.Body = MessageModifier();
       // mail.Priority = MailPriority.High;

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

    private string MessageModifier()
    {
        StringBuilder mailBody = new StringBuilder();

        mailBody.Append("<html>");
        mailBody.Append("<head>");
        mailBody.Append("<title>" + appName + " - " + mailTitle + "</title>");
        mailBody.Append("</head>");
        mailBody.Append("<body>");
        mailBody.Append("<span>");
        mailBody.Append("Dear User, </br><h3>"+ this.mailMessage +"</h3></br>Please note this is an auto genarated email.");
        mailBody.Append("</span>");
        mailBody.Append("</body>");
        mailBody.Append("</html>");

        return mailBody.ToString();
    }
}
