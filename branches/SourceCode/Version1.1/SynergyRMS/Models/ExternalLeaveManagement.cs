using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LeaveAdapter;

namespace SynergyRMS.Models
{
    public class ExternalLeaveManagement:ILeaveManagement
    {
        #region ILeaveManagement Members

        public List<EmployeeLeaveEntity> GetEmployeeLeaveList(Guid userId)
        {
            string ExternalId = SynergyService.GetEmployeeExternalId(userId);
            EmployeeLeaveEntity leaveEntity=new EmployeeLeaveEntity();
            leaveEntity.userId = ExternalId;
            List<EmployeeLeaveEntity> leaveList = new List<EmployeeLeaveEntity>();
            leaveList=SynergyLeaveAdapter.GetEmployeeLeaveInfo(leaveEntity);
            return leaveList;
        }

        #endregion
    }
}
