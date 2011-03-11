using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmployeeAdapter;


namespace SynergyRMS.Models
{
    interface IEmployeeManagement
    {
        /// <summary>
        /// Gets the employee info.
        /// </summary>
        /// <param name="employee">The employee.</param>
        /// <returns></returns>
        EmployeeEntity GetEmployeeInfo(EmployeeEntity employee);
    }
}
