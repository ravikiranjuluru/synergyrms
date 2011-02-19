using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Microsoft.Reporting.WebForms;


namespace SynergyRMS.Reports
{
    public partial class ResourceAllocationByUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportViewer1.LocalReport.Refresh();

            if (!IsPostBack)
            {
                // Hide report body until user selects a parameter.
                this.ReportViewer1.ShowReportBody = false;
            }
        }

        protected void Viewbtn_Click(object sender, EventArgs e)
        {
            this.ReportViewer1.LocalReport.DataSources.Clear();


            ReportParameter[] rPara = new ReportParameter[3];

            rPara[0] = new ReportParameter("Resource", resourceddl.SelectedItem.Text);
            rPara[1] = new ReportParameter("From", txtStartDate.Text.ToString());
            rPara[2] = new ReportParameter("To", txtEndDate.Text.ToString());
            //ReportViewer1.LocalReport.SetParameters(rPara);
          


           // WebApp.Reports.OutStanding_ReportTableAdapters.sey_outstanding_reportTableAdapter outAdapter = new WebApp.Reports.OutStanding_ReportTableAdapters.sey_outstanding_reportTableAdapter();
          //  WebApp.Reports.OutStanding_Report.sey_outstanding_reportDataTable outDataTable = outAdapter.GetData(Convert.ToDateTime(txtToDate.Text), lblBrokerCode.Text);




          //  ReportDataSource outstandingRepDS = new ReportDataSource("OutStanding_Report_sey_outstanding_report", outDataTable);

          //  this.ReportViewer1.LocalReport.DataSources.Add(outstandingRepDS);


            //this.ReportViewer1.ShowReportBody = true;
           // ReportViewer1.LocalReport.Refresh();

            SynergyRMS.Reports.ResourceAllocationByUserdsTableAdapters.R_GetResourceAllocationByUserIdForGivenPeriodTableAdapter outAdapter = new SynergyRMS.Reports.ResourceAllocationByUserdsTableAdapters.R_GetResourceAllocationByUserIdForGivenPeriodTableAdapter();
            SynergyRMS.Reports.ResourceAllocationByUserds.R_GetResourceAllocationByUserIdForGivenPeriodDataTable outDataTable = outAdapter.GetData(resourceddl.SelectedValue.ToString(), Convert.ToDateTime(txtStartDate.Text), Convert.ToDateTime(txtEndDate.Text));
            ReportDataSource RepDS = new ReportDataSource("ResourceAllocationByUserds_R_GetResourceAllocationByUserIdForGivenPeriod", outDataTable);



            SynergyRMS.Reports.ViewProjectByResourcedsTableAdapters.R_GetResourceByResourceIdTableAdapter resAdapter = new SynergyRMS.Reports.ViewProjectByResourcedsTableAdapters.R_GetResourceByResourceIdTableAdapter();
            SynergyRMS.Reports.ViewProjectByResourceds.R_GetResourceByResourceIdDataTable resDataTable = resAdapter.GetData(resourceddl.SelectedValue.ToString());
            ReportDataSource resDataDS = new ReportDataSource("ViewProjectByResourceds_R_GetResourceByResourceId", resDataTable);


            this.ReportViewer1.LocalReport.DataSources.Add(RepDS);
            this.ReportViewer1.LocalReport.DataSources.Add(resDataDS);

            this.ReportViewer1.ShowReportBody = true;
            //ReportViewer1.LocalReport.SetParameters(rPara);
          
            ReportViewer1.LocalReport.Refresh();

            



        }
    }
}
