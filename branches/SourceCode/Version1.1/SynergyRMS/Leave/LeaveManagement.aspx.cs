using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SynergyRMS.Models;



namespace SynergyRMS.Leave
{
    public partial class LeaveManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindAllLeaveTypes();
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
             

              DateTime startDate = Convert.ToDateTime(txtStartDate.Text);
              DateTime endDate = Convert.ToDateTime(txtEndDate.Text);

              TimeSpan span = endDate.Subtract(startDate);
              int Days = Convert.ToInt32(span.TotalDays);

              for (int i = 0; i <= Days; i++)
              {
                  LM_EmployeeLeave employeeLeave = new LM_EmployeeLeave();
                  employeeLeave.Date = startDate;
                  employeeLeave.Description = txtReason.Text.ToString();

                  List<LM_LeaveTypes> typeList = SynergyService.LoadAllLeaveTypes();
                  // string userName = HttpContext.Current.User.Identity.Name;
                  string userName = "chandu";

                  employeeLeave.aspnet_Users = SynergyService.GetUserByName(userName);
                  employeeLeave.LM_LeaveTypes = SynergyService.GetLeaveTypeById(Convert.ToInt32(ddlLeaveTypes.SelectedValue.ToString()));

                  SynergyService.AddLeave(employeeLeave);

                  startDate = startDate.AddDays(1);
              }
               ClearScreen();
            }
            catch (Exception ex)
            {

            }

        }


        private void BindAllLeaveTypes()
        {
            List<LM_LeaveTypes> LeaveTypeList = SynergyService.LoadAllLeaveTypes();
            ddlLeaveTypes.DataSource = LeaveTypeList;
            ddlLeaveTypes.DataBind();

        }


        private void ClearScreen()
        {
            txtStartDate.Text = "";
            txtEndDate.Text = "";
            txtReason.Text = "";
        }


    }
}
