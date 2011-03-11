using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LeaveAdapter;
namespace SynergyRMS.Models
{
    interface ILeaveManagement
    {
        List<EmployeeLeaveEntity> GetEmployeeLeaveList(Guid userId);

    }
}
