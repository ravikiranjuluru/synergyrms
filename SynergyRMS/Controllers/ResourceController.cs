using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.Profile;

namespace SynergyRMS.Controllers
{
    public class ResourceController : Controller
    {
        

        public ActionResult ViewTeam()
        {
            return View("ViewTeam");
        }

        #region Department
        public ActionResult Department()
        {
            return View("Department");
        }
        [HttpPost]
        public ActionResult Department(FormCollection form)
        {
            try
            {
                bool status = true;
                //status = objDepartment.SaveOrUpdate(form["txtDeprtName"].ToString(), form["txtDeprtDesc"].ToString());
                if (status)
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "New Department Successfully Created.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in Department Creation.";
                }
            }
            catch
            {
            }            
            return View("Department");
        }
        #endregion Department


        #region Role
        public ActionResult Role()
        {
            string[] allroles = Roles.GetAllRoles();
           
            if (allroles.Length > 0)
            {
                List<string> roleList = new List<string>();                
                foreach (string role in allroles)
                    if (role != null)
                        roleList.Add(role.ToString());
                ViewData["RoleList"] = new SelectList(roleList);
            }
           
            return View("Role");
        }
        [HttpPost]
        public ActionResult Role(FormCollection form)
        {
           try
            {
                bool status = true;
                //Roles.CreateRole(form["txtRole"].ToString());                
                if (status)
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "New Role Successfully Created.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in Role Creation.";
                }
            }
            catch
            {
            }            
            return View("Role");
        }

        public ActionResult EditRole(string rolename)
        {
            string[] allroles = Roles.GetAllRoles();

            if (allroles.Length > 0)
            {
                List<string> roleList = new List<string>();
                foreach (string role in allroles)
                    if (role != null)
                        roleList.Add(role.ToString());
                ViewData["roleList"] = new SelectList(roleList);
            }
            ViewData["EditRole"] = rolename;
            return View("Role");
        }

        public ActionResult Permission()
        {
            string[] allroles = Roles.GetAllRoles();

            if (allroles.Length > 0)
            {
                List<string> roleList = new List<string>();
                foreach (string role in allroles)
                    if (role != null)
                        roleList.Add(role.ToString());
                ViewData["RoleList"] = new SelectList(roleList);
            }
            return View("RolePermission");
        }
      
        [HttpPost]
        public ActionResult LoadPermission(FormCollection form)
        {
            string[] allroles = Roles.GetAllRoles();

            string selectedRole = form["ddRoles"].ToString();

            if (allroles.Length > 0)
            {
                List<string> roleList = new List<string>();
                roleList.Add(selectedRole);
                foreach (string role in allroles)
                {
                    if (role != null)
                    {
                        if (role != selectedRole)
                        {
                            roleList.Add(role.ToString());
                        }
                    }
                }
                ViewData["RoleList"] = new SelectList(roleList);
                ViewData["EditRole"] = selectedRole;
            }
            return View("RolePermission");
        }
        [HttpPost]
        public ActionResult SetPermission(FormCollection form)
        {
            try
            {
                bool status = true;
                //CheckBoxList boc = (CheckBoxList)form["CheckBoxListPermission"];
                //status = objRole.AddPermissionToRole(role,perimission[]);             
                if (status)
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "New Role Permission Successfully Assigned.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in Role Permission Assign.";
                }
            }
            catch
            {
            }           
            return View("RolePermission");
        }


        #endregion Role


        #region User
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult NewUser(FormCollection form)
        {
            try
            {
                bool status = true;

                MembershipCreateStatus createStatus;                
                var newuser = Membership.CreateUser(form["txtUsername"].ToString(), form["txtPassword"].ToString(),
                    form["txtEmail"].ToString(), "", "", true, out createStatus);


                if (createStatus == MembershipCreateStatus.Success)
                {
                    Roles.AddUserToRole(newuser.UserName, "User");
                    var profile = ProfileBase.Create(newuser.UserName);
                    profile.SetPropertyValue("FirstName", form["txtFirstName"].ToString());
                    profile.SetPropertyValue("LastName", form["txtLastName"].ToString());
                    profile.SetPropertyValue("Phone", form["txtPhone"].ToString());                   
                    profile.Save();


                    ViewData["status"] = "Success";
                    ViewData["msg"] = "New User Successfully Created.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = createStatus.ToString();
                    //ViewData["msg"] = "Error in User Creation.";
                }

                          
               
            }
            catch (MembershipCreateUserException ex)
            {
                ViewData["status"] = "Error";
                ViewData["msg"] = ex.Message;
            }
            catch
            {
            }           
            return View("Index");
        }
        
        public ActionResult AddRole()
        {
            return View("IndexRole");
        }
        [HttpPost]
        public ActionResult AddRole(FormCollection form)
        {
            try
            {
                bool status = true;
                //CheckBoxList boc = (CheckBoxList)form["CheckBoxListPermission"];
                //status = objRole.AddRolePermissionToUser(username,rolePermission[][]);             
                if (status)
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "New Role Permission Successfully Assigned.";
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in Role Permission Assign.";
                }
            }
            catch
            {
            }           
            return View("IndexRole");
        }
        public ActionResult AddSkill()
        {
            return View("IndexSkills");
        }
        public ActionResult InterestProjects()
        {
            return View("IndexInterestProjects");
        }
        #endregion User


        public ActionResult Resources()
        {
            return View("ViewResources");
        }
        public ActionResult Schedule()
        {
            return View("Schedule");
        }
        public ActionResult Calendar()
        {
            return View("ScheduleCalendar");
        }
        public ActionResult Utilisation()
        {
            return View("ScheduleUtilisation");
        }
       

       

    }
}
