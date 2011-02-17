using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            ReportViewer1.LocalReport.Refresh();
            this.ReportViewer1.ShowReportBody = true;



        }
    }
}
