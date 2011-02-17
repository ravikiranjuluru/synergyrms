using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace SynergyRMS
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "Default", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = "" } // Parameter defaults
            );
            //routes.MapRoute(
            //    "Defaultid", // Route name
            //    "{controller}/{action}/{id}", // URL with parameters
            //    new { controller = "Project", action = "AssignUsertoProject", id = "" } // Parameter defaults
            //);  
            
            //routes.MapRoute(
            //"Default",
            //"/Project/AssignUsertoProject/{id}",
            //new { controller = "Project", action = "AssignUsertoProject" }
            //);
          

        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            RegisterRoutes(RouteTable.Routes);
        }
    }
}