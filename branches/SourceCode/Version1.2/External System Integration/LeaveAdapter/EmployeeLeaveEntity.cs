using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LeaveAdapter
{
   public  class EmployeeLeaveEntity
    {
       public int noofLeave { get; set; }
       public int LeaveTypeId { get; set; }
       public string userId { get; set; }
       public DateTime leaveDate { get; set; }
       public DateTime startDate { get; set; }
       public DateTime endDate { get; set; }
       public string description { get; set; }
    }
}
