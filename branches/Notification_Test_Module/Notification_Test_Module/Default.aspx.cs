﻿using System;
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

            ArrayList toAddresses = new ArrayList();

            toAddresses.Add("virath.liyanage@gmail.com");
            toAddresses.Add("jeevantha@gmail.com");
            toAddresses.Add("chanakawee@gmail.com");
            toAddresses.Add("gayan.w@sliit.lk");

            Notification_Module.MailManager.SendMail(toAddresses,Notification_Module.MailManager.messageFlag.AssignedProject);

            //mM.SendMail(toAddresses);
        }
    }
}
