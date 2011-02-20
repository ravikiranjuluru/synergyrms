using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Web.Security;
using System.Configuration;
namespace SynergyRMS.Models
{
    /// <summary>
    /// SynergyService
    /// </summary>
    public class SynergyService
    {
        private static synergydbadminEntities _synergyRMSEntities = null;

        #region Utility Methods

        /// <summary>
        /// Gets the synegy RMS instance.
        /// </summary>
        /// <returns></returns>
        private static synergydbadminEntities GetSynegyRMSInstance()
        {
            if (_synergyRMSEntities == null)
            {
                _synergyRMSEntities = new synergydbadminEntities();
            }

            return _synergyRMSEntities;
        }

        #endregion

        #region Projects Methods

        /// <summary>
        /// Saves the project.
        /// </summary>
        /// <param name="project">The project.</param>
        public static void SaveProject(PM_Projects project)
        {
            try
            {
                GetSynegyRMSInstance().AddToPM_Projects(project);
                GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }


        /// <summary>
        /// Gets all projects.
        /// </summary>
        /// <returns></returns>
        public static List<PM_Projects> GetAllProjects()
        {
            try
            {
                return GetSynegyRMSInstance().PM_Projects.ToList();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Gets the project by project id.
        /// </summary>
        /// <param name="projectId">The project id.</param>
        /// <returns></returns>
        public static PM_Projects GetProjectbyProjectId(int projectId)
        {
            try
            {
                PM_Projects selectedproject = null;
                var projectQuery = from p in GetSynegyRMSInstance().PM_Projects
                                   where p.ProjectId == projectId
                                   select p;

                selectedproject = projectQuery.First();
                //List<PM_Projects> selectedprojects = projectQuery.ToList();
                //if (selectedprojects != null && selectedprojects.Count > 0)
                //{

                //    selectedproject = selectedprojects[0];

                //}
                return selectedproject;
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Updates the project.
        /// </summary>
        /// <param name="project">The project.</param>
        public static void UpdateProject(PM_Projects project)
        {
            try
            {
                int rowsAffected = GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Saves the project skills.
        /// </summary>
        /// <param name="skillList">The skill list.</param>
        public static void SaveProjectSkills(List<PM_ProjectSkills> skillList)
        {
            try
            {
                foreach (PM_ProjectSkills skill in skillList)
                {
                    if (skill.ProjectSkillId == 0)
                    {
                        GetSynegyRMSInstance().AddToPM_ProjectSkills(skill);
                    }
                    GetSynegyRMSInstance().SaveChanges();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Saves the project risks.
        /// </summary>
        /// <param name="risk">The risk.</param>
        public static void SaveProjectRisks(PM_ProjectRisks risk)
        {
            try
            {
                GetSynegyRMSInstance().AddToPM_ProjectRisks(risk);
                GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Loads the project skills by project id.
        /// </summary>
        /// <param name="projectId">The project id.</param>
        /// <returns></returns>
        public static PM_ProjectSkills LoadProjectSkillsByProjectId(int projectId)
        {
            try
            {
                PM_ProjectSkills selectedprojectSkill = null;
                var projectskillQuery = from p in GetSynegyRMSInstance().PM_ProjectSkills
                                        where p.PM_Projects.ProjectId == projectId
                                        select p;

                selectedprojectSkill = projectskillQuery.First();

                return selectedprojectSkill;

            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Gets the project status by id.
        /// </summary>
        /// <param name="statusId">The status id.</param>
        /// <returns></returns>
        public static PM_Status GetProjectStatusById(int statusId)
        {
            PM_Status projectStatus = null;
            var projectStatusQuery = from p in GetSynegyRMSInstance().PM_Status
                                     where p.StatusId == statusId
                                     select p;

            projectStatus = projectStatusQuery.First();
            return projectStatus;
        }



        #endregion

        #region Project Types Methods

        /// <summary>
        /// Gets the project type by id.
        /// </summary>
        /// <param name="typeId">The type id.</param>
        /// <returns></returns>
        public static PM_Types GetProjectTypebyId(int typeId)
        {
            try
            {
                PM_Types selectedType = null;
                var projectTypeQuery = from p in GetSynegyRMSInstance().PM_Types
                                       where p.TypeId == typeId
                                       select p;

                selectedType = projectTypeQuery.First();

                //List<PM_Types> selectedTypes = projectTypeQuery.ToList();
                //if (selectedTypes != null && selectedTypes.Count > 0)
                //{

                //    selectedType = selectedTypes[0];

                //}
                return selectedType;
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Gets all types.
        /// </summary>
        /// <returns></returns>
        public static List<PM_Types> GetAllTypes()
        {
            try
            {
                return GetSynegyRMSInstance().PM_Types.ToList();
            }
            catch (Exception e)
            {
                throw;
            }
        }

        /// <summary>
        /// Saves the type.
        /// </summary>
        /// <param name="type">The type.</param>
        public static void SaveType(PM_Types type)
        {
            try
            {
                GetSynegyRMSInstance().AddToPM_Types(type);
                GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Updates the type.
        /// </summary>
        /// <param name="type">The type.</param>
        public static void UpdateType(PM_Types type)
        {
            try
            {
                int rowsAffected = GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        #endregion

        #region Skills Methods


        /// <summary>
        /// Gets the skill by id.
        /// </summary>
        /// <param name="skillId">The skill id.</param>
        /// <returns></returns>
        public static PM_Skills GetSkillById(int skillId)
        {
            try
            {

                PM_Skills selectedSkill = null;
                var skillQuery = from s in GetSynegyRMSInstance().PM_Skills
                                 where s.SkillsId == skillId
                                 select s;

                selectedSkill = skillQuery.First();


                return selectedSkill;


            }
            catch (Exception)
            {
                throw;

            }
        }


        /// <summary>
        /// Gets all skills.
        /// </summary>
        /// <returns></returns>
        public static List<PM_Skills> GetAllSkills()
        {

            try
            {
                return GetSynegyRMSInstance().PM_Skills.ToList();
            }
            catch (Exception)
            {
                throw;
            }


        }

        /// <summary>
        /// Saves the skill.
        /// </summary>
        /// <param name="skill">The skill.</param>
        public static void SaveSkill(PM_Skills skill)
        {
            try
            {
                GetSynegyRMSInstance().AddToPM_Skills(skill);
                GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }


        /// <summary>
        /// Updates the skill.
        /// </summary>
        /// <param name="skill">The skill.</param>
        public static void UpdateSkill(PM_Skills skill)
        {
            try
            {
                int rowsAffected = GetSynegyRMSInstance().SaveChanges();

            }
            catch (Exception)
            {
                throw;
            }

        }



        #endregion

        #region User Skills Methods

        /// <summary>
        /// Saves the user skills.
        /// </summary>
        /// <returns></returns>
        //public static void SaveUserSkills(List<UM_UserSkills> skillList)
        //{
        //    try
        //    {
        //        foreach (UM_UserSkills skill in skillList)
        //        {
        //            if (skill.UserSkillId == 0)
        //            {
        //                GetSynegyRMSInstance().AddToUM_UserSkills(skill);
        //            }
        //            GetSynegyRMSInstance().SaveChanges();
        //        }
        //    }
        //    catch (Exception)
        //    {
        //        throw;
        //    }
        //}

        #endregion

        #region Project Resources

        public static PM_ProjectRoles GetProjectRoleByName(string name)
        {
            PM_ProjectRoles projectRole = null;
            var projectRoleQuery = from p in GetSynegyRMSInstance().PM_ProjectRoles
                                   where p.RoleName == name
                                   select p;

            projectRole = projectRoleQuery.First();
            return projectRole;
        }

        public static List<PM_ProjectRoles> GetAllProjectRoles()
        {
            return GetSynegyRMSInstance().PM_ProjectRoles.ToList();
        }

        /// <summary>
        /// Assigns the users to project.
        /// </summary>
        /// <param name="projectId">The project id.</param>
        /// <param name="userId">The user id.</param>
        /// <returns></returns>
        public static bool AssignUsersToProject(int projectId, Guid userId)
        {
            PM_Projects project = GetProjectbyProjectId(projectId);
            PM_ProjectResources resource = new PM_ProjectResources();
            resource.PM_Projects = project;
            resource.AllocatedEndDate = DateTime.Now;
            resource.AllocatedStartDate = DateTime.Now;
            resource.aspnet_Users = GetUserById(userId);
            SaveProjectResources(resource);

            if (AllowEmailNotifications())
            {
                resource.aspnet_Users.aspnet_MembershipReference.Load();
                SendNotificationWhenAssignedToProject(resource.aspnet_Users.aspnet_Membership.Email, resource);
            }

            return true;
        }

        public static bool DeleteAssignUsersfromProject(int projectId, Guid userId)
        {
            return true;
        }

        private static void SendNotificationWhenAssignedToProject(string email, PM_ProjectResources projectResources)
        {
            try
            {
                MailManager.SendMail(email, MailManager.messageFlag.AssignedProject, projectResources, GetAllProjectResoucesEmailIdsByProjectId(projectResources.PM_Projects.ProjectId,email));
            }
            catch
            {
            }
        }

        private static void SendNotificationWhenRemovedFromProject(string email, PM_ProjectResources projectResources)
        {
            try
            {
                MailManager.SendMail(email, MailManager.messageFlag.RemovedProject, projectResources, GetAllProjectResoucesEmailIdsByProjectId(projectResources.PM_Projects.ProjectId, email));
            }
            catch
            {
            }
        }

        private static void SendNotificationWhenUpdatedProject(string email, PM_ProjectResources projectResources)
        {
            try
            {
                MailManager.SendMail(email, MailManager.messageFlag.UpdatedProject, projectResources, GetAllProjectResoucesEmailIdsByProjectId(projectResources.PM_Projects.ProjectId, email));
            }
            catch
            {
            }
        }

        private static void SendNotificationAssignedScheduling(string email, PM_ProjectResources projectResources)
        {
            try
            {
                if (AllowEmailNotifications())
                {
                    MailManager.SendMail(email, MailManager.messageFlag.ScheduledAssigned, projectResources, GetAllProjectResoucesEmailIdsByProjectId(projectResources.PM_Projects.ProjectId, email));
                }
            }
            catch
            {
            }
        }

        private static void SendNotificationDeleteScheduling(string email, PM_ProjectResources projectResources)
        {
            try
            {
                if (AllowEmailNotifications())
                {
                    MailManager.SendMail(email, MailManager.messageFlag.ScheduledDelete, projectResources, GetAllProjectResoucesEmailIdsByProjectId(projectResources.PM_Projects.ProjectId, email));
                }
            }
            catch
            {
            }
        }

        private static void SendNotificationUpdateScheduling(string email, PM_ProjectResources projectResources)
        {
            try
            {
                if (AllowEmailNotifications())
                {
                    MailManager.SendMail(email, MailManager.messageFlag.ScheduledUpdate, projectResources, GetAllProjectResoucesEmailIdsByProjectId(projectResources.PM_Projects.ProjectId, email));
                }
            }
            catch
            {
            }
        }


        private static List<string> GetAllProjectResoucesEmailIdsByProjectId(int projectID, string email)
        {
            List<PM_ProjectResources> projectResourceList = GetAllProjectResoucesByProjectId(projectID);
            List<string> cCAdresses = new List<string>();

            foreach (PM_ProjectResources resource in projectResourceList)
            {
                string cCAddress = resource.aspnet_Users.aspnet_Membership.Email;
                if (email != cCAddress)
                    cCAdresses.Add(cCAddress);
            }

            return cCAdresses;
        }
        
        private static bool AllowEmailNotifications()
        {
            if (ConfigurationSettings.AppSettings["AllowEmailNotification"] == "True")
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Gets the resouce by id.
        /// </summary>
        /// <param name="id">The id.</param>
        /// <returns></returns>
        public static PM_ProjectResources GetResouceById(int id)
        {
            PM_ProjectResources Resouce = null;
            var ResouceQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                               where p.ProjectResorcesId == id
                               select p;

            Resouce = ResouceQuery.First();
            return Resouce;
        }



        /// <summary>
        /// Updates the project resources.
        /// </summary>
        /// <param name="projectResources">The project resources.</param>
        public static void UpdateProjectResources(List<PM_ProjectResources> projectResources)
        {
            try
            {
                PM_Projects project = SynergyService.GetProjectbyProjectId(1);
                List<PM_ProjectResources> resourcelist = project.PM_ProjectResources.ToList();

                foreach (PM_ProjectResources r in resourcelist)
                {
                    GetSynegyRMSInstance().DeleteObject(r);
                    GetSynegyRMSInstance().SaveChanges();

                    SendNotificationDeleteScheduling(r.aspnet_Users.aspnet_Membership.Email, r);
                }

                foreach (PM_ProjectResources resource in projectResources)
                {

                    GetSynegyRMSInstance().AddToPM_ProjectResources(resource);
                    GetSynegyRMSInstance().SaveChanges();

                    SendNotificationAssignedScheduling(resource.aspnet_Users.aspnet_Membership.Email, resource);
                }

            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Saves the project resources.
        /// </summary>
        /// <param name="projectResources">The project resources.</param>
        public static void SaveProjectResources(PM_ProjectResources projectResources)
        {
            try
            {
                GetSynegyRMSInstance().AddToPM_ProjectResources(projectResources);
                GetSynegyRMSInstance().SaveChanges();

                SendNotificationUpdateScheduling(projectResources.aspnet_Users.aspnet_Membership.Email, projectResources);
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Deletes the project resources.
        /// </summary>
        /// <param name="projectResources">The project resources.</param>
        public static void DeleteProjectResources(PM_ProjectResources projectResources)
        {
            try
            {
                GetSynegyRMSInstance().DeleteObject(projectResources);
                GetSynegyRMSInstance().SaveChanges();

                if (AllowEmailNotifications())
                {
                    projectResources.aspnet_Users.aspnet_MembershipReference.Load();
                    SendNotificationWhenRemovedFromProject(projectResources.aspnet_Users.aspnet_Membership.Email, projectResources);
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Updates the project resources.
        /// </summary>
        /// <param name="projectResources">The project resources.</param>
        public static void UpdateProjectResources(PM_ProjectResources projectResources)
        {
            try
            {
                GetSynegyRMSInstance().SaveChanges();

                if (AllowEmailNotifications())
                {
                    projectResources.aspnet_Users.aspnet_MembershipReference.Load();
                    SendNotificationWhenUpdatedProject(projectResources.aspnet_Users.aspnet_Membership.Email, projectResources);
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Gets the assigned users by project id.
        /// </summary>
        /// <param name="projectId">The project id.</param>
        /// <returns></returns>
        public static MembershipUserCollection GetAssignedUsersByProjectId(int projectId)
        {
            MembershipUserCollection userList = new MembershipUserCollection();
            List<PM_ProjectResources> projectResourceList = GetAllProjectResoucesByProjectId(projectId);

            foreach (PM_ProjectResources resource in projectResourceList)
            {
                resource.aspnet_UsersReference.Load();
                userList.Clear();
                userList.Add(Membership.GetUser(resource.aspnet_Users.UserName));
            }

            return userList;
        }

        /// <summary>
        /// Gets all project resouces by project id.
        /// </summary>
        /// <param name="projectId">The project id.</param>
        /// <returns></returns>
        public static List<PM_ProjectResources> GetAllProjectResoucesByProjectId(int projectId)
        {
            try
            {
                //PM_Projects project= GetProjectbyProjectId(projectId);
                List<PM_ProjectResources> ResList = null;

                IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                                                               where p.PM_Projects.ProjectId == projectId
                                                               select p;

                ResList = projectQuery.ToList();

                foreach (PM_ProjectResources objResources in ResList)
                {
                    objResources.PM_ProjectsReference.Load();
                    objResources.aspnet_UsersReference.Load();
                    objResources.aspnet_Users.aspnet_MembershipReference.Load();
                    objResources.aspnet_Users.aspnet_ProfileReference.Load();
                    objResources.PM_ProjectRolesReference.Load();
                    //objResources.UM_UsersReference.Load();
                    //int aa = single1.T_User.UserId;
                }

                return ResList;
            }
            catch (Exception)
            {
                throw;
            }
        }



        /// <summary>
        /// Gets all project resouces by given period.
        /// </summary>
        /// <param name="StartDate">The start date.</param>
        /// <param name="EndDate">The end date.</param>
        /// <returns></returns>
        public static List<PM_ProjectResources> GetAllProjectResoucesByGivenPeriod(DateTime StartDate, DateTime EndDate)
        {
            try
            {

                List<PM_ProjectResources> ResList = null;

                IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                                                               where ((p.AllocatedStartDate >= StartDate && p.AllocatedStartDate <= EndDate) || (p.AllocatedEndDate >= StartDate && p.AllocatedEndDate <= EndDate))
                                                               select p;


                ResList = projectQuery.ToList();

                foreach (PM_ProjectResources objResources in ResList)
                {

                    /*---- Check Date Max and Min Date Validation--------*/

                    if (objResources.AllocatedStartDate < StartDate)
                    {
                        objResources.AllocatedStartDate = StartDate;
                    }

                    if (objResources.AllocatedEndDate > EndDate)
                    {
                        objResources.AllocatedEndDate = EndDate;
                    }



                    objResources.PM_ProjectsReference.Load();

                    objResources.aspnet_UsersReference.Load();

                    objResources.aspnet_Users.aspnet_MembershipReference.Load();

                    objResources.aspnet_Users.aspnet_ProfileReference.Load();

                    objResources.PM_ProjectRolesReference.Load();


                    //objResources.UM_UsersReference.Load();
                    //int aa = single1.T_User.UserId;
                }

                return ResList;
            }
            catch (Exception)
            {
                throw;
            }
        }




        #endregion

        #region User Methods

        public static aspnet_Users GetUserByName(string name)
        {
            aspnet_Users user = null;
            var userQuery = from p in GetSynegyRMSInstance().aspnet_Users
                            where p.UserName == name
                            select p;

            user = userQuery.First();
            return user;
        }

        public static void SaveUser(aspnet_Users user)
        {
            try
            {
                GetSynegyRMSInstance().AddToaspnet_Users(user);
                GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }

        }

        public static void DeletePermissions(string rolname)
        {

            List<UM_RolePermission> permissions = null;
            var userQuery = from p in GetSynegyRMSInstance().UM_RolePermission
                            where p.aspnet_Roles.RoleName == rolname
                            select p;

            permissions = userQuery.ToList();

            //List<UM_Permission> activePermissions = GetUserpermissionsByRoleId(GetUserRoleIdByName(rolname).RoleId);

            foreach (UM_RolePermission permission in permissions)
            {
                GetSynegyRMSInstance().DeleteObject(permission);
                GetSynegyRMSInstance().SaveChanges();
            }
        }

        /// <summary>
        /// Saves the role permissions.
        /// </summary>
        /// <param name="permissionTable">The permission table.</param>
        /// <param name="roleName">Name of the role.</param>
        /// <returns></returns>
        public static bool SaveRolePermissions(Hashtable permissionTable, String roleName)
        {

            DeletePermissions(roleName);
            foreach (string permission in permissionTable.Keys)
            {
                if ((bool)permissionTable[permission])
                {
                    UM_RolePermission rolePermission = new UM_RolePermission();
                    rolePermission.aspnet_Roles = GetUserRoleIdByName(roleName);
                    rolePermission.UM_Permission = SynergyService.GetPermissionByName(permission);
                    GetSynegyRMSInstance().AddToUM_RolePermission(rolePermission);
                    GetSynegyRMSInstance().SaveChanges();
                }

            }
            return true;
        }

        /// <summary>
        /// Gets the name of the permissions by role.
        /// </summary>
        /// <param name="roleName">Name of the role.</param>
        /// <returns></returns>
        public static Hashtable GetPermissionsByRoleName(string roleName)
        {
            List<UM_Permission> allPermissions = GetAllPermissions();
            List<UM_Permission> activePermissions = GetUserpermissionsByRoleId(GetUserRoleIdByName(roleName).RoleId);

            Hashtable permissionTable = new Hashtable();
            foreach (UM_Permission Permission in allPermissions)
            {
                UM_Permission result = activePermissions.Find(
                 delegate(UM_Permission p)
                 {
                     return p.PermissionId == Permission.PermissionId;
                 }
                 );

                if (result != null)
                {
                    permissionTable.Add(Permission.Permission, true);
                }
                else
                {
                    permissionTable.Add(Permission.Permission, false);
                }
            }
            return permissionTable;
        }
        /// <summary>
        /// Gets the userpermissions by role id.
        /// </summary>
        /// <param name="roleId">The role id.</param>
        /// <returns></returns>
        public static List<UM_Permission> GetUserpermissionsByRoleId(Guid roleId)
        {
            List<UM_Permission> permissionList = new List<UM_Permission>();
            try
            {
                List<UM_RolePermission> permissionRoleList = null;
                IQueryable<UM_RolePermission> permissionQuery = from p in GetSynegyRMSInstance().UM_RolePermission
                                                                where p.aspnet_Roles.RoleId == roleId
                                                                select p;
                permissionRoleList = permissionQuery.ToList();
                foreach (UM_RolePermission permissionRole in permissionRoleList)
                {
                    permissionRole.UM_PermissionReference.Load();
                    permissionList.Add(permissionRole.UM_Permission);
                }
            }
            catch (Exception ex)
            {

            }
            return permissionList;
        }

        /// <summary>
        /// Gets the name of the permission by.
        /// </summary>
        /// <param name="Permission">The permission.</param>
        /// <returns></returns>
        public static UM_Permission GetPermissionByName(string Permission)
        {
            IQueryable<UM_Permission> permissionQuery = from p in GetSynegyRMSInstance().UM_Permission
                                                        where p.Permission == Permission
                                                        select p;
            return permissionQuery.First();
        }
        /// <summary>
        /// Saves the role permissions.
        /// </summary>
        /// <param name="RolePermission">The role permission.</param>
        public static void SaveRolePermissions(UM_RolePermission RolePermission)
        {
            try
            {
                GetSynegyRMSInstance().AddToUM_RolePermission(RolePermission);
                GetSynegyRMSInstance().SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Gets all permissions.
        /// </summary>
        /// <returns></returns>
        public static List<UM_Permission> GetAllPermissions()
        {
            List<UM_Permission> permissionList = new List<UM_Permission>();
            try
            {
                IQueryable<UM_Permission> permissionQuery = from p in GetSynegyRMSInstance().UM_Permission
                                                            select p;
                return permissionQuery.ToList();
            }
            catch (Exception ex)
            {

            }
            return permissionList;
        }

        /// <summary>
        /// Gets the name of the user role id by.
        /// </summary>
        /// <param name="roleName">Name of the role.</param>
        /// <returns></returns>
        public static aspnet_Roles GetUserRoleIdByName(string roleName)
        {
            aspnet_Roles role = null;
            var roleQuery = from p in GetSynegyRMSInstance().aspnet_Roles
                            where p.RoleName == roleName
                            select p;
            role = roleQuery.First();
            return role;
        }

        /// <summary>
        /// Gets the user by id.
        /// </summary>
        /// <param name="id">The id.</param>
        /// <returns></returns>
        public static aspnet_Users GetUserById(Guid id)
        {
            aspnet_Users user = null;
            var roleQuery = from p in GetSynegyRMSInstance().aspnet_Users
                            where p.UserId == id
                            select p;
            user = roleQuery.First();
            return user;
        }

        public static aspnet_Roles GetRoleIdofTheUserByName(string username)
        {
            String[] roles = Roles.GetRolesForUser(username);
            string roleName = roles[0];
            aspnet_Roles role;

            var roleQuery = from p in GetSynegyRMSInstance().aspnet_Roles
                            where p.RoleName == roleName
                            select p;
            role = roleQuery.First();

            return role;
        }

        public static bool isUserFunctionAllow(string username, string function)
        {
            if (username == "")
            {
                return false;
            }

            try
            {
                Guid roleId = GetRoleIdofTheUserByName(username).RoleId;

                var rolepermissionQuery = from p in GetSynegyRMSInstance().UM_RolePermission
                                          where p.aspnet_Roles.RoleId == roleId
                                          select p;
                List<UM_RolePermission> permissionlist = rolepermissionQuery.ToList();

                foreach (UM_RolePermission p in permissionlist)
                {
                    p.UM_PermissionReference.Load();

                    if (p.UM_Permission.Permission == function)
                    {
                        return true;
                    }
                }


                return false;

            }

            catch
            {
            }
            return false;
        }
        public static List<PM_Projects> getUserProjects(string userkey)
        {
            List<PM_ProjectResources> ProjectResList = null;
            List<PM_Projects> ProjectList = new List<PM_Projects>();
            PM_Projects objProject = null;

            MembershipUser edituser = Membership.GetUser(new Guid(userkey));


            IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                                                           where p.aspnet_Users.UserName == edituser.UserName
                                                           select p;



            ProjectResList = projectQuery.ToList();

            foreach (PM_ProjectResources objResources in ProjectResList)
            {
                PM_Projects project = new PM_Projects();

                objProject = new PM_Projects();
                objResources.PM_ProjectsReference.Load();

                ProjectList.Add(objResources.PM_Projects);

                //objResources.UM_UsersReference.Load();
                //int aa = single1.T_User.UserId;
            }

            return ProjectList;

        }

        #endregion

        #region Max Allocation

        public static UserEffort ValidateMaxAllocation(string userkey, DateTime startDate, DateTime endDate, int inputEffort, int projectResourceId)
        {

            double TotalEffort = 0;
            double Duration = 0;
            double TotalCurrentEffort = 0;
            double UserEffort = 0;
            double UserMaxEffort = 0;
            double RemEffort = 0;
            double UserRequestdEffort = 0;
            double NoOfRemainingDays = 0;
            Hashtable HTResource = new Hashtable();

            /*------------------Calculate Period------------------------*/

            TimeSpan tsDuration = endDate.Subtract(startDate);
            Duration = tsDuration.TotalDays;

            /*-----------------Calculate MaximumUserEffort for Given User-----------*/

            List<PM_MaxUserEfforts> ListUserEfforts = null;

            MembershipUser edituser = Membership.GetUser(new Guid(userkey));

            IQueryable<PM_MaxUserEfforts> maxUserEffortQuery = from m in GetSynegyRMSInstance().PM_MaxUserEfforts
                                                               where m.aspnet_Users.UserName == edituser.UserName
                                                               select m;


            ListUserEfforts = maxUserEffortQuery.ToList();
            UserMaxEffort = Convert.ToDouble(ListUserEfforts[0].MaxEffort);
            UserEffort = UserMaxEffort * Duration;

            /*----------------------Calculate Current Allocation-------------------------*/

            List<PM_ProjectResources> ResList = new List<PM_ProjectResources>();
            List<PM_ProjectResources> ResourceList = null;
            List<PM_ProjectResources> ResourceList2 = null;

           

            if (projectResourceId == 0)
            {

                /*------------- Addded New Project Resource---------------------------*/

                IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                                                               where  ((p.aspnet_Users.UserName == edituser.UserName) && ((p.AllocatedStartDate >= startDate && p.AllocatedStartDate <= endDate) || (p.AllocatedEndDate >= startDate && p.AllocatedEndDate <= endDate))) 
                                                               select p;


                IQueryable<PM_ProjectResources> projectQuery2 = from p in GetSynegyRMSInstance().PM_ProjectResources
                                                                where ((p.aspnet_Users.UserName == edituser.UserName) && ((p.AllocatedStartDate <= startDate && p.AllocatedEndDate >= startDate) || (p.AllocatedStartDate <= endDate && p.AllocatedEndDate >= endDate)))
                                                               select p;

                //IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                //                                               where ((p.aspnet_Users.UserName == edituser.UserName) && ((p.AllocatedStartDate <= startDate && p.AllocatedEndDate >= startDate) || (p.AllocatedStartDate <= endDate && p.AllocatedEndDate <= endDate)))
                //                                               select p;

                ResourceList = projectQuery.ToList();

                ResourceList2 = projectQuery2.ToList();

                foreach (PM_ProjectResources resorcesObj in ResourceList)
                {
                  
                    ResList.Add(resorcesObj);
                    HTResource.Add(resorcesObj.ProjectResorcesId, 0);
                }


                foreach (PM_ProjectResources resorcesObj in ResourceList2)
                {


                    if (!HTResource.Contains(resorcesObj.ProjectResorcesId))
                    {
                        ResList.Add(resorcesObj);
                    }  
                }


            }
            else
            {


                /*------------- Updated New Project Resource---------------------------*/

                //IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                //                                               where ((p.aspnet_Users.UserName == edituser.UserName) && (p.ProjectResorcesId !=projectResourceId) &&  ((p.AllocatedStartDate >= startDate || p.AllocatedStartDate <= endDate) || (p.AllocatedEndDate >= startDate || p.AllocatedEndDate <= endDate)))
                //                                               select p;

                IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                                                               where ((p.aspnet_Users.UserName == edituser.UserName) && (p.ProjectResorcesId != projectResourceId) && ((p.AllocatedStartDate >= startDate && p.AllocatedStartDate <= endDate) || (p.AllocatedEndDate >= startDate && p.AllocatedEndDate <= endDate)))
                                                               select p;


                IQueryable<PM_ProjectResources> projectQuery2 = from p in GetSynegyRMSInstance().PM_ProjectResources
                                                                where ((p.aspnet_Users.UserName == edituser.UserName) && (p.ProjectResorcesId != projectResourceId) && ((p.AllocatedStartDate <= startDate && p.AllocatedEndDate >= startDate) || (p.AllocatedStartDate <= endDate && p.AllocatedEndDate >= endDate)))
                                                                select p;


                ResourceList = projectQuery.ToList();

                ResourceList2 = projectQuery2.ToList();

                foreach (PM_ProjectResources resorcesObj in ResourceList)
                {

                    ResList.Add(resorcesObj);
                    HTResource.Add(resorcesObj.ProjectResorcesId, 0);
                }

            }


            if (ResList != null)
            {
                if (ResList.Count > 0)
                {

                    foreach (PM_ProjectResources objResources in ResList)
                    {
                        DateTime startPeriod;
                        DateTime endPeriod;
                        double numOfDays = 0;


                        if (objResources.AllocatedStartDate < startDate)
                        {
                            startPeriod = startDate;
                        }
                        else
                        {
                            startPeriod = objResources.AllocatedStartDate;
                        }

                        if (objResources.AllocatedEndDate > endDate)
                        {
                            endPeriod = endDate;
                        }
                        else
                        {
                            endPeriod = objResources.AllocatedEndDate;
                        }

                        TimeSpan tsPeriod = endPeriod.Subtract(startPeriod);
                        numOfDays = tsPeriod.TotalDays;

                        double projectEffort = Convert.ToDouble(objResources.Effort);
                        TotalCurrentEffort = TotalCurrentEffort + projectEffort * numOfDays;


                        //objResources.UM_UsersReference.Load();
                        //int aa = single1.T_User.UserId;
                    }
                }
                else
                {
                    /*-----Current Allocation is 0 for the Given period--------*/
                    TotalCurrentEffort = 0;
                }
            }

            else
            {
                /*-----Current Allocation is 0 for the Given period--------*/
                TotalCurrentEffort = 0;
            }


            /*--------------------Total  Effort For the given period ---------------*/

            TotalEffort = UserMaxEffort * Duration;

            /*-----------------------Check Allocation----------------------------- */

            RemEffort = TotalEffort - TotalCurrentEffort;

            /*----------------------Calculate requested Effort------------------------*/

            UserRequestdEffort = inputEffort * Duration;

            /*--------------calculate Remaining Effort----------------*/

            UserEffort effortObj = new UserEffort();

            if (RemEffort > UserRequestdEffort)
            {
                NoOfRemainingDays = RemEffort / UserMaxEffort;

                /*-----------------Fill Information -------------------*/

                effortObj.RemEffort = NoOfRemainingDays;
                effortObj.IsCanAllocated = true;
                effortObj.CustomeMessge = "Allocation Is Done";

            }
            else
            {
                effortObj.RemEffort = 0;
                effortObj.IsCanAllocated = false;
                effortObj.CustomeMessge = "Maximum Allocation Excedded";
            }


            return effortObj;
        }


        #endregion
    }
}
