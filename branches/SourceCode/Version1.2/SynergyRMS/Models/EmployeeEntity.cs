using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SynergyRMS.Models
{
   public  class EmployeeEntity
    {
        public string ExternalId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string username { get; set; }
    }
}
