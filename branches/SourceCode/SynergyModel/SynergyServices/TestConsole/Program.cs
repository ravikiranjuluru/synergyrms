using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SynergyServices;



namespace TestConsole
{
    class Program
    {
        static void Main(string[] args)
        {

            /*-------------------Save Project ------------------*/
            //PM_Projects pmProjects = new PM_Projects();
            //pmProjects.ProjectCode = "PM005";
            //pmProjects.Status = 1;
            //pmProjects.ProjectName = "testProject5";
            //pmProjects.ProjectStartDate = DateTime.Today;
            //pmProjects.ProjectEndDate = DateTime.Today.AddDays(200);


            //List<PM_Types> typeList = SynergyService.GetAllTypes();


            // PM_Types selectedType = typeList[1];
            // pmProjects.PM_Types = selectedType;
          

            //SynergyService.SaveProject(pmProjects);



            /*-------------------Update Project ------------------*/

        

            PM_Projects selectedproject = SynergyService.GetProjectbyProjectId(5);

           
            selectedproject.ProjectCode = "PM005-3";
            selectedproject.Status = 1;
            selectedproject.ProjectName = "testProject5";
            selectedproject.ProjectStartDate = DateTime.Today;
            selectedproject.ProjectEndDate = DateTime.Today.AddDays(150);


            List<PM_Types> typeList = SynergyService.GetAllTypes();


            PM_Types selectedType = typeList[1];
            selectedproject.PM_Types = selectedType;


            SynergyService.UpdateProject(selectedproject);


        }
    }
}
