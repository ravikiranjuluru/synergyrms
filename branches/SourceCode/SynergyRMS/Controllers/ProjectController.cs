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
        //public ServiceProject objProject;

        public ActionResult Index()
        {
            return View();
        }


        #region project
        public ActionResult NewProject()
        {

            /*-------------------Save Project ------------------*/
            PM_Projects pmProjects = new PM_Projects();
            pmProjects.ProjectCode = "PM005-4";
            pmProjects.Status = 1;
            pmProjects.ProjectName = "testProject6";
            pmProjects.ProjectStartDate = DateTime.Today;
            pmProjects.ProjectEndDate = DateTime.Today.AddDays(200);


            List<PM_Types> typeList = SynergyService.GetAllTypes();


            PM_Types selectedType = typeList[1];
            pmProjects.PM_Types = selectedType;


            SynergyService.SaveProject(pmProjects);
            

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
                string formstatus = form["chkactive"].ToString();
               // string edate = form["calstartdate"].ToString();
               // string sdate = form["calenddate"].ToString();
                /*-------------------Save Project ------------------*/
                PM_Projects pmProjects = new PM_Projects();
                pmProjects.ProjectCode = code;
                if (formstatus == "On")
                {
                    pmProjects.Status = 1;
                }
                else
                {
                    pmProjects.Status = 0;
                }
              //  pmProjects.Status = 1;
                pmProjects.ProjectName = pname;
                pmProjects.ProjectStartDate = DateTime.Today;
                pmProjects.ProjectEndDate = DateTime.Today.AddDays(200);


                List<PM_Types> typeList = SynergyService.GetAllTypes();


                PM_Types selectedType = typeList[1];
                pmProjects.PM_Types = selectedType;


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

            /*-------------------Update Project ------------------*/

            
            PM_Projects selectedproject = SynergyService.GetProjectbyProjectId(5);


            selectedproject.ProjectCode = "PM005-3";
            selectedproject.Status = 1;
            selectedproject.ProjectName = "testProject5.1";
            selectedproject.ProjectStartDate = DateTime.Today;
            selectedproject.ProjectEndDate = DateTime.Today.AddDays(150);


            List<PM_Types> typeList = SynergyService.GetAllTypes();


            PM_Types selectedType = typeList[1];
            selectedproject.PM_Types = selectedType;


            SynergyService.UpdateProject(selectedproject);



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
