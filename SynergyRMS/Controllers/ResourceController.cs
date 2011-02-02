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
                Roles.CreateRole(form["txtRole"].ToString());                
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
        #endregion Role

        #region permission
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
                ViewData["PermissionList"] = loadPermissionForRole(selectedRole);
                ViewData["RoleList"] = new SelectList(roleList);
                ViewData["EditRole"] = selectedRole;
            }
            return View("RolePermission");
        }

        public bool[] loadPermissionForRole(string role)
        {
            bool[] arrpermission = new bool[7];
            if (role == "User")
            {
                arrpermission[0] = true; //project - add
                arrpermission[1] = false; //project - edit
                arrpermission[2] = false; //project - delete
                arrpermission[3] = true; //task - add
                arrpermission[4] = false; //task - edit
                arrpermission[5] = false; //task - delete
                arrpermission[6] = true; //assign to task
            }
            else if (role == "Admin")
            {
                arrpermission[0] = false; //project - add
                arrpermission[1] = true; //project - edit
                arrpermission[2] = true; //project - delete
                arrpermission[3] = false; //task - add
                arrpermission[4] = true; //task - edit
                arrpermission[5] = true; //task - delete
                arrpermission[6] = true; //assign to task
            }

            return arrpermission;
        }
        [HttpPost]
        public ActionResult SetPermission(FormCollection form)
        {
            try
            {
                bool status = true;
                //CheckBoxList boc = (CheckBoxList)form["CheckBoxListPermission"];
                //status = objRole.AddPermissionToRole(role,perimission[]);   
                //string editRole = form["hndeditRole"].ToString();
                string note = form["txtNote"].ToString();
                string[] arrPermission;
                string ProAdd = "", ProEdit = "", ProDel = "";
                string TaskAdd = "", TaskEdit = "", TaskDel = "";
                string AssignToPro = "";

                ProAdd = form["chkProAdd"] != null ? "Check":"Uncheck";
                ProEdit = form["chkProEdit"] != null ? "Check" : "Uncheck";
                ProDel = form["chkProDelete"] != null ? "Check" : "Uncheck";
                TaskAdd = form["chkTaskAdd"] != null ? "Check" : "Uncheck";
                TaskEdit = form["chkTaskEdit"] != null ? "Check" : "Uncheck";
                TaskDel = form["chkTaskDelete"] != null ? "Check" : "Uncheck";
                AssignToPro = form["chkAssgnPro"] != null ? "Check" : "Uncheck";

                    if (status)
                    {
                        ViewData["status"] = "Success";
                        ViewData["msg"] = "New Role Permission Successfully Assigned.";
                        string[] allroles = Roles.GetAllRoles();

                        string selectedRole = "Admin";//form["hndeditRole"].ToString();

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
                        ViewData["PermissionList"] = loadPermissionForRole(selectedRole);
                        ViewData["RoleList"] = new SelectList(roleList);
                        ViewData["EditRole"] = selectedRole;
                    }

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
        #endregion permission




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
            try
            {
                string[] arryUser = Roles.GetUsersInRole("User");
                MembershipUserCollection userlist = new MembershipUserCollection();

                foreach (var user in arryUser)
                {
                    MembershipUser u = Membership.GetUser(user);
                    if (u != null)
                        userlist.Add(u);
                }
                ViewData["Userlist"] = userlist;
            }
            catch (Exception ex)
            {
                return RedirectToAction("Index", "Dashboard");
            }

            return View("IndexRole", ViewData["Userlist"]);
        }

        
        public ActionResult EditUserRole()//(string i)
        {
            try
            {
                string[] arryUser = Roles.GetUsersInRole("User");
                MembershipUserCollection userlist = new MembershipUserCollection();

                foreach (var user in arryUser)
                {
                    MembershipUser u = Membership.GetUser(user);
                    if (u != null)
                        userlist.Add(u);
                }
                ViewData["Userlist"] = userlist;

                //if (i != null)
                //{
                    //var edituser = Membership.GetUser(new Guid(i));
                var edituser = Membership.GetUser("user");
                    if (edituser != null)
                    {
                        var name = edituser.UserName;
                        ViewData["EditUser"] = name;
                        ViewData["PermissionList"] = GetUserRolePermissions(edituser.UserName);
                       
                    }
                //}
               
            }
            catch (Exception ex)
            {
                return RedirectToAction("Index", "Dashboard");
            }

            return View("IndexRole");
        }
        //public ActionResult EditUserRole(string i)
        //{
        //    try
        //    {
        //        string[] arryUser = Roles.GetUsersInRole("User");
        //        MembershipUserCollection userlist = new MembershipUserCollection();

        //        foreach (var user in arryUser)
        //        {
        //            MembershipUser u = Membership.GetUser(user);
        //            if (u != null)
        //                userlist.Add(u);
        //        }
        //        ViewData["Userlist"] = userlist;

        //        //if (i != null)
        //        //{
        //        //var edituser = Membership.GetUser(new Guid(i));
        //        var edituser = Membership.GetUser("user");
        //        if (edituser != null)
        //        {
        //            var name = edituser.UserName;
        //            ViewData["EditUser"] = name;
        //            ViewData["PermissionList"] = GetUserRolePermissions(edituser.UserName);

        //        }
        //        //}

        //    }
        //    catch (Exception ex)
        //    {
        //        return RedirectToAction("Index", "Dashboard");
        //    }

        //    return View("IndexRole");
        //}
        public bool[] GetUserRolePermissions(string username)
        {
            bool[] arrpermission = new bool[7];
            
                arrpermission[0] = true; //project - add
                arrpermission[1] = false; //project - edit
                arrpermission[2] = false; //project - delete
                arrpermission[3] = true; //task - add
                arrpermission[4] = false; //task - edit
                arrpermission[5] = false; //task - delete
                arrpermission[6] = true; //assign to task

            return arrpermission;
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
            return View("ResourceSchedule");
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
