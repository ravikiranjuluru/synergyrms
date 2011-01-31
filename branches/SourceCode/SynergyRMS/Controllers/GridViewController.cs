using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SynergyRMS.Controllers
{
    public class GridViewController : Controller
    {
        //
        // GET: /GridView/

        public ActionResult Index()
        {
            return View("ProjectSchedule");
        }

    }
}
