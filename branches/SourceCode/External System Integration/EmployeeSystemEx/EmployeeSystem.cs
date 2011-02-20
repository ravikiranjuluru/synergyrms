using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmployeeAdapter;

namespace EmployeeSystemEx
{
   public  class EmployeeSystem
    {
       private EmployeeDBEntities DbEntity;
       /// <summary>
       /// Gets the employee DB instance.
       /// </summary>
       /// <returns></returns>
       private EmployeeDBEntities GetEmployeeDBInstance()
       {
           if (DbEntity == null)
           {
               DbEntity = new EmployeeDBEntities();
           }
           return DbEntity;
       }

       /// <summary>
       /// Gets the employee info.
       /// </summary>
       /// <param name="NIC">The NIC.</param>
       /// <returns></returns>
       public EmployeeEntity GetEmployeeInfo(string NIC)
       {
           EmployeeEntity employee = null;
           try
           {
               var employeeQuery = from E in GetEmployeeDBInstance().Employee
                                        
                                        select E;
               employee =AssembleEntity( employeeQuery.First());             
           }
           catch(Exception ex)
           {

           }
           return employee;
       }

       /// <summary>
       /// Assembles the entity.
       /// </summary>
       /// <param name="employee">The employee.</param>
       /// <returns></returns>
       private static EmployeeEntity AssembleEntity(Employee employee)
       {
           EmployeeEntity entity = new EmployeeEntity();

           entity.Address = employee.Address == null ? "" : employee.Address;
           entity.Email = employee.Email == null ? "" : employee.Email;
           entity.ExternalId = employee.NIC == null ? "" : employee.NIC;
           entity.FirstName = employee.FirstName== null ? "" : employee.FirstName;
           entity.LastName = employee.LastName== null ? "" : employee.LastName;
           entity.Phone = employee.Phone== null ? "" : employee.Phone;

           return entity;

       }

    }
}
