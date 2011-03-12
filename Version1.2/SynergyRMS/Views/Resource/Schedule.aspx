<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="SynergyRMS.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_page.css"
        type="text/css" />
            <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_table.css"
        type="text/css" />
<script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.js"></script>
<script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.dataTables.js"></script>
  
     <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        User Schedule
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
   <% var currentusername = HttpContext.Current.User.Identity.Name.ToString();%>
  <div style="padding: 0px;">
        <table cellspacing="0" cellpadding="0" class="dashboardTabStrip" style="border: medium none;
            width: 100%;" id="Table1">
            <tbody>
                <tr>
                    <td align="left" id="Td3">
                        <div style="overflow: hidden;" id="Div1">
                            <table cellspacing="0" cellpadding="0" border="0" id="Table2">
                                <tbody>
                                    <tr>
                                        <td class="dashboardTabSpace">
                                            <img height="1" width="5" id="Img3" src="../../Content/images/common/space.gif">
                                        </td>
                                         <td nowrap="nowrap" class="dashboardTabSelected">
                                                Scheduling
                                            </td>
                                        <td class="dashboardTabSpace">
                                            <img height="1" width="1" id="Img4" src="../../Content/images/common/space.gif">
                                        </td>
                                        <%--<td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Calendar')" onmouseout="this.className='dashboardTabOff';"
                                            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
                                            <a href="../Resource/Calendar">Calendar</a>
                                            
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace2" src="../../Content/images/common/space.gif">
                                        </td>
                                        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Utilisation')" onmouseout="this.className='dashboardTabOff';"
                                            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
                                            <a href="../Resource/Utilisation">Utilisation</a>
                                        </td>--%>
                                        <td nowrap="nowrap" width="100%" valign="middle" align="left" class="dashboardTabTail">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table height="5" width="100%" cellspacing="0" cellpadding="0" border="0" class="dashboardTabStripBase">
                            <tbody>
                                <tr>
                                    <td valign="middle" align="left" id="btnScrollLeft" class="tabScrollEnabled">
                                        <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollLeft" src="../../Content/images/icon/arrowleft_grey.gif">
                                    </td>
                                    <td width="100%">
                                    </td>
                                    <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
                                        <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollRight" src="../../Content/images/icon/arrowright_grey.gif">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td>
                        <table class="dashboardOperationsBarOuter" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td class="dashboardOperationsBar">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td align="left" valign="middle">
                                                        <!-- Toolbar Content Goes Here -->
                                                        <table border="0">
                                                            <tbody>
                                                                <tr>
                                                                <% using (Html.BeginForm("ViewSchedule", "Resource"))
                                                                   {
                                                                       if (ViewData["Userlist"] != null)
                                                                       { %>
                                                                    <td style="white-space: nowrap;" align="left">
                                                                        Users:
                                                                        <%=Html.DropDownList("ddUsersList", (SelectList)ViewData["Userlist"], new { @class = "comboBox" })%>
                                                                        
                                                                    </td>
                                                                    
                                                                    <td align="left">
                                                                        <input type="submit" value="View" class="button" id="btnView" name="btnView">
                                                                    </td>
                                                                    <% }
                                                                       else
                                                                       {%>
                                                                    <td>
                                                                        Unable to load user list.
                                                                    </td>
                                                                    <%} %>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                   
                                                                    <% }%>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                    <td style="padding-right: 0px;" align="right" valign="middle">
                                                        <table border="0px" cellpadding="0" cellspacing="1">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="white-space: nowrap;" align="right" valign="middle">
                                                                    </td>
                                                                    <td class="" style="padding: 0px; white-space: nowrap;" align="right" valign="middle">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td class="" style="padding-left: 2px; padding-right: 4px;" align="right" valign="middle">
                                                                        &nbsp;
                                                                    </td>
                                                                   
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td align="center" style="width:70%" class="formDetail">
                                        &nbsp;</td>
                                </tr>
                               
                                <tr>
                                    <td align="left" style="width:70%" class="formDetail">
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <%if (ViewData["ViewUser"] != null)
                                          {
                                              var name = ViewData["ViewUser"].ToString(); 
                                              %>
                                        Loading schedule of <strong><%=name%></strong>
                                        <%} %>
                                        </td>
                                </tr>
                               
                                <tr>
                                    <td align="center" style="width:70%" class="formDetail">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                   <td align="center" style="width:70%" class="formDetail">
                                    <table width="70%" class="formDetail"><tr align="center" valign="bottom">
                                    <td width="70%" align="center" valign="bottom">
                                    
                                    <br />
                                    <%if (ViewData["UserProjectList"] != null)
                                              { %>
                                              
   <table id="tblprojects" border="0" cellspacing="0" cellpadding="0" class="display" width="90%">
    <thead>
        <tr>
            <th id="pcode" align="center"  class="style9" align="center" height="30">
                <a href="#">Project Code</a>
            </th>
            <th id="pname" align="center" class="style10" align="center">
                <a href="#">Project Name</a>
            </th>
            <th id="pdtype" align="center" class="style9" align="center">
                <a href="#">Project Type</a></th>                                                                                                            
            <th id="pdesc" align="center" class="style11" align="center">
                <a href="#">Description</a>
            </th>                                                                                                            
            <th id="psdate" align="center" class="style11" align="center">
                <a href="#">Start Date</a>
            </th>
            <th id="pedate" align="center" align="center">
                <a href="#">End Date</a>
            </th>
            
        </tr>
    </thead>
    <tbody>
        <%
            foreach (PM_Projects project in (List<PM_Projects>)ViewData["UserProjectList"])
{

        %>
        <tr>
            <td headers="pcode" class="oddrow-mdl" align="left" height="12" 
                style="width: 10%">
               <%= project.ProjectCode%>
            </td>
            <td headers="pname" class="oddrow-mdl" align="left" style="width: 10%">
                 <%= project.ProjectName%>
            </td>
            <td headers="pdtype" class="oddrow-mdl" align="left" style="width: 10%">
                 <%= project.PM_Types.TypeName%></td>
            <td headers="pdesc" class="oddrow-mdl" align="left" style="width: 22%">
                <%= project.Description%>
            </td>
            <td headers="psdate" class="oddrow-mdl" align="left" style="width: 15%">
                <%=String.Format("{0:ddd, MMM d, yyyy}", project.ProjectStartDate.Date)%>
            </td>
            <td headers="pedate" class="oddrow-mdl" align="left" style="width: 15%">
                <%= String.Format("{0:ddd, MMM d, yyyy}",project.ProjectEndDate.Date)%>
            </td>
            
        </tr>
        <%} %>
    </tbody>
</table>
                                                                                 
                                              
                                              
                               <% }  %>
                               
                                    </td></tr></table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="formDetail">
                                        &nbsp;
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                    </td>
                </tr>
            </tbody>
        </table>
        
    </div>
    <script>
        $(document).ready(function() {
            $('#tblprojects').dataTable({
                "bPaginate": true,
                "bLengthChange": true,
                "bFilter": true,
                "bSort": true,
                "bInfo": true,
                "bAutoWidth": true,
                "sPaginationType": 'full_numbers',
                //"bJQueryUI": true,
                'sDom': '<"top"lf>t<"clear"><"bottom"ip><"clear">'
            });
        });
    </script>
</asp:Content>
