<%@ Page language="c#" Debug="true"%><%
// -------------------------------------------------------------------------- 
///! Support file only, run Grid.html instead !
/// This file is used as Layout_Url for TreeGrid
/// It generates layout structure for TreeGrid from database
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

//// --- Generating layout ---
//Cmd.CommandText = "SELECT MIN(Week),MAX(Week) FROM TableData WHERE Week>0 AND Week<53";
//System.Data.OleDb.OleDbDataReader R = Cmd.ExecuteReader();
//R.Read();
   
//int Min = (int)(double)R[0];
//int Max = (int)(double)R[1];
//string Cols="", CSum="", DRes="", DDef="";
//for(int i=Min;i<=Max;i++)
//{
//   string Week = "W" + i.ToString();
//   Cols += "<C Name='" + Week + "' Type='Float'/>"; // Column definitions
//   if (CSum!="") CSum += "+";
//   CSum += Week;                                   // Right fixed result column formula
//   DRes += Week + "Formula='sum()' ";              // Tree result row formulas
//   DDef += Week + "='0' ";                         // Default values for data rows
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

// --- Generating layout ---


Cmd.CommandText = "SELECT MIN(Week),MAX(Week) FROM TableData WHERE Week>0 AND Week<53";
System.Data.SqlClient.SqlDataReader R = Cmd.ExecuteReader();
R.Read();

int Min = (int)R[0];
int Max = (int)R[1];

string Cols = "", CSum = "", DRes = "", DDef = "";
for (int i = Min; i <= Max; i++)
{
    string Week = "W" + i.ToString();
    Cols += "<C Name='" + Week + "' Type='Float'/>"; // Column definitions
    if (CSum != "") CSum += "+";
    CSum += Week;                                   // Right fixed result column formula
    DRes += Week + "Formula='sum()' ";              // Tree result row formulas
    DDef += Week + "='0' ";                         // Default values for data rows
}
// --------------------------------------------------------------------------
%><?xml version="1.0"?>
<Grid>
   <Cfg id='ResourceGrid' MainCol='Project' MaxHeight='1' ShowDeleted="0" DateStrings='1' 
      IdNames='Project' AppendId='1' FullId='1' IdChars='0123456789' NumberId='1' LastId='1' CaseSensitiveId='0'/>
   <LeftCols>
      <C Name='id' CanEdit='0'/>
      <C Name='Project' Width='250' Type='Text'/>
   </LeftCols>
   <Cols><%=Cols%>
   </Cols>
   
<%-- <RightCols>
      <C Name='Sum' Width='50' Type='Float' Formula='<%=CSum%>' Format='0.##'/>
   </RightCols>--%>
   
   <Def>
      <D Name='R' Project='New resource' CDef='' AcceptDef='' <%=DDef%>/>
      <D Name='Node' Project='New project' CDef='R' AcceptDef='R' Calculated='1' SumFormula='sum()' <%=DRes%> ProjectHtmlPrefix='&lt;B>' ProjectHtmlPostfix='&lt;/B>'/>
   </Def>
   
   <Root CDef='Node' AcceptDef='Node' />
   
   <Header id='id (debug)' Project='Project / resource'/>
  
  <Foot>
      <I Kind='Space' RelHeight='100'/>
      <I Def='Node' Project='Total results' ProjectCanEdit='0'/>
   </Foot>
</Grid>
<Grid>
  <Cfg id='Id4' MainCol='U' 
    FullId='1' IdNames='U' AppendId='1' 
    IdChars='0123456789' NumberId='1' 
    LastId='1' IdCompare='4'/>
  <LeftCols>
    <C Name='id' CanEdit='0' 
      Width='115'/>
  </LeftCols>
  <Cols>
    <C Name='U' Width='95'/>
    <C Name='A' Width='30'/>
  </Cols>
  <Header id='Gen id' U='Unique' 
    A='Tmp' CDef='Project'/>
  <Def>
    <D Name='Project' CDef='R' 
      U='New project' Spanned='1' 
      USpan='2'/>
    <D Name='R' CDef='' U='Name' 
      A='New'/>
  </Def>
  <Body>
    <B>
      <I U='Project1'>
        <I U='David' A='V1-1'/>
        <I U='Linda' A='V1-3'/>
        <I U='Adam' A='V1-4'/>
      </I>
      <I U='Project2'>
        <I U='David' A='V2-1'/>
        <I U='Jan' A='V2-2'/>
        <I U='Linda' A='V2-3'/>
      </I>
    </B>
  </Body>
</Grid>
