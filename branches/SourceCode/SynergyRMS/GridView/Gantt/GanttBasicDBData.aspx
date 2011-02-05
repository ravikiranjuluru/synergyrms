<%@ Page language="c#" Debug="true"%>
<%@ Import Namespace="SynergyRMS.Models" %>
<%
///! Support file only, run GanttBasicDB.html instead !
/// This file is used as Data_Url for TreeGrid
/// It generates source data for TreeGrid from database
// --------------------------------------------------------------------------
   
// --- Database initialization ---
                                         /*
string Path = System.IO.Path.GetDirectoryName(Context.Request.PhysicalPath);
System.Data.OleDb.OleDbConnection Conn = new System.Data.OleDb.OleDbConnection("Data Source=\"" + Path + "\\..\\Database.mdb\";Mode=Share Deny None;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Registry Path=;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Engine Type=5;Provider=\"Microsoft.Jet.OLEDB.4.0\";Jet OLEDB:System database=;Jet OLEDB:SFP=False;persist security info=False;Extended Properties=;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Create System Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;User ID=Admin;Jet OLEDB:Global Bulk Transactions=1");
Conn.Open();
System.Data.OleDb.OleDbCommand Cmd = Conn.CreateCommand();

// --- Response initialization ---
Response.ContentType = "text/xml";
Response.Charset = "utf-8";
Response.AppendHeader("Cache-Control","max-age=1, must-revalidate");
System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

// --- Generating data ---
Cmd.CommandText = "SELECT * FROM GanttBasic ORDER BY id";
System.Data.OleDb.OleDbDataReader R = Cmd.ExecuteReader();
Response.Write("<Grid><Body><B>");
while (R.Read())
{
   Response.Write("<I id='" + R["id"].ToString() + "'"
      + " T='" + R["T"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
      + " S='" + R["S"].ToString() + "'"
      + " E='" + R["E"].ToString() + "'"
      + " C='" + R["C"].ToString() + "'"
      + " D='" + R["D"].ToString() + "'"
      + "/>");
}
Response.Write("</B></Body></Grid>");
R.Close();
Conn.Close();
*/
 /*****************************************************************************/

 //string ConnString = "Data Source=sg2nwgdshsql003-floater.shr.prod.sin2.secureserver.net;initial catalog=synergydbadmin;user id=synergydbadmin;password=DBadmin123;persist security info=True;packet size=4096";
 //System.Data.SqlClient.SqlConnection Conn = new System.Data.SqlClient.SqlConnection(ConnString);
 //Conn.Open();
 //System.Data.SqlClient.SqlCommand Cmd = Conn.CreateCommand();

 //// --- Response initialization ---
 //Response.ContentType = "text/xml";
 //Response.Charset = "utf-8";
 //Response.AppendHeader("Cache-Control", "max-age=1, must-revalidate");
 //System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

 ////// --- Generating data --- 
 //Cmd.CommandText = "SELECT * FROM GanttBasic ORDER BY id";
 //System.Data.SqlClient.SqlDataReader R = Cmd.ExecuteReader();
 //Response.Write("<Grid><Cfg id=\"GanttBasic\"/><Cfg NumberId=\"1\" IdChars=\"0123456789\"/>"+
 //    "<LeftCols>"+
 //    "<C Name=\"id\" Width=\"20\" Type=\"Int\"/>"+
 //     "<C Name=\"T\" Width=\"100\" Type=\"Text\"/>"+
 //     "<C Name=\"U\" Width=\"100\" Type=\"Text\"/>"+
 //     "<C Name=\"UL\" Width=\"60\" Type=\"Enum\" Enum=\"|User 1|User 2|User 3|User 4|User 5\"/>" +
 //     "<C Name=\"S\" Width=\"60\" Type=\"Date\" Format=\"MMM dd\"/>"+
 //     "<C Name=\"E\" Width=\"60\" Type=\"Date\" Format=\"MMM dd\"/>"+ 
 //     "<C Name=\"C\" Width=\"50\" Type=\"Int\" Format=\"##\\%;;0\\%\"/>"+
 //    "</LeftCols>");
                                         
 //Response.Write("<Body><B>");
 ////Response.Write("<Grid><Body><B>");                                         
 //while (R.Read())
 //{
 //    Response.Write("<I id='" + R["id"].ToString() + "'"
 //       + " T='" + R["T"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
 //       + " U='" + R["U"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
 //       + " UL='" + R["UL"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
 //       + " S='" + R["S"].ToString() + "'"
 //       + " E='" + R["E"].ToString() + "'"
 //       + " C='" + R["C"].ToString() + "'"
 //       //+ " D='" + R["D"].ToString() + "'"
 //       + "/>");
 //}
 //Response.Write("</B></Body></Grid>");
 //R.Close();
 //Conn.Close();
