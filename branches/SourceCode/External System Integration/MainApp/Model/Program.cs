using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using LeaveAdapter;

namespace MainApp
{
    class Program
    {
        static void Main(string[] args)
        {


           // TestEmployeeSystem();

            TestLeaveSystem();
        }

        private static void TestEmployeeSystem()
        {
            if (IsEmployeeSystemExternal())
            {
                ExternalEmployeeManagement empl = new ExternalEmployeeManagement();
                EmployeeAdapter.EmployeeEntity entity = new EmployeeAdapter.EmployeeEntity();
                entity.username = "amalka";

                entity = empl.GetEmployeeInfo(entity);
                Console.WriteLine(entity.FirstName);
                Console.Read();
            }
            else
            {
                SynergyEmployeeManagement emp = new SynergyEmployeeManagement();
                EmployeeAdapter.EmployeeEntity entity = new EmployeeAdapter.EmployeeEntity();
                entity.username = "amalka";
                entity = emp.GetEmployeeInfo(entity);
                Console.WriteLine(entity.FirstName);
                Console.Read();
            }
            
  
        }


        private static bool IsLeaveSystemExternal()
        {
            if (ConfigurationSettings.AppSettings["LeaveSystem"].ToString() == "External")
            {
                return true;
            }
            return false;
        }


        private static bool IsEmployeeSystemExternal()
        {
            if (ConfigurationSettings.AppSettings["EmployeeSystem"].ToString() == "External")
            {
                return true;
            }
            return false;
        }

        private static  void TestLeaveSystem()
        {
            int count = -2;
            ILeaveManagement leavmgmt = null;
            List<EmployeeLeaveEntity> leaves=null;
            if (IsEmployeeSystemExternal())
            {
                leavmgmt = new ExternalLeaveManagement();
                leaves = leavmgmt.GetleaveAllocationByUser("amalka", DateTime.Now.AddDays(-8), DateTime.Now.AddDays(3));
                Console.WriteLine(leaves.Count);
            }
            else
            {
                leavmgmt = new SynergyLeaveManagement();
                 leaves = leavmgmt.GetleaveAllocationByUser("amalka", DateTime.Now.AddDays(-10), DateTime.Now.AddDays(3));

            }
            Console.WriteLine(leaves.Count);
            Console.Read();
        }
    }
}
