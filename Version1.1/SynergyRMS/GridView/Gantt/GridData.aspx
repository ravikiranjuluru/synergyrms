<%@ Page language="c#" Debug="true"%>
<%@ Import Namespace="SynergyRMS.Models" %>
<%
    
    List<PM_ProjectResources> listProjectResources = new List<PM_ProjectResources>();
    if (Session["LoadResourceListDisplay"] != null)
    {
        listProjectResources = (List<PM_ProjectResources>)Session["LoadResourceListDisplay"];
    }
    
    
///! Support file only, run Grid.html instead !
/// This file is used as Data_Url for TreeGrid
/// It generates source data for TreeGrid from database
// --------------------------------------------------------------------------
   
//// --- Database initialization ---
//string Path = System.IO.Path.GetDirectoryName(Context.Request.PhysicalPath);
//System.Data.OleDb.OleDbConnection Conn = new System.Data.OleDb.OleDbConnection("Data Source=\"" + Path + "\\..\\Database.mdb\";Mode=Share Deny None;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Registry Path=;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Engine Type=5;Provider=\"Microsoft.Jet.OLEDB.4.0\";Jet OLEDB:System database=;Jet OLEDB:SFP=False;persist security info=False;Extended Properties=;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Create System Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;User ID=Admin;Jet OLEDB:Global Bulk Transactions=1");
//Conn.Open();
//System.Data.OleDb.OleDbCommand Cmd = Conn.CreateCommand();

//// --- Response initialization ---
//Response.ContentType = "text/xml";
//Response.Charset = "utf-8";
//Response.AppendHeader("Cache-Control","max-age=1, must-revalidate");
//System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

//// --- Generating data ---
//Cmd.CommandText = "SELECT * FROM TableData WHERE Week>0 AND Week<53 ORDER BY Project,Resource";
//System.Data.OleDb.OleDbDataReader R = Cmd.ExecuteReader();

//string Prj = null, Res = null, S = "";

//while(R.Read())
//{
//   string p = R[1].ToString();  // Project
//   string r = R[2].ToString();  // Resource

//   if (p != Prj)                // New project row
//   {
//      if(Prj != null) S += "/></I>";    // Ends previous project and resource rows
//      Prj = p; Res = null;
//      S += "<I Def='Node' Project='" + Prj.Replace("&","&amp;").Replace("'","&apos;").Replace("<","&lt;") + "'>";
//   }
   
//   if(r != Res)                  // New resource row
//   {
//      if (Res != null) S += "/>";     // Ends previous resource row
//      Res = r;
//      S += "<I Project='" + Res.Replace("&","&amp;").Replace("'","&apos;").Replace("<","&lt;") + "' ";
//   }
   
//   S = S + "W" + R[3].ToString() + "='" + R[4].ToString() + "' "; // Week = Hours (like W42='17')
//}

//if(Prj != null) S += "/></I>";   // Ends previous project and resource rows
                                        
