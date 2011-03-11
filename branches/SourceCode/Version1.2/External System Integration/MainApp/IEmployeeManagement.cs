using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmployeeAdapter;

namespace MainApp
{
    interface IEmployeeManagement
    {
        EmployeeEntity GetEmployeeInfo(EmployeeEntity employee);
    }
}
