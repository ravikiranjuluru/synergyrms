using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LeaveAdapter;

namespace MainApp
{
    interface ILeaveManagement
    {

     List<EmployeeLeaveEntity>  GetleaveAllocationByUser(string User,DateTime startDate,DateTime endDate);

    }
}
