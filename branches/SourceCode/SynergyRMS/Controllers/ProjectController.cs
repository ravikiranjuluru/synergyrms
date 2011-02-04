using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
//using ServiceLayer;
using SynergyRMS.Models;
using System.Threading;
using System.Globalization;
using System.Collections;
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
                Project.Description = form["txtDescription"].ToString();
                Project.PM_Status = SynergyService.GetProjectStatusById(1);
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
            ViewData["ProjectList"] = SynergyService.GetAllProjects();
            ViewData["ProTypes"] = GetProjectTypes();
            return View("EditProject");
        }
        public ActionResult EditProjectLoad()
        {
            int proid = Convert.ToInt32(Request.QueryString["id"]);
            PM_Projects project = SynergyService.GetProjectbyProjectId(proid);
            ViewData["EditProject"] = project;
            ViewData["ProTypes"] = GetProjectTypes();
            return View("EditProjectForm");
        }
        [HttpPost]
        public ActionResult EditProject(FormCollection form)
        {
            try
            {
                int editproid = Convert.ToInt32(form["hdnid"].ToString());
                PM_Projects project = SynergyService.GetProjectbyProjectId(editproid);
                project.ProjectCode = form["txtCode"].ToString();
                project.ProjectName = form["txtprojectname"].ToString();
                //Thread.CurrentThread.CurrentCulture = new CultureInfo("de-DE");
                project.ProjectStartDate = Convert.ToDateTime(form["projectstartdate"]);
                project.ProjectEndDate = Convert.ToDateTime(form["projectenddate"]);
                
                project.PM_Types = SynergyService.GetProjectTypebyId(Convert.ToInt32(form["ddProTypes"].ToString()));
                if (form["chckStatus"] != null)
                {
                    project.PM_Status = SynergyService.GetProjectStatusById(1);
                    project.PM_Status.StatusId = Convert.ToInt32(form["chckStatus"].ToString());
                }
                 
                SynergyService.UpdateProject(project);
                ViewData["status"] = "Success";
                ViewData["msg"] = "Project Successfully Updated.";
                ViewData["EditProject"] = project;
            }
            catch(Exception ee)
            {
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in Project Update.";
            }


            return View("EditProjectForm");
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
