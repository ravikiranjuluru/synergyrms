﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SynergyServices
{
    /// <summary>
    /// SynergyService
    /// </summary>
    public class SynergyService
    {
        private static SynergyRMSEntities _synergyRMSEntities = null;

        #region Utility Methods

        /// <summary>
        /// Gets the synegy RMS instance.
        /// </summary>
        /// <returns></returns>
        private static SynergyRMSEntities GetSynegyRMSInstance()
        {
            if (_synergyRMSEntities == null)
            {
                _synergyRMSEntities = new SynergyRMSEntities();
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
        /// Gets the projects.
        /// </summary>
        /// <param name="project">The project.</param>
        /// <returns></returns>
        public static List<PM_Projects> GetProjects(PM_Projects project)
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
            catch (Exception)
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

        public static void SaveUserSkills(List<UM_UserSkills> skillList)
        {
            try
            {
                foreach (UM_UserSkills skill in skillList)
                {
                    if (skill.UserSkillId == 0)
                    {
                        GetSynegyRMSInstance().AddToUM_UserSkills(skill);
                    }
                    GetSynegyRMSInstance().SaveChanges();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        #endregion


        #region Project Resources
        
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
                    objResources.PM_ProjectRolesReference.Load();
                    objResources.UM_UsersReference.Load();
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



    }
}
