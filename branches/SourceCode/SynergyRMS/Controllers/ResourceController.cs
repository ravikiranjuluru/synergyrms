using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SynergyRMS.Controllers
{
    public class ResourceController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ViewTeam()
        {
            return View("ViewTeam");
        }

        public ActionResult Department()
        {
            return View("Department");
        }

        public ActionResult Role()
        {
            return View("Role");
        }

    }
}
