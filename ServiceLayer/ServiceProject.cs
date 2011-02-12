using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

// This is to extending functionality by providing servics
namespace ServiceLayer
{
    public class ServiceProject
    {
        Project objProject = new Project();

        public bool SaveOrUpdate(string pname,string prodesc)
        {
            objProject.Save(objProject);
            return true;
        }
    }
}
