<%@ Page language="c#" Debug="true"%>
<script language="c#" runat="server">
/// Uses new ASP.NET style scripting with event Page_Load, uses OleDbDataReader and OleDbCommand to access database
// -------------------------------------------------------------------------------------------------------------------------------
void Page_Load(object sender, System.EventArgs e) 
{
try
{
   // --- Response initialization ---
   Response.ContentType = "text/xml";
   Response.Charset = "utf-8";
   Response.AppendHeader("Cache-Control","max-age=1, must-revalidate");
   System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");

   // --- Database initialization ---
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
   
   // --- Save data to database ---
   string XML = Request["Data"];
   if (XML != "" && XML != null)
   {
      System.Xml.XmlDocument X = new System.Xml.XmlDocument();
      X.LoadXml(HttpUtility.HtmlDecode(XML));
      System.Xml.XmlNodeList Ch = X.GetElementsByTagName("Changes");
      if (Ch.Count > 0) foreach (System.Xml.XmlElement I in Ch[0])
      {
         string SQL = "";
         string id = I.GetAttribute("id");

         if (I.GetAttribute("Deleted") == "1") SQL = "DELETE FROM GanttBasic WHERE id=" + id;
         else if(I.GetAttribute("Added")=="1")
         {
            SQL = "INSERT INTO GanttBasic(id,T,S,E,C,D) VALUES("
               + id + ","
               + "'" + I.GetAttribute("T").Replace("'","''") + "',"
               + "'" + I.GetAttribute("U").Replace("'", "''") + "',"
               + "'" + I.GetAttribute("S") + "',"
               + "'" + I.GetAttribute("E") + "',"
               + (I.GetAttribute("C") == "" ? "0" : I.GetAttribute("C")) + ","
               + "'" + I.GetAttribute("D") + "')";
         }
         else if (I.GetAttribute("Changed") == "1")
         {
            SQL = "UPDATE GanttBasic SET ";
            for(int idx=0;idx<I.Attributes.Count;idx++)
            {
               System.Xml.XmlAttribute A = I.Attributes[idx];
               if (A!=null)
               { 
                  string name = A.Name;
                  string val = A.Value;
                  if(name=="T") SQL += name + " = '" + val.Replace("'","''") + "',";
                  else if (name == "U") SQL += name + " = '" + val.Replace("'", "''") + "',";
                  else if (name == "C") SQL += name + " = " + val + ",";
                  else if (name == "S" || name == "E" || name == "D") SQL += name + " = '" + val + "',";
               }
            }
            SQL = SQL.TrimEnd(",".ToCharArray()); // Last comma away
            SQL += " WHERE id=" + id;
         }
         if (SQL != "")
         {
            Cmd.CommandText = SQL;
            //Response.Write(SQL);
            Cmd.ExecuteNonQuery();  
         }
         
      }
      Response.Write("<Grid><IO Result='0'/></Grid>");
   }
   // ---   
   Conn.Close();      
   
} catch(Exception E)
{
   Response.Write("<Grid><IO Result=\"-1\" Message=\"Error in TreeGrid example:&#x0a;&#x0a;"+E.Message.Replace("&","&amp;").Replace("<","&lt;").Replace("\"","&quot;")+"\"/></Grid>");
}
}
// -------------------------------------------------------------------------------------------------------------------------------
</script>
