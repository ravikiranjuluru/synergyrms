using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SynergyRMS.Models;

namespace SynergyRMS.Controllers
{
    public class GridViewController : Controller
    {
        //
        // GET: /GridView/

        private SelectList GetAllProjects()
        {
            List<PM_Projects> allProject = SynergyService.GetAllProjects();
            SelectList projectlist = new SelectList(allProject, "ProjectId", "ProjectName");
            return projectlist;
        }

        #region ProjectSchedule
        public ActionResult Index()
        {
            ViewData["ProjectList"] = GetAllProjects();
            return View("Gantt");
        }
        public ActionResult ProjectSchedule(FormCollection form)
        {
            int selectprojectid = Convert.ToInt32(form["ddProject"]);
            PM_Projects project = SynergyService.GetProjectbyProjectId(selectprojectid);
            ViewData["ProjectLoad"] = project;
            ViewData["ProjectList"] = GetAllProjects();
            return View("Gantt");
        }

        #endregion ProjectSchedule

        //#region UserSchedule
        //public ActionResult Schedule()
        //{
        //    //ViewData["ProjectList"] = GetAllProjects();
        //    return View("ResourceSchedule");
        //}
        //[HttpPost]
        //public ActionResult Schedule(FormCollection form)
        //{   
        //    return View("ResourceSchedule");
        //}
        //#endregion UserSchedule


    }
}
