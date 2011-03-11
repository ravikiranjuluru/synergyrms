using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

//using LeaveSystemEx;
namespace LeaveAdapter
{
    /// <summary>
    /// 
    /// </summary>
    public class SynergyLeaveAdapter
    {
        /// <summary>
        /// Gets the employee leave info.
        /// </summary>
        /// <param name="leaveEntity">The leave entity.</param>
        /// <returns></returns>
        public static List<EmployeeLeaveEntity> GetEmployeeLeaveInfo(EmployeeLeaveEntity leaveEntity)
        {
            Assembly leaveAssembly =
            Assembly.LoadFile(AppDomain.CurrentDomain.BaseDirectory + "LeaveSystemEx.dll");
            AssemblyName leaveAssemblyName = leaveAssembly.GetName();

            Object leaveSystem = leaveAssembly.CreateInstance("LeaveSystemEx.LeaveSystem");

            MethodInfo leaveMethod = leaveAssembly.GetType("LeaveSystemEx.LeaveSystem").GetMethod("GetEmployeeLeave");
            List<EmployeeLeaveEntity> leaveList = (List<EmployeeLeaveEntity>)leaveMethod.Invoke(leaveSystem, new Object[] { leaveEntity.userId, leaveEntity.startDate, leaveEntity.endDate });

            return leaveList;
        }

    }
}
