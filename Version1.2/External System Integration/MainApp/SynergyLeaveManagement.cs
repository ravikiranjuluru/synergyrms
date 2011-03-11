using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LeaveAdapter;
 
namespace MainApp
{
  public   class SynergyLeaveManagement :ILeaveManagement
    {
        /// <summary>
        /// Getleaves the allocation by user.
        /// </summary>
        /// <param name="User">The user.</param>
        /// <param name="startDate">The start date.</param>
        /// <param name="endDate">The end date.</param>
        /// <returns></returns>
      public  List<EmployeeLeaveEntity> GetleaveAllocationByUser(string User,DateTime startDate,DateTime endDate)
      {
          Guid UserId = Service.GetUserByName(User).UserId;
          SynergyModelContainer db = new SynergyModelContainer();
          var employeeLeaveQuery = from l in db.LM_EmployeeLeave
                                   where ((l.Date >= startDate) && (l.Date <= endDate) && (l.aspnet_Users.UserId==UserId))
                                   select l;

          

          List<LM_EmployeeLeave> leaves = employeeLeaveQuery.ToList();
          return AssembleEntityList(leaves);
      }

      private static List<EmployeeLeaveEntity> AssembleEntityList( List<LM_EmployeeLeave> employeeleavelist)
      {

          List<EmployeeLeaveEntity> employeeLsit = new List<EmployeeLeaveEntity>();
          foreach (LM_EmployeeLeave empleave in employeeleavelist)
          {
              EmployeeLeaveEntity entity = new EmployeeLeaveEntity();

              entity.leaveDate =(DateTime) empleave.Date;
              employeeLsit.Add(entity);

          }
          //entity. = employee.Email == null ? "" : employee.Email;
          //entity.ExternalId = employee.NIC == null ? "" : employee.NIC;
          //entity.FirstName = employee.FirstName == null ? "" : employee.FirstName;
          //entity.LastName = employee.LastName == null ? "" : employee.LastName;
          //entity.Phone = employee.Phone == null ? "" : employee.Phone;

          return employeeLsit;
      }

      

      
    }
}
