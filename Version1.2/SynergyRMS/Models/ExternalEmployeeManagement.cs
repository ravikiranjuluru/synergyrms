using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmployeeAdapter;

namespace SynergyRMS.Models
{
    /// <summary>
    /// 
    /// </summary>
   public class ExternalEmployeeManagement: IEmployeeManagement
    {

        /// <summary>
        /// Gets the employee info.
        /// </summary>
        /// <param name="employee">The employee.</param>
        /// <returns></returns>
       public EmployeeEntity GetEmployeeInfo(EmployeeEntity employee)
       {

           Guid id = SynergyService.GetUserByName(employee.username).UserId;
           employee.ExternalId = SynergyService.GetEmployeeExternalId(id);
           
           EmployeeEntity  entity = new EmployeeEntity();
           entity = EmployeeAdapter.EmployeeAdaper.GetEmployeeInfo(employee.ExternalId);

           return entity;
       }
    }
}
