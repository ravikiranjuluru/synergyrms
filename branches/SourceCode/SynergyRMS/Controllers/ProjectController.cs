using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SynergyRMS.Controllers
{
    public class ProjectController : Controller
    {
        //
        // GET: /Project/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult NewProject()
        {
            return View("NewProject");
        }

        public ActionResult EditProject()
        {
            return View("EditProject");
        }

        public ActionResult Docs()
        {
            return View("Docs");
        }
    }
}
