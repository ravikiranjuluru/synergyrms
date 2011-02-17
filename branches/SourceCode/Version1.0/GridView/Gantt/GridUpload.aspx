<%@ Page language="c#" Debug="true"%><%
///! Support file only, run Grid.html instead !
/// This file is used as Upload_Url for TreeGrid
/// It stores changed from TreeGrid to database
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

//// --- Save data to database ---
//string XML = Request["TGData"];
//if (XML != "" && XML != null)
//{
//   System.Xml.XmlDocument X = new System.Xml.XmlDocument();
//   X.LoadXml(HttpUtility.HtmlDecode(XML));
//   System.Xml.XmlNodeList Ch = X.GetElementsByTagName("Changes");
//   System.Collections.Specialized.StringCollection Last = new System.Collections.Specialized.StringCollection();
   
//   if (Ch.Count > 0) foreach (System.Xml.XmlElement I in Ch[0])
//   {
//      string[] id = I.GetAttribute("id").Split("$".ToCharArray());
//      // --- Project row ---
      
//      if(id.Length==1)
//      {  
//         string prj = "'" + id[0].Replace("'","''") + "'";
//         string where = " WHERE Project=" + prj + " ";
//         if(I.GetAttribute("Deleted")=="1") 
//         { 
//            Cmd.CommandText = "DELETE FROM TableData" + where;
//            Cmd.ExecuteNonQuery(); 
//         }
//         else if(I.GetAttribute("Added")=="1" || I.GetAttribute("Changed")=="1")
//         {
//            if(I.HasAttribute("Project")) Last.Add("UPDATE TableData SET Project='" + I.GetAttribute("Project").Replace("'","''") + "'" + where);
//         }            
//      }   
//      // --- Resource row ---
//      else             
//      {
//         string prj = "'" + id[0].Replace("'","''") + "'";
//         string res = "'" + id[1].Replace("'","''") + "'";
//         string where = " WHERE Project=" + prj + " AND Resource=" + res + " ";
//         if(I.GetAttribute("Deleted")=="1") 
//         {
//            Cmd.CommandText = "DELETE FROM TableData" + where;
//            Cmd.ExecuteNonQuery(); 
//         }
//         else if(I.GetAttribute("Added")=="1" || I.GetAttribute("Changed")=="1")
//         {
//            foreach (System.Xml.XmlAttribute A in I.Attributes)
//            {
//               if(A!=null)
//               {
//                  string name = A.Name;
//                  if(name[0]=='W')   // Hours number
//                  {
//                     string val = A.Value.ToString();
//                     string week = name.Substring(1);
//                     Cmd.CommandText = "SELECT ID FROM TableData" + where + " AND Week=" + week;
//                     System.Data.OleDb.OleDbDataReader R = Cmd.ExecuteReader();
//                     if(!R.Read())
//                     {                // New item
//                        R.Close();
//                        Cmd.CommandText = "SELECT MAX(ID) FROM TableData";
//                        R = Cmd.ExecuteReader(); // Creates new id, but better is to define Id in database as incremental
//                        R.Read();
//                        int w = (int)R[0];
//                        R.Close();
//                        Cmd.CommandText = "INSERT INTO TableData(ID,Project,Resource,Week,Hours) VALUES (" + (w+1).ToString() + "," + prj + "," + res + "," + week + "," + val + ")";
//                        Cmd.ExecuteNonQuery();
//                     }
//                     else
//                     {                 // Existing item
//                        R.Close();
//                        Cmd.CommandText = "UPDATE TableData SET Hours=" + val + where + " AND Week=" + week;
//                        Cmd.ExecuteNonQuery();
//                     }
//                  }
//               }
//            }
                
//            if(I.HasAttribute("Project"))    // Changed resource name
//            {
//               Cmd.CommandText = "UPDATE TableData SET Resource=" + "'" + I.GetAttribute("Project").Replace("'","''") + "'" + where;
//               Cmd.ExecuteNonQuery();
//            }
//         }
//         else if(I.GetAttribute("Moved")=="2")
//         {
//            Cmd.CommandText = "UPDATE TableData SET Project='" + I.GetAttribute("Parent").Replace("'","''") + "'" + where;
//            Cmd.ExecuteNonQuery();
//         }
//      }            
//   }   
   
//   // --- Delayed changing project names ---'
//   // It must be done after changing all resources for the project
//   for(int j=0;j<Last.Count;j++)
//   {
//      Cmd.CommandText = Last[j];
//      Cmd.ExecuteNonQuery();
//   }
//}
// --------------------------------------------------------------------------
// --- Database initialization ---

