using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Collections;

namespace Notification_Test_Module
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MailManager mM = new MailManager("Assigned to a New  Project", "You've been Assigned to a new project");

            //ArrayList toAddresses = new ArrayList();

            //toAddresses.Add("Virath.Liyanage@Gmail.com");
            //toAddresses.Add("jeevantha@gmail.com");
            //toAddresses.Add("chanakawee@gmail.com");
            //toAddresses.Add("gayan.w@sliit.lk");

            //mM.SendMail(toAddresses);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;


            // setup Smtp authentication

            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("virath.liyanage@gmail.com", "Choshani");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;



            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("virath.liyanage@gmail.com");
            msg.To.Add(new MailAddress("jeevantha@gmail.com"));


            msg.Subject = "This is a test Email subject";
            msg.IsBodyHtml = true;
            msg.Body = string.Format("<html><head></head><body><b>" + "kkk" + "</b></body>");
            try
            {
                client.Send(msg);
               // lblMsg.Text = "Your message has been successfully sent.";
            }

            catch (Exception ex)
            {

                //lblMsg.ForeColor = Color.Red;
               // lblMsg.Text = "Error occured while sending your message." + ex.Message;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MailManager mM = new MailManager("Assigned to a New  Project", "You've been Assigned to a new project");

            ArrayList toAddresses = new ArrayList();

            toAddresses.Add("Virath.Liyanage@Gmail.com");
            toAddresses.Add("jeevantha@gmail.com");
            toAddresses.Add("chanakawee@gmail.com");
            toAddresses.Add("gayan.w@sliit.lk");

            mM.SendMail(toAddresses);
        }
    }
}
