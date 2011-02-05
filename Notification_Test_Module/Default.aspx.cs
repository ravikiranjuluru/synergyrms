using System;
using System.Collections.Generic;

namespace Notification_Test_Module
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> toAddresses = new List<string>();

            toAddresses.Add("virath.liyanage@gmail.com");
            toAddresses.Add("jeevantha@gmail.com");
            toAddresses.Add("chanakawee@gmail.com");
            toAddresses.Add("gayan.w@sliit.lk");

            Notification_Module.MailManager.SendMail(toAddresses,Notification_Module.MailManager.messageFlag.AssignedProject);
        }
    }
}
