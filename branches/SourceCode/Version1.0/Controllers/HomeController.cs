using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SynergyRMS.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View("Home");
            
        }

        public ActionResult Home()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            //return View("Home");
            return View("Login", "Account");
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
