using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
//using ServiceLayer;

namespace SynergyRMS.Controllers
{
    public class ProjectController : Controller
    {
        //public ServiceProject objProject;

        public ActionResult Index()
        {
            return View();
        }


        #region project
        public ActionResult NewProject()
        {
            return View("NewProject");
        }
        [HttpPost]
        public ActionResult NewProject(FormCollection form)
        {
            try
            {
                bool status = true;
                //status = objProject.SaveOrUpdate(form["projectname"].ToString(), form["projectdesc"].ToString());
                if (status)
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "New Project Successfully Created.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in Project Creation.";
                }
            }
            catch
            {
            }
            return View("NewProject");
        }
        #endregion project


        public ActionResult EditProject()
        {
            //IList<FeedbackSector> sector = _serviceUtil.GetFeedbackSectorsAll();
            //List<string> sectorList = new List<string>();
            //sectorList.Add("Not Applicable");
            //foreach (FeedbackSector s in sector)
            //    if (s != null)
            //        sectorList.Add(s.Sector);
            //ViewData["SectorList"] = new SelectList(sectorList);

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
        public ActionResult Task()
        {
            return View("NewTask");
        }
        public ActionResult Assign()
        {
            return View("AssignTask");
        }
    }
}
