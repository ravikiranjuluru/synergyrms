using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

namespace EmployeeAdapter
{
    public class EmployeeAdaper
    {
        public static EmployeeEntity GetEmployeeInfo(string NIC)
        {
            Assembly employeeAssembly =
            Assembly.LoadFile(AppDomain.CurrentDomain.BaseDirectory + "EmployeeSystemEx.dll");
            AssemblyName leaveAssemblyName = employeeAssembly.GetName();

            Object employeeSystem = employeeAssembly.CreateInstance("EmployeeSystemEx.EmployeeSystem");

            MethodInfo leaveMethod = employeeAssembly.GetType("EmployeeSystemEx.EmployeeSystem").GetMethod("GetEmployeeInfo");
            EmployeeEntity employee =(EmployeeEntity) leaveMethod.Invoke(employeeSystem, new Object[] { NIC });

            return employee;
        }
    }
}