string ConnString = "Data Source=sg2nwgdshsql003-floater.shr.prod.sin2.secureserver.net;initial catalog=synergydbadmin;user id=synergydbadmin;password=DBadmin123;persist security info=True;packet size=4096";
System.Data.SqlClient.SqlConnection Conn = new System.Data.SqlClient.SqlConnection(ConnString);
Conn.Open();
System.Data.SqlClient.SqlCommand Cmd = Conn.CreateCommand(); 

// --- Response initialization ---
Response.ContentType = "text/xml";
Response.Charset = "utf-8";
Response.AppendHeader("Cache-Control", "max-age=1, must-revalidate");
System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

// --- Save data to database ---
string XML = Request["TGData"];
if (XML != "" && XML != null)
{
 System.Xml.XmlDocument X = new System.Xml.XmlDocument();
 X.LoadXml(HttpUtility.HtmlDecode(XML));
 System.Xml.XmlNodeList Ch = X.GetElementsByTagName("Changes");
 System.Collections.Specialized.StringCollection Last = new System.Collections.Specialized.StringCollection();

 if (Ch.Count > 0) foreach (System.Xml.XmlElement I in Ch[0])
     {
         string[] id = I.GetAttribute("id").Split("$".ToCharArray());
         // --- Project row ---

         if (id.Length == 1)
         {
             string prj = "'" + id[0].Replace("'", "''") + "'";
             string where = " WHERE Project=" + prj + " ";
             if (I.GetAttribute("Deleted") == "1")
             {
                 Cmd.CommandText = "DELETE FROM TableData" + where;
                 Cmd.ExecuteNonQuery();
             }
             else if (I.GetAttribute("Added") == "1" || I.GetAttribute("Changed") == "1")
             {
                 if (I.HasAttribute("Project")) Last.Add("UPDATE TableData SET Project='" + I.GetAttribute("Project").Replace("'", "''") + "'" + where);
             }
         }
         // --- Resource row ---
         else
         {
             string prj = "'" + id[0].Replace("'", "''") + "'";
             string res = "'" + id[1].Replace("'", "''") + "'";
             string where = " WHERE Project=" + prj + " AND Resource=" + res + " ";
             if (I.GetAttribute("Deleted") == "1")
             {
                 Cmd.CommandText = "DELETE FROM TableData" + where;
                 Cmd.ExecuteNonQuery();
             }
             else if (I.GetAttribute("Added") == "1" || I.GetAttribute("Changed") == "1")
             {
                 foreach (System.Xml.XmlAttribute A in I.Attributes)
                 {
                     if (A != null)
                     {
                         string name = A.Name;
                         if (name[0] == 'W')   // Hours number
                         {
                             string val = A.Value.ToString();
                             string week = name.Substring(1);
                             Cmd.CommandText = "SELECT ID FROM TableData" + where + " AND Week=" + week;
                             
                             System.Data.SqlClient.SqlDataReader R = Cmd.EndExecuteReader();
                             if (!R.Read())
                             {                // New item
                                 R.Close();
                                 Cmd.CommandText = "SELECT MAX(ID) FROM TableData";
                                 R = Cmd.ExecuteReader(); // Creates new id, but better is to define Id in database as incremental
                                 R.Read();
                                 int w = (int)R[0];
                                 R.Close();
                                 Cmd.CommandText = "INSERT INTO TableData(ID,Project,Resource,Week,Hours) VALUES (" + (w + 1).ToString() + "," + prj + "," + res + "," + week + "," + val + ")";
                                 Cmd.ExecuteNonQuery();
                             }
                             else
                             {                 // Existing item
                                 R.Close();
                                 Cmd.CommandText = "UPDATE TableData SET Hours=" + val + where + " AND Week=" + week;
                                 Cmd.ExecuteNonQuery();
                             }
                         }
                     }
                 }

                 if (I.HasAttribute("Project"))    // Changed resource name
                 {
                     Cmd.CommandText = "UPDATE TableData SET Resource=" + "'" + I.GetAttribute("Project").Replace("'", "''") + "'" + where;
                     Cmd.ExecuteNonQuery();
                 }
             }
             else if (I.GetAttribute("Moved") == "2")
             {
                 Cmd.CommandText = "UPDATE TableData SET Project='" + I.GetAttribute("Parent").Replace("'", "''") + "'" + where;
                 Cmd.ExecuteNonQuery();
             }
         }
     }

 // --- Delayed changing project names ---'
 // It must be done after changing all resources for the project
 for (int j = 0; j < Last.Count; j++)
 {
     Cmd.CommandText = Last[j];
     Cmd.ExecuteNonQuery();
 }
}
%><?xml version="1.0"?>
<Grid>
   <IO Result='0'/>
</Grid>