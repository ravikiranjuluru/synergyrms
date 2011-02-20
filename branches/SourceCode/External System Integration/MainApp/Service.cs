using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MainApp
{
  public  class Service
    {
        /// <summary>
        /// Gets the employee.
        /// </summary>
        /// <param name="name">The name.</param>
        /// <returns></returns>
      public static EM_Employee GetEmployee(Guid name)
      {
          aspnet_Users user = null;
          SynergyModelContainer db = new SynergyModelContainer();
          var userQuery = from p in db.EM_Employee
                          where p.aspnet_Users.UserId == name
                          select p;

          return userQuery.First();
      }
        /// <summary>
        /// Gets the employee external id.
        /// </summary>
        /// <param name="name">The name.</param>
        /// <returns></returns>
      public static string GetEmployeeExternalId(Guid name)
      {
          aspnet_Users user = null;
          SynergyModelContainer db = new SynergyModelContainer();
          var userQuery = from p in db.UM_ExternalId
                          where p.aspnet_Users.UserId == name
                          select p;

          return userQuery.First().ExternalId;
      }

      /// <summary>
      /// Gets the user external id.
      /// </summary>
      /// <param name="name">The name.</param>
      /// <returns></returns>
      public static string GetUserExternalId(Guid name)
      {
          aspnet_Users user = null;
          SynergyModelContainer db = new SynergyModelContainer();
          var userQuery = from p in db.LM_ExternalId
                          where p.aspnet_Users.UserId == name
                          select p;

          return userQuery.First().externalId;
      }


      /// <summary>
      /// Gets the name of the user by.
      /// </summary>
      /// <param name="name">The name.</param>
      /// <returns></returns>
      public static aspnet_Users GetUserByName(string name)
      {
          aspnet_Users user = null;
          SynergyModelContainer db = new SynergyModelContainer();
          var userQuery = from p in db.aspnet_Users
                          where p.UserName == name
                          select p;

          user = userQuery.First();
          return user;
      }
    }
}
