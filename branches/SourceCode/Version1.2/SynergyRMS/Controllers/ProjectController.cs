using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
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
        private SelectList GetProjectTypesWithSelectedValue(PM_Types defaultValue)
        {
            List<PM_Types> allProTypes = SynergyService.GetAllTypes();
            SelectList list = new SelectList(allProTypes, "TypeId", "TypeName", defaultValue.TypeId);
           
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
        /// Create new project and save it in DB.
        /// </summary>
        /// <param name="form">The form.</param>
        /// <returns></returns>
        //[HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult NewProject(FormCollection form)
        {
            try
            {             
                PM_Projects Project = new PM_Projects();
                Project.ProjectCode = form["txtCode"].ToString();
                Project.ProjectName = form["txtprojectname"].ToString();
                Project.ProjectStartDate = Convert.ToDateTime(form["projectstartdate"]);
                Project.ProjectEndDate = Convert.ToDateTime(form["projectenddate"]);
                Project.Description = form["txtDescription"].ToString().Trim();
                Project.PM_Status = SynergyService.GetProjectStatusById(1);
                Project.PM_Types = SynergyService.GetProjectTypebyId(Convert.ToInt32(form["ddProTypes"].ToString()));               
                SynergyService.SaveProject(Project);
                
                if (Project.ProjectId>0)
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = String.Format("New Project {0} Successfully Created." , form["txtprojectname"].ToString());
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

        #region EditProject
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
            if (project.PM_Types == null)
            {
                ViewData["ProTypes"] = GetProjectTypes();
            }
            else
            {
                ViewData["ProTypes"] = GetProjectTypesWithSelectedValue(project.PM_Types);
            }
            return View("EditProjectForm");
        }

        //[HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult EditProject(FormCollection form)
        {
            int editproid = Convert.ToInt32(form["hdnid"].ToString());
            PM_Projects project = SynergyService.GetProjectbyProjectId(editproid);
            try
            {
                
                project.ProjectCode = form["txtCode"].ToString();
                project.ProjectName = form["txtprojectname"].ToString();
                project.Description = form["txtDescription"].ToString();
                //Thread.CurrentThread.CurrentCulture = new CultureInfo("de-DE");
                project.ProjectStartDate = Convert.ToDateTime(form["projectstartdate"]);
                project.ProjectEndDate = Convert.ToDateTime(form["projectenddate"]);
                
                project.PM_Types = SynergyService.GetProjectTypebyId(Convert.ToInt32(form["ddProTypes"].ToString()));
                int proStatus = form["chckStatus"] == null ? 0 : 1;
                if (form["chckStatus"] != null)
                {
                    project.PM_Status = SynergyService.GetProjectStatusById(1);
                    project.PM_Status.StatusId = proStatus;
                }
                 
                SynergyService.UpdateProject(project);
                ViewData["status"] = "Success";
                ViewData["msg"] = "Project Successfully Updated.";
                //ViewData["EditProject"] = project;
                
            }
            catch(Exception)
            {
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in Project Update.";
            }
            ViewData["EditProject"] = project;
            if (project.PM_Types == null)
            {
                ViewData["ProTypes"] = GetProjectTypes();
            }
            else
            {
                ViewData["ProTypes"] = GetProjectTypesWithSelectedValue(project.PM_Types);
            }

            return View("EditProjectForm");
        }
        private MembershipUserCollection GetAllUsers(MembershipUserCollection currentuserList)
        {
            MembershipUserCollection userList = Membership.GetAllUsers();
            MembershipUserCollection alluserList = new MembershipUserCollection();
            foreach (MembershipUser user in userList)
            {
                if (!Roles.IsUserInRole(user.UserName, "Admin"))
                {
                    alluserList.Add(user);
                    
                }
            }
            foreach (MembershipUser user in currentuserList)
            {
                alluserList.Remove(user.UserName);
            }
            return alluserList;
        }
        private MembershipUserCollection GetCurrentUsersOfProject(int proid)
        {
            return SynergyService.GetAssignedUsersByProjectId(proid);
        }


        public ActionResult AssignUsersProjectLoad()//*
        {
            int proid = Convert.ToInt32(Request.QueryString["id"]);
            PM_Projects project = SynergyService.GetProjectbyProjectId(proid);
            ViewData["EditProject"] = project;

            MembershipUserCollection currentuserList = GetCurrentUsersOfProject(proid);
            if (currentuserList.Count > 0)
            {
                ViewData["CurrentUserList"] = currentuserList;
            }
            MembershipUserCollection RemainuserList = GetAllUsers(currentuserList);
            if (RemainuserList.Count > 0)
            {
                ViewData["Userlist"] = RemainuserList;
            }
            return View("AssignUsers");
        }
        
        public ActionResult AssignUsertoProject(string uid,string pid)//*
        {
            
            MembershipUser user = Membership.GetUser(new Guid(uid));
            int projectid = Convert.ToInt32(pid);
            try
            {
                if (SynergyService.AssignUsersToProject(projectid, new Guid(uid)))
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "User Successfully Assigned.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in User Assigned.";
                }
            }
            catch (Exception )
            {
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in User Assigned.";
            }
            PM_Projects project = SynergyService.GetProjectbyProjectId(projectid);
            ViewData["EditProject"] = project;
            MembershipUserCollection currentuserList = SynergyService.GetAssignedUsersByProjectId(projectid);
            if (currentuserList.Count > 0)
            {
                ViewData["CurrentUserList"] = currentuserList;
            }
            MembershipUserCollection RemainuserList = GetAllUsers(currentuserList);
            if (RemainuserList.Count > 0)
            {
                ViewData["Userlist"] = RemainuserList;
            }
           
            return View("AssignUsers");
        }


        public ActionResult DeleteUserfromProject(string uid, string pid)
        {
            MembershipUser user = Membership.GetUser(new Guid(uid));
            int projectid = Convert.ToInt32(pid);
            try
            {
                if (SynergyService.DeleteAssignUsersfromProject(projectid, user.UserName))
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "User Successfully Deleted.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in User delete.";
                }
            }
            catch (Exception ee)
            {
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in User delete.";
            }
            PM_Projects project = SynergyService.GetProjectbyProjectId(projectid);
            ViewData["EditProject"] = project;
            MembershipUserCollection currentuserList = SynergyService.GetAssignedUsersByProjectId(projectid);
            if (currentuserList.Count > 0)
            {
                ViewData["CurrentUserList"] = currentuserList;
            }
            MembershipUserCollection RemainuserList = GetAllUsers(currentuserList);
            if (RemainuserList.Count > 0)
            {
                ViewData["Userlist"] = RemainuserList;
            }

            return View("AssignUsers");
        }
        #endregion EditProject

        #region unused methods
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
        #endregion unusedmedthods
    }
}
