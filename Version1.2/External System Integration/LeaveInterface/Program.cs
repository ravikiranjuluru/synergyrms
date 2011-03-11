using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LeaveAdapter;
namespace EmployeeSystemEx
{
    class Program
    {
        static void Main(string[] args)
        {

            LeaveSystemEx.LeaveSystem system = new LeaveSystemEx.LeaveSystem();
            EmployeeLeaveEntity entity=new EmployeeLeaveEntity();
            entity.userId="832594342V";
            List<EmployeeLeaveEntity> leavelist = new List<EmployeeLeaveEntity>();
            leavelist = system.GetEmployeeLeave(entity.userId, DateTime.Now, DateTime.Now);



            Console.WriteLine(leavelist.Count);
            
            Console.Read();

        }
    }
}
