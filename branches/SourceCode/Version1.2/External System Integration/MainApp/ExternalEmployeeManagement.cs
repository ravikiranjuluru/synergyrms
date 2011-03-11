using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmployeeAdapter;

namespace MainApp
{
    /// <summary>
    /// 
    /// </summary>
   public class ExternalEmployeeManagement
    {

        /// <summary>
        /// Gets the employee info.
        /// </summary>
        /// <param name="employee">The employee.</param>
        /// <returns></returns>
       public EmployeeEntity GetEmployeeInfo(EmployeeEntity employee)
       {

           Guid id = Service.GetUserByName(employee.username).UserId;
           employee.ExternalId = Service.GetEmployeeExternalId(id);
           
           EmployeeEntity  entity = new EmployeeEntity();
           entity = EmployeeAdaper.GetEmployeeInfo(employee.ExternalId);

           return entity;
       }
    }
}