//####################################################################################
 int projectid = Convert.ToInt32(Request.QueryString["projectid"]);
                                         
 string ConnString = "Data Source=sg2nwgdshsql003-floater.shr.prod.sin2.secureserver.net;initial catalog=synergydbadmin;user id=synergydbadmin;password=DBadmin123;persist security info=True;packet size=4096";
 System.Data.SqlClient.SqlConnection Conn = new System.Data.SqlClient.SqlConnection(ConnString);
 Conn.Open();
 System.Data.SqlClient.SqlCommand Cmd = Conn.CreateCommand();

 // --- Response initialization ---
 Response.ContentType = "text/xml";
 Response.Charset = "utf-8";
 Response.AppendHeader("Cache-Control", "max-age=1, must-revalidate");
 System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

 //// --- Generating data --- 
 Cmd.CommandText = "SELECT * FROM GanttBasic ORDER BY id";
 System.Data.SqlClient.SqlDataReader R = Cmd.ExecuteReader();


 MembershipUserCollection listUser=SynergyService.GetAssignedUsersByProjectId(projectid);
 string arruser = "";
 foreach (MembershipUser user in listUser)
    {
        var profile = new ProfileBase();
        profile.Initialize(user.UserName, true);
        string fname = profile.GetPropertyValue("FirstName").ToString();
        string lname = profile.GetPropertyValue("LastName").ToString();
        string name = fname + " " + lname;
        arruser += name + "|";
    }
 string arrrole = "";
 List<PM_ProjectRoles> listRoles = SynergyService.GetAllProjectRoles();
 foreach (PM_ProjectRoles roles in listRoles)
 {
     arrrole+=roles.RoleName+"|";
 }
 
 Response.Write("<Grid><Cfg id=\"GanttBasic\"/><Cfg NumberId=\"1\" IdChars=\"0123456789\"/>" +
 "<LeftCols>" +
 "<C Name=\"id\" Width=\"20\" Type=\"Int\"/>" +
  "<C Name=\"N\" Width=\"60\" Type=\"Enum\" Enum=" + arruser + "/>" +
  "<C Name=\"U\" Width=\"100\" Type=\"Text\"/>" +
  "<C Name=\"R\" Width=\"60\" Type=\"Enum\" Enum="+arrrole+"/>" +
  "<C Name=\"C\" Width=\"50\" Type=\"Int\" Format=\"##\\%;;0\\%\"/>" +
  "<C Name=\"S\" Width=\"60\" Type=\"Date\" Format=\"MMM dd\"/>" +
  "<C Name=\"E\" Width=\"60\" Type=\"Date\" Format=\"MMM dd\"/>" +
  
 "</LeftCols>");
 Response.Write("<Body><B>");
 //while (R.Read())
 //{
     //Response.Write("<I id='" + R["id"].ToString() + "'"
     //   + " N='" + R["T"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
     //   + " R='" + R["U"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
     //   + " C='" + R["C"].ToString() + "'"
     //   + " S='" + R["S"].ToString() + "'"
     //   + " E='" + R["E"].ToString() + "'"
     //   + "/>");
 //}
    
         
 List<PM_ProjectResources> listResources = SynergyService.GetAllProjectResoucesByProjectId(projectid);
 foreach (PM_ProjectResources resource in listResources)
 {
     string id = resource.ProjectResorcesId.ToString();
     
     string uname = resource.aspnet_Users.UserName;
     var profile = new ProfileBase();
     profile.Initialize(uname, true);
     string fname = profile.GetPropertyValue("FirstName").ToString();
     string lname = profile.GetPropertyValue("LastName").ToString();
     string name = fname + " " + lname;
     
     string role = resource.PM_ProjectRoles.RoleName;
     string complete = resource.Effort.ToString() ;
     DateTime startdate = resource.AllocatedStartDate;
     DateTime enddate = resource.AllocatedEndDate;
     Response.Write("<I id='" + id + "'"
        + " N='" + name.ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
        + " U='" + role.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
        + " R='" + role.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
        + " C='" + complete.ToString() + "'"
        + " S='" + startdate.ToString() + "'"
        + " E='" + enddate.ToString() + "'"
        + "/>");

 }
 Response.Write("</B></Body></Grid>");
    
                
 //Response.Write("<Grid><Cfg id=\"GanttBasic\"/><Cfg NumberId=\"1\" IdChars=\"0123456789\"/>" +
 //    "<LeftCols>" +
 //    "<C Name=\"id\" Width=\"20\" Type=\"Int\"/>" +
 //     "<C Name=\"T\" Width=\"100\" Type=\"Text\"/>" +
 //     "<C Name=\"U\" Width=\"100\" Type=\"Text\"/>" +
 //     "<C Name=\"UL\" Width=\"60\" Type=\"Enum\" Enum=\"|User 1|User 2|User 3|User 4|User 5\"/>" +
 //     "<C Name=\"S\" Width=\"60\" Type=\"Date\" Format=\"MMM dd\"/>" +
 //     "<C Name=\"E\" Width=\"60\" Type=\"Date\" Format=\"MMM dd\"/>" +
 //     "<C Name=\"C\" Width=\"50\" Type=\"Int\" Format=\"##\\%;;0\\%\"/>" +
 //    "</LeftCols>");

 //Response.Write("<Body><B>");
 ////Response.Write("<Grid><Body><B>");                                         
 //while (R.Read())
 //{
 //    Response.Write("<I id='" + R["id"].ToString() + "'"
 //       + " T='" + R["T"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
 //       + " U='" + R["U"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
 //       + " UL='" + R["UL"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
 //       + " S='" + R["S"].ToString() + "'"
 //       + " E='" + R["E"].ToString() + "'"
 //       + " C='" + R["C"].ToString() + "'"
 //        //+ " D='" + R["D"].ToString() + "'"
 //       + "/>");
 //}
 //Response.Write("</B></Body></Grid>");
 //R.Close();
 //Conn.Close();
     

// --------------------------------------------------------------------------
%>

