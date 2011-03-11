using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmployeeAdapter;


namespace SynergyRMS.Models
{
  public  class SynergyEmployeeManagement:IEmployeeManagement
    {

      public EmployeeEntity GetEmployeeInfo(EmployeeEntity employee)
      {
          EmployeeEntity entity = new EmployeeEntity();
          Guid id = SynergyService.GetUserByName(employee.username).UserId;
          EM_Employee emp = SynergyService.GetEmployee(id);

          return AssembleEntity(emp);

      }

      /// <summary>
      /// Assembles the entity.
      /// </summary>
      /// <param name="employee">The employee.</param>
      /// <returns></returns>
      private  EmployeeEntity AssembleEntity(EM_Employee employee)
      {
          EmployeeEntity entity = new EmployeeEntity();

          entity.Address = employee.Address;
          entity.Email = employee.Email;
          entity.FirstName = employee.FirstName;
          entity.LastName = employee.LastName;
          entity.Phone = employee.Phone;
          entity.ExternalId = employee.ExternalId;
          return entity;
      }
    }
}
