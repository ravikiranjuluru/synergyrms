<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
   UICulture="en" Culture="en-US" Inherits="System.Web.Mvc.ViewPage<PM_Projects>" %>
    <%@ Import Namespace="SynergyRMS.Models" %>
  <%--  <%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>--%>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_page.css"
        type="text/css" />
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_table.css"
        type="text/css" />

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.js"></script>

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.dataTables.js"></script>

    <style type="text/css">
        .t
        {
            background: url(../../Content/images/common/dot_top.gif) 0 0 repeat-x;
            width: 100%;
        }
        .b
        {
            background: url(../../Content/images/common/dot_bottom.gif) 0 100% repeat-x;
        }
        .l
        {
            background: url(../../Content/images/common/dot_left.gif) 0 0 repeat-y;
        }
        .r
        {
            background: url(../../Content/images/common/dot_right.gif) 100% 0 repeat-y;
        }
        .bl
        {
            background: url(../../Content/images/common/bl.gif) 0 100% no-repeat;
        }
        .br
        {
            background: url(../../Content/images/common/br.gif) 100% 100% no-repeat;
        }
        .tl
        {
            background: url(../../Content/images/common/tl.gif) 0 0 no-repeat;
        }
        .tr
        {
            background: url(../../Content/images/common/tr.gif) 100% 0 no-repeat;
            padding: 10px;
        }
        .outer
        {
            position: relative;
            padding-top: 20px;
        }
        .boxtitle
        {
            position: absolute;
            top: 0;
            left: -50;
            padding-left: 15px;
            padding-right: 5px;
            width: 191px;
        }
        .content
        {
            padding-top: 10px;
        }
        .style4
        {
            width: 12%;
        }
        #tblprojects
        {
            width: 90%;
        }
    </style>

  <script type="text/javascript">
        function lnkEditProject_onClick(proid) {
            //AECWinPopup.open('EditProjectLoad?id=' + proid, 550, 500, popupCallback, '', false);
            AECWinPopup.open('EditProjectLoad?id=' + proid, 650, 600, popupCallback, '', false);
        }
        function popupCallback(context, returnValue) {            
        }

        function lnkAssignUsers_onClick(proid) {
            AECWinPopup.open('AssignUsersProjectLoad?id=' + proid, 650, 750, popupCallback, '', false);
        }
        
    </script>
    
    <%--<script type="text/javascript">
        $(function() {
            $('#popupEditProject').click(function(e) {
                e.preventDefault();
                var $this = $(this);
                var horizontalPadding = 30;
                var verticalPadding = 30;
                $('<iframe id="externalSite" class="externalSite" src="' + this.href + '" />').dialog({
                    title: 'Edit Project Information',
                    autoOpen: true,
                    width: 550,
                    height: 500,
                    modal: true,
                    resizable: true,
                    autoResize: true,
                    overlay: {
                        opacity: 0.5,
                        background: "black"
                    }
                }).width(800 - horizontalPadding).height(500 - verticalPadding);
            });
        });
        
	</script>--%>
	    
<% var currentusername = HttpContext.Current.User.Identity.Name.ToString();%>
    <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        View Projects
                       
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
   <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
        
            <tr>
                <td>
                    <div id="masterpage_divBody" class="formBody">
                        <table id="tabTablectl00_phTabstripHeader_tabMain" style="border: medium none; width: 100%;"
                            class="" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td id="ctl00_phTabstripHeader_tabMain_tdStretch" align="left">
                                        <div id="ctl00_phTabstripHeader_tabMain_divTabContainer" style="overflow: hidden;">
                                            <table id="ctl00_phTabstripHeader_tabMain_tabStrip" border="0" cellpadding="0" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace"
                                                                width="5" height="1">
                                                        </td>
                                                        <td class="tabSelected" nowrap="nowrap">
                                                            Project Informations
                                                        </td>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0"
                                                                width="1" height="1">
                                                        </td>
                                                       
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="tabStripBase" border="0" cellpadding="0" cellspacing="0" width="100%"
                                            height="5">
                                            <tbody>
                                                <tr>
                                                    <td class="tabScrollEnabled" id="btnScrollLeft" align="left" valign="middle">
                                                        <img src="../../Content/images/common/arrowleft_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollLeft"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                    <td width="100%">
                                    </td>
                                                    <td class="tabScrollEnabled" id="btnScrollRight" align="right" valign="middle">
                                                        <img src="../../Content/images/common/arrowright_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollRight"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                     <% using (Html.BeginForm("NewProject", "Project"))
                        { %>
                        <table id="masterPage_tblFormContentRoot" style="border-collapse: collapse;" border="0"
                            cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td align="justify" valign="top" style="width:80%">
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" title="Refresh the Project List" onclick="window.location.reload( true );">
                                   <img src="../../Content/images/common/menuitem_rollback.gif"   
                                    alt="Refresh the Project List" title="Refresh the Project List"/>Refresh Project List
                                    </a>
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                        &nbsp;</td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                        &nbsp;</td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="top" >
                                      
                                      <table id="tblprojects" border="0" cellspacing="0" cellpadding="0" 
                                            class="display">
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
            <th id="edit"  align="center" class="style4">
            </th>
            <th id="delete" align="center">
            </th>
        </tr>
    </thead>
    <tbody>
        <%
foreach (PM_Projects project in (List<PM_Projects>)ViewData["ProjectList"])
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
             <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.editProject))
               { %>
            <td headers="edit" class="evnrow-mdl" align="left" style="width: 12%">
                <a href="#"><strong>
                    
                    <a class="link" onclick="lnkEditProject_onClick('<%= project.ProjectId%>');"
                            title="Edit User Roles" href="#" >Edit Project </a>                   
                </strong></a>
            </td>
            <%} %>
             <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.assignToProject))
               { %>
            <td headers="delete" class="evnrow-mdl" align="left" style="width: 15%">
                <a href="#"><strong>
                   <a class="link" onclick="lnkAssignUsers_onClick('<%= project.ProjectId%>');"
                            title="Assign Users to this project" href="#">Assign Users </a>
                </strong></a>
            </td>
            <%} %>
        </tr>
        <%} %>
    </tbody>
</table>
                                      
                                      
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="masterpage_divFoot" class="formFoot">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td align="left" valign="middle">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td align="left">
                                                        
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <%} %>
                    
                    <div style="padding-left: 10px; padding-right: 10px;"></div>
                </td>
            </tr>
        </tbody>
    </table>

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
