using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LeaveAdapter;

namespace SynergyRMS.Models
{
    public class SynergyLeaveManagement:ILeaveManagement
    {

        #region ILeaveManagement Members

        public List<EmployeeLeaveEntity> GetEmployeeLeaveList(Guid userId)
        {

            List<LM_EmployeeLeave> leavelist = SynergyService.GetEmployeeLeaveList(userId);;

            return AssembleEntity(leavelist);
        }

        #endregion


        private List<EmployeeLeaveEntity> AssembleEntity(List< LM_EmployeeLeave>  leaveList)
        {
            List<EmployeeLeaveEntity> leavelist = new List<EmployeeLeaveEntity>();
            foreach (LM_EmployeeLeave leave in leaveList)
            {
                EmployeeLeaveEntity entity = new EmployeeLeaveEntity();
                leave.LM_LeaveTypesReference.Load();
                entity.leaveDate = (DateTime)leave.Date;
                entity.startDate = (DateTime)leave.startdate;
                entity.endDate =(DateTime)leave.enddate;
                entity.description = leave.LM_LeaveTypes.Description;
                leavelist.Add(entity);
            }
            return leavelist;
        }
    }
}