//// --------------------------------------------------------------------------
 // --- Database initialization ---
 //string Path = System.IO.Path.GetDirectoryName(Context.Request.PhysicalPath);
 //System.Data.OleDb.OleDbConnection Conn = new System.Data.OleDb.OleDbConnection("Data Source=\"" + Path + "\\..\\Database.mdb\";Mode=Share Deny None;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Registry Path=;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Engine Type=5;Provider=\"Microsoft.Jet.OLEDB.4.0\";Jet OLEDB:System database=;Jet OLEDB:SFP=False;persist security info=False;Extended Properties=;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Create System Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;User ID=Admin;Jet OLEDB:Global Bulk Transactions=1");
 //Conn.Open();
 //System.Data.OleDb.OleDbCommand Cmd = Conn.CreateCommand();
 string ConnString = "Data Source=sg2nwgdshsql003-floater.shr.prod.sin2.secureserver.net;initial catalog=synergydbadmin;user id=synergydbadmin;password=DBadmin123;persist security info=True;packet size=4096";
 System.Data.SqlClient.SqlConnection Conn = new System.Data.SqlClient.SqlConnection(ConnString);
 Conn.Open();
 System.Data.SqlClient.SqlCommand Cmd = Conn.CreateCommand();

 // --- Response initialization ---
 Response.ContentType = "text/xml";
 Response.Charset = "utf-8";
 Response.AppendHeader("Cache-Control", "max-age=1, must-revalidate");
 System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

 // --- Generating data ---
 //Cmd.CommandText = "SELECT * FROM TableData WHERE Week>0 AND Week<53 ORDER BY Project,Resource";
 //System.Data.OleDb.OleDbDataReader R = Cmd.ExecuteReader();
 Cmd.CommandText = "SELECT * FROM TableData WHERE Week>0 AND Week<53 ORDER BY Project,Resource";
 System.Data.SqlClient.SqlDataReader R = Cmd.ExecuteReader();

 
 
    string proName = null, fullname ="",username = null, StartDate = "", EndDate="";
    string output = "";
 foreach (PM_ProjectResources projectResources in listProjectResources)
 {
     
     username = projectResources.aspnet_Users.UserName;
     var profile = new ProfileBase();
     profile.Initialize(username, true);
     string fname = profile.GetPropertyValue("FirstName").ToString();
     string lname = profile.GetPropertyValue("LastName").ToString();
     fullname = fname + " " + lname;
     
     proName = projectResources.PM_Projects.ProjectName;
     StartDate = projectResources.AllocatedStartDate.ToString();
     EndDate = projectResources.AllocatedEndDate.ToString();

     string p1 = fullname;  // User name-Resource
     string r1 = proName;  // Project

     if (p1 != fullname)                // New project row
     {
         if (fullname != null) output += "/></I>";    // Ends previous project and resource rows
         fullname = p1; proName = null;
         output += "<I Def='Node' Project='" + fullname.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'>";
     }
     if (r1 != proName)                  // New resource row
     {
         if (proName != null) output += "/>";     // Ends previous resource row
         proName = r1;
         output += "<I Project='" + proName.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "' ";
     }
     output = output + "W" + StartDate + "='" + EndDate + "' "; // Week = Hours (like W42='17')     
 }
 if (fullname != null) output += "/></I>";

 //string Prj = null, Res = null, S = "";
 //while (R.Read())
 //{
 //    string p = R[1].ToString();  // Project
 //    string r = R[2].ToString();  // Resource
 //    if (p != Prj)                // New project row
 //    {
 //        if (Prj != null) S += "/></I>";    // Ends previous project and resource rows
 //        Prj = p; Res = null;
 //        S += "<I Def='Node' Project='" + Prj.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'>";
 //    }
 //    if (r != Res)                  // New resource row
 //    {
 //        if (Res != null) S += "/>";     // Ends previous resource row
 //        Res = r;
 //        S += "<I Project='" + Res.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "' ";
 //    }
 //    S = S + "W" + R[3].ToString() + "='" + R[4].ToString() + "' "; // Week = Hours (like W42='17')
 //}
 //if (Prj != null) S += "/></I>";
    
    
 //while (R.Read())
 //{
 //    string p = R[1].ToString();  // Project
 //    string r = R[2].ToString();  // Resource
 //    if (p != Prj)                // New project row
 //    {
 //        if (Prj != null) S += "/></I>";    // Ends previous project and resource rows
 //        Prj = p; Res = null;
 //        S += "<I Def='Node' Project='" + Prj.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'>";
 //    }
 //    if (r != Res)                  // New resource row
 //    {
 //        if (Res != null) S += "/>";     // Ends previous resource row
 //        Res = r;
 //        S += "<I Project='" + Res.Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "' ";
 //    }
 //    S = S + "W" + R[3].ToString() + "='" + R[4].ToString() + "' "; // Week = Hours (like W42='17')
 //}

 //if (Prj != null) S += "/></I>";   // Ends previous project and resource rows

                                         // --------------------------------------------------------------------------
%><?xml version="1.0" ?>
<Grid>
   <Body>
      <B>
         <%--<%=S%>--%>
         <%=output%>
      </B>
   </Body>
</Grid>