﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.Profile;
using SynergyRMS.Models;
using System.Collections;
using EmployeeAdapter;
using LeaveAdapter;
//using EmployeeSystemEx;


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
        //[HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]

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

        private SelectList GetAllRoleswithUserSelectedValue(string username)//*
        {
            string[] allroles = Roles.GetAllRoles();
            List<string> roleList = new List<string>();
            if (allroles.Length > 0)
            {
                foreach (string role in allroles)
                    if (role != null)
                        roleList.Add(role.ToString());
            }
            string[] rolename = Roles.GetRolesForUser(username);
            return new SelectList(roleList, rolename[0].ToString());
        }


        public ActionResult Role()//*
        {
            ViewData["RoleList"] = GetAllRoles();
            return View("Role");
        }
        public ActionResult LoadRolePermission()//*
        {
            string role = Request.QueryString["role"].ToString();

            Hashtable table = SynergyService.GetPermissionsByRoleName(role);
            ViewData["EditRole"] = role;
            ViewData["PermissionList"] = table;

            return View("RolePermission");
        }
        //[HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
        //save selected role permissions
        public ActionResult SetPermission(FormCollection form)//*
        {
            string editrole = form["hdnid"].ToString();
            //Hashtable tblpermission = SynergyService.GetPermissionsByRoleName(editrole);
            Hashtable tblpermission = new Hashtable();
            try
            {

                bool status = true;
                if (form["addProject"] != null)
                {
                    tblpermission[SynergyConstents.addProject] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.addProject] = false;
                }
                if (form["viewProject"] != null)
                {
                    tblpermission[SynergyConstents.viewProject] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.viewProject] = false;
                }
                if (form["editProject"] != null)
                {
                    tblpermission[SynergyConstents.editProject] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.editProject] = false;
                }
                if (form["deleteProject"] != null)
                {
                    tblpermission[SynergyConstents.deleteProject] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.deleteProject] = false;
                }

                if (form["assignToProject"] != null)
                {
                    tblpermission[SynergyConstents.assignToProject] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.assignToProject] = false;
                }
                if (form["viewProjectSchedule"] != null)
                {
                    tblpermission[SynergyConstents.viewProjectSchedule] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.viewProjectSchedule] = false;
                }
                if (form["viewProjectReports"] != null)
                {
                    tblpermission[SynergyConstents.viewProjectReports] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.viewProjectReports] = false;
                }

                if (form["addUser"] != null)
                {
                    tblpermission[SynergyConstents.addUser] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.addUser] = false;
                }
                if (form["viewUser"] != null)
                {
                    tblpermission[SynergyConstents.viewUser] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.viewUser] = false;
                }
                if (form["editUser"] != null)
                {
                    tblpermission[SynergyConstents.editUser] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.editUser] = false;
                }
                if (form["deleteUser"] != null)
                {
                    tblpermission[SynergyConstents.deleteUser] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.deleteUser] = false;
                }
                if (form["viewUserSchedule"] != null)
                {
                    tblpermission[SynergyConstents.viewUserSchedule] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.viewUserSchedule] = false;
                }



                if (form["addRole"] != null)
                {
                    tblpermission[SynergyConstents.addRole] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.addRole] = false;
                }
                if (form["editRolePermission"] != null)
                {
                    tblpermission[SynergyConstents.editRolePermission] = true;
                }
                else
                {
                    tblpermission[SynergyConstents.editRolePermission] = false;
                }
                status = SynergyService.SaveRolePermissions(tblpermission, editrole);

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
        //[HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
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
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in Role Creation.";
            }
            ViewData["RoleList"] = GetAllRoles();
          //  ViewData["DepartmentList"] = GetAllDepartments();
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

        #region User
        public ActionResult Index()//*
        {
            ViewData["RoleList"] = GetAllRoles();
            ViewData["DepartmentList"] = GetDepartmentList();
          

            return View();
        }
        public ActionResult NewUser(FormCollection form)//*
        {
            try
            {
                //bool status = true;

                MembershipCreateStatus createStatus;
                var newuser = Membership.CreateUser(form["txtusername"].ToString(), form["txtpwd"].ToString(),
                    form["txtemail"].ToString(), "PasswordQuestion", "PasswordQuestionAnswer", true, out createStatus);

                PM_MaxUserEfforts userEffort = new PM_MaxUserEfforts();
                userEffort.aspnet_Users = SynergyService.GetUserByName(newuser.UserName);

                if (form["txteffort"].ToString() == "")
                {
                    userEffort.MaxEffort = 0;
                }

                userEffort.MaxEffort =Convert.ToDecimal(form["txteffort"].ToString());
                SynergyService.SaveUserEffort(userEffort);


                if (createStatus == MembershipCreateStatus.Success)
                {
                    Roles.AddUserToRole(newuser.UserName, form["ddRoles"].ToString());
                    var profile = ProfileBase.Create(newuser.UserName);
                    profile.SetPropertyValue("FirstName", form["txtfirstname"].ToString());
                    profile.SetPropertyValue("LastName", form["txtlastname"].ToString());
                    profile.SetPropertyValue("Phone", form["txtphone"].ToString());
                    profile.Save();

                    List<string> ResourceInfo = new List<string>();

                    ResourceInfo.Add(form["txtfirstname"].ToString());
                    ResourceInfo.Add(form["txtusername"].ToString());
                    ResourceInfo.Add(form["txtpwd"].ToString());
                    ResourceInfo.Add(form["txtemail"].ToString());
                    ResourceInfo.Add(form["ddRoles"].ToString());

                    SendNotificationWhenAccountCreated(newuser.Email, ResourceInfo);

                    ResourceInfo = null;

                    if (!SynergyService.IsEmployeeSystemExternal())
                    {
                        try
                        {
                            EM_Employee employee = new EM_Employee();
                            employee.Email = form["txtemail"].ToString();
                            employee.ExternalId = form["txtnic"].ToString();
                            employee.FirstName = form["txtfirstname"].ToString();
                            employee.LastName = form["txtfirstname"].ToString();
                            employee.Phone = form["txtphone"].ToString();
                            string departmentId = form["ddlDepartments"].ToString();    
                           
                            employee.aspnet_Users = SynergyService.GetUserByName(newuser.UserName);
                            employee.EM_Departments = SynergyService.GetDepartmentbyId(Convert.ToInt32(departmentId));

                            SynergyService.UpdateEmployee(employee);
                            
                        }
                        catch
                        {
                        }
                    }
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
            ViewData["RoleList"] = GetAllRoles();
            ViewData["DepartmentList"] = GetDepartmentList();
            return View("Index");
        }


        private SelectList GetDepartmentList()
        {
            List<EM_Departments> allDeptTypes = SynergyService.GetDepartmentList();
            SelectList list = new SelectList(allDeptTypes, "DepartmentId", "DepartmentName");
            return list;
        }
        private SelectList GetDepartmentListwithUserSelectedValue(EM_Departments department)
        {
            List<EM_Departments> allDeptTypes = SynergyService.GetDepartmentList();
            //int selectdepid = 1;//SynergyService.GetDepartmentByUsername(username);
            SelectList list = new SelectList(allDeptTypes, "DepartmentId", "DepartmentName", department.DepartmentId);
            return list;
        }

        //this functions return user list without admin usrs for dropdowns
        public SelectList getAllNormalUsersforDropdown()
        {
            MembershipUserCollection userList = Membership.GetAllUsers();
            List<SelectListItem> itemsUser = new List<SelectListItem>();
            foreach (MembershipUser user in userList)
            {
                if (!Roles.IsUserInRole(user.UserName, "Admin"))
                {

                    var userprofile = new ProfileBase();
                    userprofile.Initialize(user.UserName, true);
                    string fname = userprofile.GetPropertyValue("FirstName").ToString();
                    string lname = userprofile.GetPropertyValue("LastName").ToString();

                    string userkey = user.ProviderUserKey.ToString();
                    SelectListItem item = new SelectListItem();
                    item.Text = fname + " " + lname;
                    item.Value = userkey;
                    itemsUser.Add(item);

                }
            }
            SelectList ddUserlist = new SelectList(itemsUser, "Value", "Text");
            return ddUserlist;
        }

        //this functions return user list without admin usrs by MembershipUserCollection
        public MembershipUserCollection getAllNormalUsersDatatable()
        {
            MembershipUserCollection userList = Membership.GetAllUsers();
            List<SelectListItem> itemsUser = new List<SelectListItem>();
            MembershipUserCollection userListReturn = new MembershipUserCollection();
            foreach (MembershipUser user in userList)
            {
                if (!Roles.IsUserInRole(user.UserName, "Admin"))
                {
                    userListReturn.Add(user);
                }
            }
            return userListReturn;
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
                MembershipUserCollection userlist = getAllNormalUsersDatatable();
                ViewData["Userlist"] = userlist;
            }
            catch (Exception )
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
            catch (Exception )
            {
                return RedirectToAction("AddRole", "Resource");
            }
            return View("AssignRoles");
        }

        //assign new role to edit user
        public ActionResult AssignRoletoEditUser(FormCollection form)//*
        {
            MembershipUser edituser = null;
            try
            {
                string userkey = form["hdnid"].ToString();
                string newrole = form["ddRoles"].ToString();
                if (userkey != null)
                {
                    edituser = Membership.GetUser(new Guid(userkey));

                    if (edituser != null)
                    {
                        bool isAssigned = Roles.IsUserInRole(edituser.UserName, newrole);
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
            catch (Exception )
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
            catch (Exception )
            {
                return RedirectToAction("Index", "Dashboard");
            }

            return View("IndexRole");
        }

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

        //[HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
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
                        string NIC=string.Empty;
                        PM_MaxUserEfforts userEffort=null;
                        try
                        {
                            Guid userId = new Guid(userkey);
                            EmployeeEntity entity = SynergyService.GetEmployeeEntity(SynergyService.GetUserById(userId).UserName);
                            
                            NIC= entity.ExternalId;

                             userEffort=SynergyService.GetUserEffortById(SynergyService.GetUserById(userId).UserName);
                           
                        }
                        catch
                        {
                        }
                        
                        ViewData["NIC"] = NIC;
                        ViewData["EditUser"] = edituser;
                        //ViewData["RoleList"] = GetAllRoles();
                        //ViewData["DepartmentList"] = GetDepartmentList();
                        ViewData["RoleList"] = GetAllRoleswithUserSelectedValue(edituser.UserName);

                        EM_Employee employee = SynergyService.GetEmployeebyEmpId(NIC);
                    EM_Departments department = employee.EM_Departments;
                    ViewData["DepartmentList"] = GetDepartmentListwithUserSelectedValue(department);

                        
                        ViewData["Effort"] = userEffort.MaxEffort;

                    }
                }

            }
            catch (Exception )
            {
                return RedirectToAction("AddRole", "Resource");
            }
            return View("EditUser");
        }
        //[HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult EditUser(FormCollection form)
        {
            string userkey = form["hdnid"].ToString();
            MembershipUser edituser = Membership.GetUser(new Guid(userkey));
            try
            {

                if (userkey != null)
                {

                    edituser.Email = form["txtemail"].ToString();


                    if (edituser != null)
                    {
                        var profile = new ProfileBase();
                        string selectRole = form["ddRoles"].ToString();
                        bool isInRole = Roles.IsUserInRole(edituser.UserName, selectRole);
                        string[] userCurrentRole = Roles.GetRolesForUser(edituser.UserName);
                        if (!isInRole)
                        {
                            string[] curntrole = Roles.GetAllRoles();
                            if (curntrole.Length > 0)
                            {
                                foreach (string removeRole in curntrole)
                                {
                                    bool isnotinRole = Roles.IsUserInRole(edituser.UserName, removeRole);
                                    if (isnotinRole)
                                    {
                                        Roles.RemoveUserFromRole(edituser.UserName, removeRole);
                                    }
                                }

                            }

                            Roles.AddUserToRole(edituser.UserName, selectRole);
                        }
                        profile.Initialize(edituser.UserName, true);
                        profile.SetPropertyValue("FirstName", form["txtfirstname"].ToString());
                        profile.SetPropertyValue("LastName", form["txtlastname"].ToString());
                        profile.SetPropertyValue("Phone", form["txtphone"].ToString());
                        profile.Save();



                        PM_MaxUserEfforts userEffort = SynergyService.GetUserEffortById(edituser.UserName);

                        if (form["txteffort"].ToString() == "")
                        {
                            userEffort.MaxEffort = 0;
                        }

                        
                        userEffort.MaxEffort =Convert.ToDecimal(form["txteffort"].ToString());
                        userEffort.aspnet_Users = SynergyService.GetUserByName(edituser.UserName);
                        SynergyService.UpdateUserEffort(userEffort);

                        List<string> ResourceInfo = new List<string>();


                        ResourceInfo.Add(form["txtfirstname"].ToString());
                        //ResourceInfo.Add(form["txtusername"].ToString());
                     
                        ResourceInfo.Add(form["txtemail"].ToString());
                        ResourceInfo.Add(form["ddRoles"].ToString());

                        //ResourceInfo.Add(form["txtfirstname"].ToString());
                        //ResourceInfo.Add(edituser.UserName);
                        //ResourceInfo.Add(form["txtpwd"].ToString());
                        //ResourceInfo.Add(form["txtemail"].ToString());
                        //ResourceInfo.Add(form["ddRoles"].ToString());



                        SendNotificationWhenAccountUpdated(edituser.Email, ResourceInfo);

                        //SendNotificationWhenAccountUpdated(edituser.Email, ResourceInfo);


                        //ResourceInfo = null;

                        if (!SynergyService.IsEmployeeSystemExternal())
                        {
                            try
                            {
                                string nic = form["hdnic"].ToString();

                                EM_Employee employee = SynergyService.GetEmployeebyEmpId(nic);
                                employee.Email = form["txtemail"].ToString();
                                employee.FirstName = form["txtfirstname"].ToString();
                                employee.LastName = form["txtlastname"].ToString();
                                employee.Phone = form["txtphone"].ToString();
                              
                               
                                string departmentId = form["ddlDepartments"].ToString();

                                employee.aspnet_Users = SynergyService.GetUserByName(edituser.UserName);
                                employee.EM_Departments = SynergyService.GetDepartmentbyId(Convert.ToInt32(departmentId));

                                

                                SynergyService.UpdateEmployee(employee);
                                ViewData["DepartmentList"] = GetDepartmentListwithUserSelectedValue(employee.EM_Departments);

                            }
                            catch
                            {
                            }
                        }
                    
                        ViewData["EditUser"] = edituser;

                        Membership.UpdateUser(edituser);
                        ViewData["status"] = "Success";
                        ViewData["msg"] = "User information updated successfully.";
                    }
                }

            }
            catch (Exception )
            {
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in User information update.";
                //return RedirectToAction("AddRole", "Resource");
            }
            ViewData["EditUser"] = edituser;
            //ViewData["RoleList"] = GetAllRoles();
            //ViewData["DepartmentList"] = GetDepartmentList();
            ViewData["RoleList"] = GetAllRoleswithUserSelectedValue(edituser.UserName);
         
            return View("EditUser");
        }

        public ActionResult PasswordReset(string id)
        {
            
            MembershipUser edituser = Membership.GetUser(new Guid(id));
            try
            {

                if (edituser != null)
                {
                    string newpwd = edituser.ResetPassword();
                    ViewData["resetpwd"] = newpwd;
                    ViewData["status"] = "Success";
                    ViewData["msg"] = "Password reset.";
                }
            }
            catch (Exception)
            {
                ViewData["status"] = "Error";
                ViewData["msg"] = "Error in User information update.";
                
            }
            
            ViewData["EditUser"] = edituser;
            ViewData["RoleList"] = GetAllRoles();
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
            catch (Exception )
            {
                return RedirectToAction("AssignRoles", "Resource");
            }
            return View("AssignRolesPermissions");
        }

        #region Userschedule
        public ActionResult Schedule()
        {
            MembershipUserCollection userList = Membership.GetAllUsers();
            List<SelectListItem> itemsUser = new List<SelectListItem>();
            foreach (MembershipUser user in userList)
            {
                if (!Roles.IsUserInRole(user.UserName, "Admin"))
                {

                    var userprofile = new ProfileBase();
                    userprofile.Initialize(user.UserName, true);
                    string fname = userprofile.GetPropertyValue("FirstName").ToString();
                    string lname = userprofile.GetPropertyValue("LastName").ToString();

                    string userkey = user.ProviderUserKey.ToString();
                    SelectListItem item = new SelectListItem();
                    item.Text = fname + " " + lname;
                    item.Value = userkey;
                    itemsUser.Add(item);

                }
            }
            SelectList ddUserlist = new SelectList(itemsUser, "Value", "Text");
            ViewData["Userlist"] = ddUserlist;
            return View();
        }
        // [HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ViewSchedule(FormCollection form)
        {
            string viewuserkey = form["ddUsersList"].ToString();
            MembershipUserCollection userList = Membership.GetAllUsers();
            List<SelectListItem> itemsUser = new List<SelectListItem>();
            string ediusernamedisplay = "";
            foreach (MembershipUser user in userList)
            {
                if (!Roles.IsUserInRole(user.UserName, "Admin"))
                {

                    var userprofile = new ProfileBase();
                    userprofile.Initialize(user.UserName, true);
                    string fname = userprofile.GetPropertyValue("FirstName").ToString();
                    string lname = userprofile.GetPropertyValue("LastName").ToString();

                    string userkey = user.ProviderUserKey.ToString();
                    if (viewuserkey == userkey)
                    {
                        ediusernamedisplay = fname + " " + lname;
                    }
                    SelectListItem item = new SelectListItem();
                    item.Text = fname + " " + lname;
                    item.Value = userkey;
                    itemsUser.Add(item);

                }
            }
            SelectList ddUserlist = new SelectList(itemsUser, "Value", "Text");
            ViewData["Userlist"] = ddUserlist;
            ViewData["ViewUser"] = ediusernamedisplay;
            ViewData["UserProjectList"] = SynergyService.getUserProjects(viewuserkey);
            return View("Schedule");
        }
        #endregion userschedule

        public ActionResult AddSkill()
        {
            return View("IndexSkills");
        }
        public ActionResult InterestProjects()
        {
            return View("IndexInterestProjects");
        }
        #endregion User

        #region Notification

        private static bool AllowEmailNotifications()
        {
            if (System.Configuration.ConfigurationSettings.AppSettings["AllowEmailNotification"] == "True")
            {
                return true;
            }
            return false;
        }

        private static void SendNotificationWhenAccountCreated(string email, List<string> ResourceInfo)
        {
            try
            {
                if (AllowEmailNotifications())
                {
                    MailManager.SendMail(email, MailManager.messageFlag.AccountCreated, ResourceInfo);
                }
            }
            catch
            {
            }
        }

        private static void SendNotificationWhenAccountUpdated(string email, List<string> ResourceInfo)
        {
            try
            {
                if (AllowEmailNotifications())
                {
                    MailManager.SendMail(email, MailManager.messageFlag.AccountEdited, ResourceInfo);
                }
            }
            catch
            {
            }
        }

        #endregion Notification

        public ActionResult ViewUserLeave()
        {

            Guid guid = new Guid(Request.QueryString["id"]);
            List<EmployeeLeaveEntity> leaveEntityList = SynergyService.GetEmployeeleave(guid);
            ViewData["UserLeave"] = leaveEntityList;
            return View("ViewUserLeave");
        }

        public ActionResult Resources()
        {
            return View("ViewResources");
        }
        public ActionResult Calendar()
        {
            return View("ScheduleCalendar");
        }


    }
}
