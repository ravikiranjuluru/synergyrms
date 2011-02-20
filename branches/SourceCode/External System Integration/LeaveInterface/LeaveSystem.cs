using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using LeaveAdapter;
namespace LeaveSystemEx
{
  public   class LeaveSystem
    {
      private static LeaveDBEntities leaveEntity;

      /// <summary>
      /// Gets the leave DB entity.
      /// </summary>
      /// <returns></returns>
      private static LeaveDBEntities GetLeaveDBEntity()
      {        
          if(leaveEntity==null)
          {
           leaveEntity=new LeaveDBEntities();
          }
          return leaveEntity;
      }

      /// <summary>
      /// Gets the employee leave.
      /// </summary>
      /// <param name="userid">The userid.</param>
      /// <param name="startDate">The start date.</param>
      /// <param name="endDate">The end date.</param>
      /// <returns></returns>
      public List<EmployeeLeaveEntity> GetEmployeeLeave(string userid, DateTime startDate, DateTime endDate)
      {
          List<EmployeeLeaveEntity> leavelist = new List<EmployeeLeaveEntity>();
          List<EmployeeLeaves> leaves = null;
          try
          {
              var employeeLeaveQuery = from l in GetLeaveDBEntity().EmployeeLeaves
                                       where ((l.Date >= startDate) &&(l.Date <= endDate))
                              select l;

                leaves = employeeLeaveQuery.ToList();
            
                foreach (EmployeeLeaves el in leaves)
                {
                    leavelist.Add(AssembleEntity(el));
                }

              return leavelist;
          }
          catch
          {
          }

          return leavelist;
      }



      private static EmployeeLeaveEntity AssembleEntity(EmployeeLeaves employee)
      {
          EmployeeLeaveEntity entity = new EmployeeLeaveEntity();

          entity.leaveDate= (DateTime) employee.Date;
          //entity. = employee.Email == null ? "" : employee.Email;
          //entity.ExternalId = employee.NIC == null ? "" : employee.NIC;
          //entity.FirstName = employee.FirstName == null ? "" : employee.FirstName;
          //entity.LastName = employee.LastName == null ? "" : employee.LastName;
          //entity.Phone = employee.Phone == null ? "" : employee.Phone;

          return entity;

      }
    }
}
