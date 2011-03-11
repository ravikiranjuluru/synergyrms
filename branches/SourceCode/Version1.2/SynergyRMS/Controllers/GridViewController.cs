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
        public ActionResult Schedule()
        {
            //ViewData["ProjectList"] = GetAllProjects();
            return View("ResourceSchedule");
        }

       // [HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ResourceSchedule(FormCollection form)
        {
            try
            {
                string fromdate = form["fromdate"].ToString();
                string todate = form["enddate"].ToString();

                var sdate = form["fromdate"];
                var edate = form["enddate"];

                DateTime fromdate1 = Convert.ToDateTime(sdate);
                DateTime fromdate2 = Convert.ToDateTime(edate);



                ViewData["fromdate"] = fromdate;
                ViewData["todate"] = todate;


                List<PM_ProjectResources> listResorce = new List<PM_ProjectResources>();
                listResorce = SynergyService.GetAllProjectResoucesByGivenPeriod(fromdate1, fromdate2);
                
                ViewData["LoadResourceList"] = listResorce;
                   
            }
            catch
            {
                //throw;
            }
            return View("ResourceSchedule");
        }
        //#endregion UserSchedule


    }
}
