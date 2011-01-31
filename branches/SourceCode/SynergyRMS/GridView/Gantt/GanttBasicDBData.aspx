<%@ Page language="c#" Debug="true"%><%
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
 //// --- Database initialization ---
 //string Path = System.IO.Path.GetDirectoryName(Context.Request.PhysicalPath);
 //System.Data.OleDb.OleDbConnection Conn = new System.Data.OleDb.OleDbConnection("Data Source=\"" + Path + "\\..\\Database.mdb\";Mode=Share Deny None;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Registry Path=;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Engine Type=5;Provider=\"Microsoft.Jet.OLEDB.4.0\";Jet OLEDB:System database=;Jet OLEDB:SFP=False;persist security info=False;Extended Properties=;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Create System Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;User ID=Admin;Jet OLEDB:Global Bulk Transactions=1");
 //Conn.Open();
 //System.Data.OleDb.OleDbCommand Cmd = Conn.CreateCommand();

 //string ConnString = "Data Source=CHANAKA\\EXPRESS;initial catalog=master;user id=mysite1;password=mysite1;persist security info=True;packet size=4096";
 //string ConnString = "Data Source=CHANAKADESKTOP;initial catalog=master;user id=mysite1;password=mysite1;persist security info=True;packet size=4096";
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
 //Cmd.CommandText = "SELECT * FROM GanttBasic ORDER BY id";
 //System.Data.OleDb.OleDbDataReader R = Cmd.ExecuteReader();
 Cmd.CommandText = "SELECT * FROM GanttBasic ORDER BY id";
 System.Data.SqlClient.SqlDataReader R = Cmd.ExecuteReader();
 Response.Write("<Grid><Body><B>");
 while (R.Read())
 {    
     Response.Write("<I id='" + R["id"].ToString() + "'"
        + " T='" + R["T"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
        + " U='" + R["U"].ToString().Replace("&", "&amp;").Replace("'", "&apos;").Replace("<", "&lt;") + "'"
        + " S='" + R["S"].ToString() + "'"
        + " E='" + R["E"].ToString() + "'"
        + " C='" + R["C"].ToString() + "'"
        + " D='" + R["D"].ToString() + "'"
        + "/>");
 }
 Response.Write("</B></Body></Grid>");
 R.Close();
 Conn.Close();

     

// --------------------------------------------------------------------------
%>