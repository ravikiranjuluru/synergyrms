﻿using System;
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
               return  GetSynegyRMSInstance().PM_Projects.ToList();
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
                                     where p.RoleName== name
                                     select p;

            projectRole= projectRoleQuery.First();
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
                SendNotificationWhenAssignedToProject(resource.aspnet_Users.aspnet_Membership.Email);
            }

            return true;
        }

        private static void SendNotificationWhenAssignedToProject(string email)
        {
            try
            {
                MailManager.SendMail(email, MailManager.messageFlag.AssignedProject);
            }
            catch
            {
            }
        }

        private static void SendNotificationWhenRemovedFromProject(string email)
        {
            try
            {
                MailManager.SendMail(email, MailManager.messageFlag.RemovedProject);
            }
            catch
            {
            }
        }

        private static void SendNotificationWhenUpdatedProject(string email)
        {
            try
            {
                MailManager.SendMail(email, MailManager.messageFlag.UpdatedProject);
            }
            catch
            {
            }
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
                List<PM_ProjectResources>     resourcelist=  project.PM_ProjectResources.ToList();

                foreach (PM_ProjectResources r in resourcelist)
                {                   
                    GetSynegyRMSInstance().DeleteObject(r);
                    GetSynegyRMSInstance().SaveChanges();
                }

                foreach (PM_ProjectResources resource in projectResources)
                {

                    GetSynegyRMSInstance().AddToPM_ProjectResources(resource);
                    GetSynegyRMSInstance().SaveChanges();
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
                    SendNotificationWhenRemovedFromProject(projectResources.aspnet_Users.aspnet_Membership.Email);
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
                    SendNotificationWhenUpdatedProject(projectResources.aspnet_Users.aspnet_Membership.Email);
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
                List <PM_ProjectResources>  ResList= null;

                IQueryable<PM_ProjectResources> projectQuery = from p in GetSynegyRMSInstance().PM_ProjectResources
                                   where p.PM_Projects.ProjectId== projectId
                                   select p;

                ResList= projectQuery.ToList();

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

        #endregion

        #region User Methods

        public static aspnet_Users GetUserByName(string name)
        {
            aspnet_Users  user = null;
            var userQuery = from p in GetSynegyRMSInstance().aspnet_Users
                                     where p.UserName ==name
                                     select p;

            user= userQuery.First();
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

        /// <summary>
        /// Saves the role permissions.
        /// </summary>
        /// <param name="permissionTable">The permission table.</param>
        /// <param name="roleName">Name of the role.</param>
        /// <returns></returns>
        public static bool SaveRolePermissions(Hashtable permissionTable, String roleName)
        {
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
            List<UM_Permission> allPermissions=GetAllPermissions();
            List<UM_Permission> activePermissions= GetUserpermissionsByRoleId( GetUserRoleIdByName(roleName).RoleId);          
            
            Hashtable permissionTable = new Hashtable();
            foreach (UM_Permission Permission in allPermissions)
            {
                UM_Permission result = activePermissions.Find(
                 delegate(UM_Permission p)
                 {
                     return p.PermissionId==Permission.PermissionId;
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
                return  permissionQuery.ToList();               
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

        #endregion



    }
}
