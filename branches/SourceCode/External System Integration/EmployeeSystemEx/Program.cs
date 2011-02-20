using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmployeeSystemEx
{
    class Program
    {
        static void Main(string[] args)
        {

            EmployeeSystem system = new EmployeeSystem();
            EmployeeAdapter.EmployeeEntity emp= system.GetEmployeeInfo("832594342V");

            Console.WriteLine(emp.LastName);
            
            Console.Read();

        }
    }
}
