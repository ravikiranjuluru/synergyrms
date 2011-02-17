using SynergyRMS.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Microsoft.VisualStudio.TestTools.UnitTesting.Web;
using System.Collections;
using System.Collections.Generic;
using System;

namespace SynergyServiceTestProject
{
    
    
    /// <summary>
    ///This is a test class for SynergyServiceTest and is intended
    ///to contain all SynergyServiceTest Unit Tests
    ///</summary>
    [TestClass()]
    public class SynergyServiceTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for AssignUsersToProject
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void AssignUsersToProjectTest()
        {
            int projectId = 0; // TODO: Initialize to an appropriate value
            Guid userId = new Guid(); // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = SynergyService.AssignUsersToProject(projectId, userId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllPermissions
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetAllPermissionsTest()
        {
            List<UM_Permission> expected = null; // TODO: Initialize to an appropriate value
            List<UM_Permission> actual;
            actual = SynergyService.GetAllPermissions();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllProjectResoucesByProjectId
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetAllProjectResoucesByProjectIdTest()
        {
            int projectId = 0; // TODO: Initialize to an appropriate value
            List<PM_ProjectResources> expected = null; // TODO: Initialize to an appropriate value
            List<PM_ProjectResources> actual;
            actual = SynergyService.GetAllProjectResoucesByProjectId(projectId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllProjects
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetAllProjectsTest()
        {
            List<PM_Projects> expected = null; // TODO: Initialize to an appropriate value
            List<PM_Projects> actual;
            actual = SynergyService.GetAllProjects();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllSkills
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetAllSkillsTest()
        {
            List<PM_Skills> expected = null; // TODO: Initialize to an appropriate value
            List<PM_Skills> actual;
            actual = SynergyService.GetAllSkills();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllTypes
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetAllTypesTest()
        {
            List<PM_Types> expected = null; // TODO: Initialize to an appropriate value
            List<PM_Types> actual;
            actual = SynergyService.GetAllTypes();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetPermissionByName
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetPermissionByNameTest()
        {
            string Permission = string.Empty; // TODO: Initialize to an appropriate value
            UM_Permission expected = null; // TODO: Initialize to an appropriate value
            UM_Permission actual;
            actual = SynergyService.GetPermissionByName(Permission);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetPermissionsByRoleName
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetPermissionsByRoleNameTest()
        {
            string roleName = string.Empty; // TODO: Initialize to an appropriate value
            Hashtable expected = null; // TODO: Initialize to an appropriate value
            Hashtable actual;
            actual = SynergyService.GetPermissionsByRoleName(roleName);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetProjectbyProjectId
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetProjectbyProjectIdTest()
        {
            int projectId = 0; // TODO: Initialize to an appropriate value
            PM_Projects expected = null; // TODO: Initialize to an appropriate value
            PM_Projects actual;
            actual = SynergyService.GetProjectbyProjectId(projectId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetProjectStatusById
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetProjectStatusByIdTest()
        {
            int statusId = 0; // TODO: Initialize to an appropriate value
            PM_Status expected = null; // TODO: Initialize to an appropriate value
            PM_Status actual;
            actual = SynergyService.GetProjectStatusById(statusId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetProjectTypebyId
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetProjectTypebyIdTest()
        {
            int typeId = 0; // TODO: Initialize to an appropriate value
            PM_Types expected = null; // TODO: Initialize to an appropriate value
            PM_Types actual;
            actual = SynergyService.GetProjectTypebyId(typeId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetSkillById
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetSkillByIdTest()
        {
            int skillId = 0; // TODO: Initialize to an appropriate value
            PM_Skills expected = null; // TODO: Initialize to an appropriate value
            PM_Skills actual;
            actual = SynergyService.GetSkillById(skillId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetSynegyRMSInstance
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        [DeploymentItem("SynergyRMS.dll")]
        public void GetSynegyRMSInstanceTest()
        {
            synergydbadminEntities expected = null; // TODO: Initialize to an appropriate value
            synergydbadminEntities actual;
            actual = SynergyService_Accessor.GetSynegyRMSInstance();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetUserById
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetUserByIdTest()
        {
            Guid id = new Guid(); // TODO: Initialize to an appropriate value
            aspnet_Users expected = null; // TODO: Initialize to an appropriate value
            aspnet_Users actual;
            actual = SynergyService.GetUserById(id);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetUserpermissionsByRoleId
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetUserpermissionsByRoleIdTest()
        {
            Guid roleId = new Guid(); // TODO: Initialize to an appropriate value
            List<UM_Permission> expected = null; // TODO: Initialize to an appropriate value
            List<UM_Permission> actual;
            actual = SynergyService.GetUserpermissionsByRoleId(roleId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetUserRoleIdByName
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void GetUserRoleIdByNameTest()
        {
            string roleName = string.Empty; // TODO: Initialize to an appropriate value
            aspnet_Roles expected = null; // TODO: Initialize to an appropriate value
            aspnet_Roles actual;
            actual = SynergyService.GetUserRoleIdByName(roleName);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for SaveProjectSkills
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveProjectSkillsTest()
        {
            List<PM_ProjectSkills> skillList = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveProjectSkills(skillList);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SaveRolePermissions
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveRolePermissionsTest1()
        {
            UM_RolePermission RolePermission = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveRolePermissions(RolePermission);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SaveRolePermissions
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveRolePermissionsTest()
        {
            Hashtable permissionTable = null; // TODO: Initialize to an appropriate value
            string roleName = string.Empty; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = SynergyService.SaveRolePermissions(permissionTable, roleName);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for LoadProjectSkillsByProjectId
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void LoadProjectSkillsByProjectIdTest()
        {
            int projectId = 0; // TODO: Initialize to an appropriate value
            PM_ProjectSkills expected = null; // TODO: Initialize to an appropriate value
            PM_ProjectSkills actual;
            actual = SynergyService.LoadProjectSkillsByProjectId(projectId);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for SaveProject
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveProjectTest()
        {
            PM_Projects project = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveProject(project);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SaveProjectResources
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveProjectResourcesTest()
        {
            PM_ProjectResources projectResources = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveProjectResources(projectResources);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SaveProjectRisks
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveProjectRisksTest()
        {
            PM_ProjectRisks risk = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveProjectRisks(risk);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SaveSkill
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveSkillTest()
        {
            PM_Skills skill = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveSkill(skill);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SaveType
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveTypeTest()
        {
            PM_Types type = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveType(type);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SaveUser
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SaveUserTest()
        {
            aspnet_Users user = null; // TODO: Initialize to an appropriate value
            SynergyService.SaveUser(user);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for UpdateProject
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void UpdateProjectTest()
        {
            PM_Projects project = null; // TODO: Initialize to an appropriate value
            SynergyService.UpdateProject(project);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for UpdateSkill
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void UpdateSkillTest()
        {
            PM_Skills skill = null; // TODO: Initialize to an appropriate value
            SynergyService.UpdateSkill(skill);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for UpdateType
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void UpdateTypeTest()
        {
            PM_Types type = null; // TODO: Initialize to an appropriate value
            SynergyService.UpdateType(type);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for SynergyService Constructor
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("%PathToWebRoot%\\synergyrms\\SourceCode\\SynergyRMS", "/")]
        [UrlToTest("http://localhost:55065/")]
        public void SynergyServiceConstructorTest()
        {
            SynergyService target = new SynergyService();
            Assert.Inconclusive("TODO: Implement code to verify target");
        }
    }
}
