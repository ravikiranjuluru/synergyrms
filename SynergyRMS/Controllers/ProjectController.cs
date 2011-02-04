using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
//using ServiceLayer;
using SynergyRMS.Models;
namespace SynergyRMS.Controllers
{
    public class ProjectController : Controller
    {
        

        public ActionResult Index()
        {
            return View();
        }


        #region Create new project
        /// <summary>
        /// Gets the project types.
        /// </summary>
        /// <returns></returns>
        private SelectList GetProjectTypes()
        {
            List<PM_Types> allProTypes = SynergyService.GetAllTypes();
            SelectList list = new SelectList(allProTypes, "TypeId", "TypeName");
            return list;
        }

        /// <summary>
        /// ActionResult of the project.
        /// </summary>
        /// <returns></returns>
        public ActionResult NewProject()
        {
            ViewData["ProTypes"] = GetProjectTypes();
            return View("NewProject");
        }
        /// <summary>
        /// News the project.
        /// </summary>
        /// <param name="form">The form.</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult NewProject(FormCollection form)
        {
            try
            {               
                PM_Projects Project = new PM_Projects();
                Project.ProjectCode = form["txtCode"].ToString();
                Project.ProjectName = form["txtprojectname"].ToString();
                Project.ProjectStartDate = Convert.ToDateTime(form["projectstartdate"]);
                Project.ProjectEndDate = Convert.ToDateTime(form["projectenddate"]);
                Project.PM_Types = SynergyService.GetProjectTypebyId(Convert.ToInt32(form["ddProTypes"].ToString()));               
                SynergyService.SaveProject(Project);

                if (Project.ProjectId>0)
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
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in Project Creation.";
            }
            List<PM_Types> allProTypes = SynergyService.GetAllTypes();
            SelectList list = new SelectList(allProTypes, "TypeId", "TypeName");

            ViewData["ProTypes"] = GetProjectTypes();
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

            /*-------------------Update Project ------------------*/

            
            //PM_Projects selectedproject = SynergyService.GetProjectbyProjectId(5);


            //selectedproject.ProjectCode = "PM005-3";
            //selectedproject.Status = 1;
            //selectedproject.ProjectName = "testProject5.1";
            //selectedproject.ProjectStartDate = DateTime.Today;
            //selectedproject.ProjectEndDate = DateTime.Today.AddDays(150);


            //List<PM_Types> typeList = SynergyService.GetAllTypes();


            //PM_Types selectedType = typeList[1];
            //selectedproject.PM_Types = selectedType;


            //SynergyService.UpdateProject(selectedproject);



            return View("EditProject");
        }

        
        public ActionResult SaveProjectResources()
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
