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
        public ActionResult NewProject()
        {
            List<PM_Types> allProTypes = SynergyService.GetAllTypes();
            SelectList list = new SelectList(allProTypes,"TypeId","TypeName");
        
            ViewData["ProTypes"] = list;

            return View("NewProject");
        }
        [HttpPost]
        public ActionResult NewProject(FormCollection form)
        {
            try
            {
               

                string code = form["txtCode"].ToString();
                string pname = form["txtprojectname"].ToString();
                string pdesc = form["txtDescription"].ToString();
                string proType = form["ddProTypes"].ToString();               
                DateTime sdate  = Convert.ToDateTime(form["calstartdate"]);
                DateTime edate = Convert.ToDateTime(form["calenddate"]);
                /*-------------------Save Project ------------------*/
                PM_Projects pmProjects = new PM_Projects();
                pmProjects.ProjectCode = code;                
                pmProjects.ProjectName = pname;
                pmProjects.ProjectStartDate = sdate;
                pmProjects.ProjectEndDate = sdate;

                List<PM_Types> typeList = SynergyService.GetAllTypes();
                PM_Types selectedType = typeList[1];
                pmProjects.PM_Types.TypeId =Convert.ToInt32(proType);

                SynergyService.SaveProject(pmProjects);
                
                 

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
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in Project Creation.";
            }
            List<PM_Types> allProTypes = SynergyService.GetAllTypes();
            SelectList list = new SelectList(allProTypes, "TypeId", "TypeName");

            ViewData["ProTypes"] = list;
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
