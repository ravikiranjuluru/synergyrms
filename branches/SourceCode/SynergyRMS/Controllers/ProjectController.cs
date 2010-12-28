using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SynergyRMS.Controllers
{
    public class ProjectController : Controller
    {
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

        public ActionResult DocUpload()
        {
            return View("DocUpload");
        }
       
        public ActionResult FileUpload()
        {
            return View("FileUpload");
        }
    }
}
