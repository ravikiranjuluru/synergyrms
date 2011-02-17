using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SynergyRMS.Controllers
{
    public class DashboardController: Controller
    {

        [Authorize(Roles = "Admin, User")]
        public ActionResult Index()
        {
            return View();
        }

    }
}
