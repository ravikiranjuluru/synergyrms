﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SynergyRMS.Models;
using System.Web.Security;

namespace SynergyRMS.Reports
{
    public partial class ResourceAllocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Hide report body until user selects a parameter.
                this.ReportViewer1.ShowReportBody = false;
            }

        }

        protected void btnViewReport_Click(object sender, EventArgs e)
        {
          //  DateTime startDate=txtStartDate.Text.ToString();

            //List<PM_ProjectResources> ProjectResourcesList=SynergyService.GetAllProjectResoucesByGivenPeriod(Convert.ToDateTime(txtStartDate.Text), Convert.ToDateTime(txtEndDate.Text));

            //DateTime aa= ProjectResourcesList[0].AllocatedStartDate;
            //DateTime bb = ProjectResourcesList[0].AllocatedEndDate;


            /*------Temp Methods---------*/

            string userId = "1b93281e-b154-4762-adbf-7cbf6c751ba4";
            DateTime startDate = Convert.ToDateTime(txtStartDate.Text);
            DateTime endDate = Convert.ToDateTime(txtEndDate.Text);


           // SynergyService.MaxAllocationValidation(userId, startDate, endDate, 60, 0);

           // SynergyService.DeleteAssignUsersfromProject(20, "jeevantha");
          // List<PM_ProjectResources> aa=   SynergyService.GetAllProjectResoucesByGivenPeriod(startDate, endDate);

         //   MembershipUserCollection aa = SynergyService.GetAssignedUsersByProjectId(1);
           // int bb = aa.Count;


            /*---------------------------*/





            ReportViewer1.LocalReport.Refresh();
            this.ReportViewer1.ShowReportBody = true;



        }
    }
}
