<%@ Page language="c#" Debug="true"%>

<%
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
    //string Week = "W" + i.ToString();
    //Cols += "<C Name='" + Week + "' Type='Float'/>"; // Column definitions
    //if (CSum != "") CSum += "+";
    //CSum += Week;                                   // Right fixed result column formula
    //DRes += Week + "Formula='sum()' ";              // Tree result row formulas
    //DDef += Week + "='0' ";                         // Default values for data rows
}
// --------------------------------------------------------------------------
%>

<?xml version="1.0"?>

<Grid>
  <Cfg id='Id4' MainCol='U' 
    FullId='1' IdNames='U' AppendId='1' 
    IdChars='0123456789' NumberId='1' 
    LastId='1' IdCompare='4'/>
  <LeftCols>
    <C Name='id' CanEdit='0' Width='1'/>
    <C Name="C" BFormat="" Type="Int" Width="1" CanEdit='0'/> 
  </LeftCols>
  <Cols>
    <C Name='U' Width='120' CanEdit='0'/>    
    <C Name="S" Width="80" Type="Date" Format="MM/dd/yyyy" CanEdit='0' /> 
    <C Name="E" Width="75" Type="Date" Format="MM/dd/yyyy" CanEdit='0'/>
    
    
     
  
     </Cols>
     
      <RightCols>
       <C Name="G" Type="Gantt"
         GanttStart="S" GanttEnd="E" GanttComplete="C" 
         GanttUnits="d" GanttChartRound="w" GanttEdit="Main,Dependency"
         GanttRight="1" 
         GanttBackground="1/6/2008~1/6/2008 0:01" GanttBackgroundRepeat="w" 
         GanttHeader1="w" GanttFormat1="dddddd MMMM yyyy"
         GanttHeader2="d" GanttFormat2="ddddd"
         />
          </RightCols>
     
  
  <Header id='id' U='User+Project' 
     CDef='Project' S='StartDate' E='EndDate'/>
     
  <Def>
    <D Name='Project' CDef='R' 
      U='New project' Spanned='1' 
      USpan='2'/>
    <D Name='R' CDef='' U='Name' 
      A='New'/>
  </Def>
  <%--<Body>
    <B>
      <I U='Project1'>
        <I U='David1'  S='02/10/2011' E='02/15/2011'/>
        <I U='Linda1' />
        <I U='Adam1' />
      </I>
      <I U='Project2'>
        <I U='David2' />
        <I U='Jan2' />
        <I U='Linda2'/>
      </I>
    </B>
  </Body>--%>
  
  <%--Cells="Correct,Save,Reload,Repaint,Print,ExportPDF,Export,Undo,Redo,Add,AddChild,Sort,Calc,ExpandAll,CollapseAll,ZoomIn,ZoomOut,ZoomFit,Columns,Cfg,Help,Debug,StyleTitle,StyleStandard,StyleLight,StyleOffice,StyleModern,StyleBorders,StyleRobust,StylePlain,StyleColors,Empty,Formula,Resize"--%>
  
  <Toolbar Styles='1' 
        Cells='Reload,Print,ExportPDF,Export,Sort,Calc,ExpandAll,CollapseAll,ZoomIn,ZoomOut,ZoomFit'/>
  <MenuCfg ShowDeleted='0' AutoSort='0' 
           AutoUpdate='0' Separator1='0' 
           MouseHover='1' ShowDrag='0' 
           ShowPanel='1' ShowIcons='0'/>
  <Panel Copy='0' Move='0' 
        Select='0' Delete='0'/>


</Grid>

