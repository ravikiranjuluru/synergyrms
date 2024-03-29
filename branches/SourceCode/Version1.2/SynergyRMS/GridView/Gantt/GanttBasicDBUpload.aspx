   <%@ Page language="c#" Debug="true"%>
<%@ Import Namespace ="SynergyRMS.Models" %>
<script language="c#" runat="server">
/// Uses new ASP.NET style scripting with event Page_Load, uses OleDbDataReader and OleDbCommand to access database
// -------------------------------------------------------------------------------------------------------------------------------
void Page_Load(object sender, System.EventArgs e) 
{
try
{
    int projectid = Convert.ToInt32(Request.QueryString["projectid"]);
   // --- Response initialization ---
   Response.ContentType = "text/xml";
   Response.Charset = "utf-8";
   Response.AppendHeader("Cache-Control","max-age=1, must-revalidate");
   System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

  //  string ConnString = "Data Source=sg2nwgdshsql003-floater.shr.prod.sin2.secureserver.net;initial catalog=synergydbadmin;user id=synergydbadmin;password=DBadmin123;persist security info=True;packet size=4096";
   //System.Data.SqlClient.SqlConnection Conn = new System.Data.SqlClient.SqlConnection(ConnString);
   //Conn.Open();
   //System.Data.SqlClient.SqlCommand Cmd = Conn.CreateCommand();   
   
   // --- Save data to database ---
   string XML = Request["Data"];
   bool isError = false;
    string Errormsg = "";
   if (XML != "" && XML != null)
   {
      System.Xml.XmlDocument X = new System.Xml.XmlDocument();
      X.LoadXml(HttpUtility.HtmlDecode(XML));
      System.Xml.XmlNodeList Ch = X.GetElementsByTagName("Changes");
       List<PM_ProjectResources> resourceList = new List<PM_ProjectResources>();

       string[] arrnameUname = null;
       string nameUname = null;
                  string name = null;
                  string uname = null;
                  string role = null;
                  string sdate = null;
                  string edate = null;
                  string complete = null; 
                      
      if (Ch.Count > 0) foreach (System.Xml.XmlElement I in Ch[0])
          {
              string SQL = "";
              string id = I.GetAttribute("id");
              //bool isDelete = false;
              //bool isNew = false;
              //bool isUpdate = false;
              if (I.GetAttribute("Deleted") == "1")
              {
                  //SQL = "DELETE FROM GanttBasic WHERE id=" + id;
                  //isDelete = true;
                  PM_ProjectResources resource=SynergyService.GetResouceById(Convert.ToInt32(id));

                  SynergyService.DeleteProjectResources(resource);
                  
              }
              else
                  if (I.GetAttribute("Added") == "1")
                  {
                      //isNew = true;;
                      nameUname = I.GetAttribute("N").ToString();
                      arrnameUname = nameUname.Split(new char[]{'#'});
                      name = arrnameUname[0].ToString();
                      uname = arrnameUname[1].ToString();
                       role = I.GetAttribute("R").ToString();
                       sdate = DateTime.Now.ToString();
                      if (I.GetAttribute("S") != "")
                      {
                          sdate = I.GetAttribute("S");
                      }
                       edate = DateTime.Now.ToString();
                      if (I.GetAttribute("E") != "")
                      {
                          sdate = I.GetAttribute("E");
                      }
                       complete = (I.GetAttribute("C") == "" ? "0" : I.GetAttribute("C"));

                       PM_ProjectResources resource = new PM_ProjectResources();

                       if (uname != null)
                       {
                           resource.aspnet_Users = SynergyService.GetUserByName(uname);
                       }
                       if (edate != null)
                       {
                           resource.AllocatedEndDate = Convert.ToDateTime(edate);
                       }
                       if (sdate != null)
                       {
                           resource.AllocatedStartDate = Convert.ToDateTime(sdate);
                       }
                       if (role != null)
                       {
                           resource.PM_ProjectRoles = SynergyService.GetProjectRoleByName(role);
                       }
                       if (complete != null)
                       {
                           resource.Effort = Convert.ToInt32(complete);
                       }
                       UserEffort usrEffortSave = SynergyService.MaxAllocationValidation(uname, Convert.ToDateTime(sdate), Convert.ToDateTime(edate), Convert.ToInt32(complete), 0);
                       if (usrEffortSave.IsCanAllocated)
                       {
                           SynergyService.SaveProjectResources(resource);
                       }
                       else
                       {
                           isError = true;
                           Errormsg = usrEffortSave.CustomeMessge;
                       }
                      //    //SQL = "INSERT INTO GanttBasic(id,T,U,UL,S,E,C) VALUES("
                      //    //   + id + ","
                      //    //   + "'" + I.GetAttribute("N").Replace("'", "''") + "',"
                      //    //   + "'" + I.GetAttribute("R").Replace("'", "''") + "',"                     
                      //    //   + "'" + I.GetAttribute("S") + "',"
                      //    //   + "'" + I.GetAttribute("E") + "',"
                      //    //   + (I.GetAttribute("C") == "" ? "0" : I.GetAttribute("C")) + "')";
                  }
                  else if (I.GetAttribute("Changed") == "1")
                  {
                      //isUpdate = true;
                      //    SQL = "UPDATE GanttBasic SET ";
                      for (int idx = 0; idx < I.Attributes.Count; idx++)
                      {
                          System.Xml.XmlAttribute A = I.Attributes[idx];
                          if (A != null)
                          {
                              string nameval = A.Name;
                              string val = A.Value;
                              if (nameval == "N")
                              {                                  
                                  //name = val.ToString();
                                  nameUname = val.ToString();                                 
                                  arrnameUname = nameUname.Split(new char[] { '#' });
                                  name = arrnameUname[0].ToString();
                                  uname = arrnameUname[1].ToString();
                              }
                              //if (nameval == "U") 
                              //{   
                              //  uname = val.ToString();
                              //}
                              if (nameval == "R")
                              {
                                  role = val.ToString();
                              }

                              if (nameval == "S")
                              {
                                  sdate = val.ToString();                                   
                              }                              
                              if (nameval == "E")
                              {
                                  edate = val.ToString(); 
                              }
                              if (nameval == "C")
                              {
                                  complete = (val.ToString() == "" ? "0" : val.ToString());
                              }
                              
                              //string name = A.Name;
                              //string val = A.Value;
                              //if (name == "T") SQL += name + " = '" + val.Replace("'", "''") + "',";
                              //else if (name == "U") SQL += name + " = '" + val.Replace("'", "''") + "',";
                              //else if (name == "UL") SQL += name + " = '" + val.Replace("'", "''") + "',";
                              //else if (name == "C") SQL += name + " = " + val + ",";
                              //else if (name == "S" || name == "E" || name == "D") SQL += name + " = '" + val + "',";
                          }
                      }
                      PM_ProjectResources resource = SynergyService.GetResouceById(Convert.ToInt32(id));

                      if (uname!=null)
                      {
                          resource.aspnet_Users = SynergyService.GetUserByName(uname);
                      }
                      if (edate != null)
                      {
                          resource.AllocatedEndDate = Convert.ToDateTime(edate);
                      }
                      if (sdate != null)
                      {
                          resource.AllocatedStartDate = Convert.ToDateTime(sdate);
                      }
                      if (role != null)
                      {
                          resource.PM_ProjectRoles = SynergyService.GetProjectRoleByName(role);
                      }
                      if (complete != null)
                      {
                          resource.Effort =Convert.ToInt32(complete);
                      }
                      UserEffort usrEffortUpdate = SynergyService.MaxAllocationValidation(uname, Convert.ToDateTime(sdate), Convert.ToDateTime(edate), Convert.ToInt32(complete), Convert.ToInt32(id));
                      if (usrEffortUpdate.IsCanAllocated)
                      {
                          SynergyService.UpdateProjectResources(resource);
                      }
                      else
                      {
                          isError = true;
                          Errormsg = usrEffortUpdate.CustomeMessge;
                      }
                      
                     
                      
                      
                      //    SQL = SQL.TrimEnd(",".ToCharArray()); // Last comma away
                      //    SQL += " WHERE id=" + id;
                  }
             

          }
      
        
       
       
      
      if (isError)
      {
          Response.Write("<Grid><IO Result=\"-1\" Message=\"" + Errormsg + ":&#x0a;&#x0a;" + Errormsg.Replace("&", "&amp;").Replace("<", "&lt;").Replace("\"", "&quot;") + "\"/></Grid>");
      }
      else
      {
          Response.Write("<Grid><IO Result='0'/></Grid>");
      }
      
   }
   // ---   
      
   
} catch(Exception E)
{
    Response.Write("<Grid><IO Result=\"-1\" Message=\"Error in Project Schedule:&#x0a;&#x0a;" + E.Message.Replace("&", "&amp;").Replace("<", "&lt;").Replace("\"", "&quot;") + "\"/></Grid>");
}
}
// -------------------------------------------------------------------------------------------------------------------------------
</script>
