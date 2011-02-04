using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.Profile;
using SynergyRMS.Models;
using System.Collections;

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
        private SelectList GetAllRoles()//*
        {
            string[] allroles = Roles.GetAllRoles();
            List<string> roleList = new List<string>();
            if (allroles.Length > 0)
            {                
                foreach (string role in allroles)
                    if (role != null)
                        roleList.Add(role.ToString());                
            }
            return new SelectList(roleList);
        }
        public ActionResult Role()//*
        {
            ViewData["RoleList"] = GetAllRoles();
            return View("Role");
        }
        public ActionResult LoadRolePermission()//*
        {
            string role = Request.QueryString["role"].ToString();
            
            Hashtable table =  SynergyService.GetPermissionsByRoleName(role);
            ViewData["EditRole"] = role;
            ViewData["PermissionList"] = table;
            
            return View("RolePermission");
        }
        [HttpPost]//save selected role permissions
        public ActionResult SetPermission(FormCollection form)//*
        {
            string editrole = form["hdnid"].ToString();
            Hashtable tblpermission = SynergyService.GetPermissionsByRoleName(editrole);
            try
            {
                
                bool status = true;
                if(form["addProject"] != null)
                {
                    tblpermission[SynergyConstents.addProject] = true;
                }
                if (form["editProject"] != null)
                {
                    tblpermission[SynergyConstents.editProject] = true;
                }
                if (form["deleteProject"] != null)
                {
                    tblpermission[SynergyConstents.deleteProject] = true;
                }
                if (form["addTask"] != null)
                {
                    tblpermission[SynergyConstents.addTask] = true;
                }
                if (form["editTask"] != null)
                {
                    tblpermission[SynergyConstents.editTask] = true;
                }
                if (form["deleteTask"] != null)
                {
                    tblpermission[SynergyConstents.deleteTask] = true;
                }            
                if (form["assignToProject"] != null)
                {
                    tblpermission[SynergyConstents.assignToProject] = true;
                }
                if (form["addUser"] != null)
                {
                    tblpermission[SynergyConstents.addUser] = true;
                }
                if (form["viewUser"] != null)
                {
                    tblpermission[SynergyConstents.viewUser] = true;
                }
                if (form["editUser"] != null)
                {
                    tblpermission[SynergyConstents.editUser] = true;
                }
                if (form["deleteUser"] != null)
                {
                    tblpermission[SynergyConstents.deleteUser] = true;
                }
                status= SynergyService.SaveRolePermissions(tblpermission, editrole);
                
                if (status)
                {
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "New Role Permission Successfully Updated.";
                    
                }
                else
                {
                    ViewData["status"] = "Error";
                    ViewData["msg"] = "Error in Role Permission update.";
                }
            }
            catch
            {
            }
            Hashtable table = SynergyService.GetPermissionsByRoleName(editrole);
            ViewData["EditRole"] = editrole;
            ViewData["PermissionList"] = table;
            return View("RolePermission");
        }
        [HttpPost]
        public ActionResult Role(FormCollection form)//*create new role
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
           ViewData["RoleList"] = GetAllRoles();
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
       
      
        //[HttpPost]
        //public ActionResult LoadPermission(FormCollection form)
        //{
        //    string[] allroles = Roles.GetAllRoles();

        //    string selectedRole = form["ddRoles"].ToString();

        //    if (allroles.Length > 0)
        //    {
        //        List<string> roleList = new List<string>();
        //        roleList.Add(selectedRole);
        //        foreach (string role in allroles)
        //        {
        //            if (role != null)
        //            {
        //                if (role != selectedRole)
        //                {
        //                    roleList.Add(role.ToString());
        //                }
        //            }
        //        }
        //        ViewData["PermissionList"] = loadPermissionForRole(selectedRole);
        //        ViewData["RoleList"] = new SelectList(roleList);
        //        ViewData["EditRole"] = selectedRole;
        //    }
        //    return View("RolePermission");
        //}

        //public bool[] loadPermissionForRole(string role)
        //{
        //    bool[] arrpermission = new bool[7];
        //    if (role == "User")
        //    {
        //        arrpermission[0] = true; //project - add
        //        arrpermission[1] = false; //project - edit
        //        arrpermission[2] = false; //project - delete
        //        arrpermission[3] = true; //task - add
        //        arrpermission[4] = false; //task - edit
        //        arrpermission[5] = false; //task - delete
        //        arrpermission[6] = true; //assign to task
        //    }
        //    else if (role == "Admin")
        //    {
        //        arrpermission[0] = false; //project - add
        //        arrpermission[1] = true; //project - edit
        //        arrpermission[2] = true; //project - delete
        //        arrpermission[3] = false; //task - add
        //        arrpermission[4] = true; //task - edit
        //        arrpermission[5] = true; //task - delete
        //        arrpermission[6] = true; //assign to task
        //    }

        //    return arrpermission;
        //}
        
        #endregion permission




        #region User
        public ActionResult Index()//*
        {
            return View();
        }
        public ActionResult NewUser(FormCollection form)//*
        {
            try
            {
                bool status = true;

                MembershipCreateStatus createStatus;
                var newuser = Membership.CreateUser(form["txtusername"].ToString(), form["txtpwd"].ToString(),
                    form["txtemail"].ToString(), "PasswordQuestion", "PasswordQuestionAnswer", true, out createStatus);


                if (createStatus == MembershipCreateStatus.Success)
                {
                    Roles.AddUserToRole(newuser.UserName, "User");
                    var profile = ProfileBase.Create(newuser.UserName);
                    profile.SetPropertyValue("FirstName", form["txtfirstname"].ToString());
                    profile.SetPropertyValue("LastName", form["txtlastname"].ToString());
                    profile.SetPropertyValue("Phone", form["txtphone"].ToString());                   
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
        
        //add role to user load all users
        public ActionResult AddRole()//*
        {
            try
            {
                //string[] arryUser = Roles.GetUsersInRole("User");
                //MembershipUserCollection userlist = new MembershipUserCollection();

                //foreach (var user in arryUser)
                //{
                //    MembershipUser u = Membership.GetUser(user);
                //    if (u != null)
                //        userlist.Add(u);
                //}
                //ViewData["Userlist"] = userlist;
                MembershipUserCollection userlist = Membership.GetAllUsers();
                ViewData["Userlist"] = userlist;
            }
            catch (Exception ex)
            {
                return RedirectToAction("Index", "Dashboard");
            }

            return View("IndexRole", ViewData["Userlist"]);
        }

        
        //edit seleceted user roles
        public ActionResult AssignRoles()//*
        {
            try
            {
                string userkey = Request.QueryString["id"].ToString();

                if (userkey != null)
                {
                    MembershipUser edituser = Membership.GetUser(new Guid(userkey));
                    
                    if (edituser != null)
                    {
                        //var name = edituser.UserName;
                        ViewData["EditUser"] = edituser;
                        ViewData["EditUserRolesList"] = Roles.GetRolesForUser(edituser.UserName).ToList<string>();
                        ViewData["RoleList"] = GetAllRoles();

                        ViewData["PermissionList"] = GetUserRolePermissions(edituser.UserName);
                    }
                }

            }
            catch (Exception ex)
            {
                return RedirectToAction("AddRole", "Resource");
            }
            return View("AssignRoles");
        }

        //assign new role to edit user
        public ActionResult AssignRoletoEditUser(FormCollection form)//*
        {
            MembershipUser edituser= null;
            try
            {
                string userkey = form["hdnid"].ToString();
                string newrole = form["ddRoles"].ToString();
                if (userkey != null)
                {
                    edituser = Membership.GetUser(new Guid(userkey));

                    if (edituser != null)
                    {
                        bool isAssigned = Roles.IsUserInRole(edituser.UserName,newrole);
                        if (isAssigned)
                        {
                            ViewData["status"] = "Error";
                            ViewData["msg"] = "Selected Role already assigned.";
                        }
                        else
                        {
                            Roles.AddUserToRole(edituser.UserName, newrole);
                            ViewData["status"] = "Success";
                            ViewData["msg"] = "New Role Successfully assigned.";
                        }
                        //ViewData["EditUser"] = edituser;
                        //ViewData["RoleList"] = GetAllRoles();
                        //ViewData["PermissionList"] = GetUserRolePermissions(edituser.UserName);
                    }
                }

            }
            catch (Exception ex)
            {
                //return RedirectToAction("AddRole", "Resource");
            }
            ViewData["EditUser"] = edituser;
            ViewData["RoleList"] = GetAllRoles();
            return View("AssignRoles");
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


        //Edit user information in the user list
        public ActionResult EditUser()
        {
            try
            {
                string userkey = Request.QueryString["id"].ToString();

                if (userkey != null)
                {
                    MembershipUser edituser = Membership.GetUser(new Guid(userkey));

                    if (edituser != null)
                    {
                        //var name = edituser.UserName;
                        ViewData["EditUser"] = edituser;
                    }
                }

            }
            catch (Exception ex)
            {
                return RedirectToAction("AddRole", "Resource");
            }
            return View("EditUser");
        }
        [HttpPost]
        public ActionResult EditUser(FormCollection form)
        {
            try
            {
                string userkey = form["hdnid"].ToString();

                if (userkey != null)
                {
                    MembershipUser edituser = Membership.GetUser(new Guid(userkey));
                    edituser.Email = form["txtemail"].ToString();
                    

                    if (edituser != null)
                    {
                        var profile = new ProfileBase();
                        profile.Initialize(edituser.UserName, true);
                        profile.SetPropertyValue("FirstName", form["txtfirstname"].ToString());
                        profile.SetPropertyValue("LastName", form["txtlastname"].ToString());
                        profile.SetPropertyValue("Phone", form["txtphone"].ToString());
                        profile.Save();

                        ViewData["EditUser"] = edituser;

                        Membership.UpdateUser(edituser);
                        TempData["status"] = "Success";
                        TempData["msg"] = "User information updated successfully.";
                    }
                }

            }
            catch (Exception ex)
            {
                //return RedirectToAction("AddRole", "Resource");
            }
            return View("EditUser");
        }

        

        public ActionResult AssignRolesEditPermission()
        {
            try
            {
                string userkey = Request.QueryString["id"].ToString();
                string role = Request.QueryString["role"].ToString();
                var edituser = Membership.GetUser(new Guid(userkey));

                if (edituser != null)
                {
                    var name = edituser.UserName;
                    ViewData["EditUser"] = edituser;
                    ViewData["EditRole"] = edituser;
                    ViewData["PermissionList"] = GetUserRolePermissions(edituser.UserName);
                }
            }
            catch (Exception ex)
            {
                return RedirectToAction("AssignRoles", "Resource");
            }
            return View("AssignRolesPermissions");
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
