using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LeaveAdapter;

namespace MainApp
{
  public   class ExternalLeaveManagement:ILeaveManagement
    {
      public List<EmployeeLeaveEntity> GetleaveAllocationByUser(string User, DateTime startDate, DateTime endDate)
      {
          EmployeeLeaveEntity entity = new EmployeeLeaveEntity();
          entity.endDate = endDate;
          entity.startDate = startDate;

          Guid id = Service.GetUserByName(User).UserId;
          entity.userId = Service.GetUserExternalId(id);
          return SynergyLeaveAdapter.GetEmployeeLeaveInfo(entity);
      }
    }
}
