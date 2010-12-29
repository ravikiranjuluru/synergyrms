using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SynergyRMS.Controllers
{
    public class MyWorkController : Controller
    {
        //
        // GET: /MyWork/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Projects()
        {
            return View("Projects");
        }
        public ActionResult Documents()
        {
            return View("Documents");
        }


    }
}
