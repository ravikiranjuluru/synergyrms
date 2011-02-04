<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage<PM_Projects>" %>
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
    </style>
    
    <script type="text/javascript">
        function lnkEditProject_onClick(proid) {
            AECWinPopup.open('EditProjectLoad?id=' + proid, 550, 500, popupCallback, '', false);
        }
        function popupCallback(context, returnValue) {
        }
</script>

    <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        View Project
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
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
                                                                <td class="" style="padding-right: 10px;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="white-space: nowrap;" align="right" valign="middle">
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
                                <td>
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
    <div style="padding: 0px;">
        <table id="tabTablectl00_ucTabStrip" style="border: medium none; width: 100%;" class="dashboardTabStrip"
            cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td id="ctl00_ucTabStrip_tdStretch" align="left">
                        <div id="ctl00_ucTabStrip_divTabContainer" style="overflow: hidden;">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="dashboardTabStripBase" border="0" cellpadding="0" cellspacing="0" width="100%"
                            height="5">
                            <tbody>
                                <tr>
                                    <td class="tabScrollEnabled" id="btnScrollLeft" align="left" valign="middle">
                                        <img src="../../Content/images/common/arrowleft_grey.gif" id="ctl00_ucTabStrip_imgScrollLeft"
                                            style="display: none;" align="middle">
                                    </td>
                                    <td width="100%">
                                    </td>
                                    <td class="tabScrollEnabled" id="btnScrollRight" align="right" valign="middle">
                                        <img src="../../Content/images/common/arrowright_grey.gif" id="ctl00_ucTabStrip_imgScrollRight"
                                            style="display: none;" align="middle">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="ctl00_tblMain" style="padding: 3px; border-top: 1px solid rgb(153, 153, 153);
            border-collapse: collapse;" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td style="border: medium none; margin: 0px; border-collapse: collapse;" align="left"
                        valign="top" width="100%">
                        <table style="border-style: none; border-color: inherit; border-width: medium; border-collapse: collapse;
                            margin: 0px; padding: 0px; height: 268px; width: 96%;" border="0" cellpadding="0"
                            cellspacing="0">
                            <tbody>
                                <tr>
                                    <td style="padding: 2px; width: 100%;" colspan="1" rowspan="1" align="center" valign="top">
                                        <div class="outer">
                                            <div class="boxtitle">
                                                <table style="background-color: white;">
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <table>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td id="td2" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                                                padding-left: 4px; padding-right: 5px;">
                                                                                List of Projects
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="t">
                                                <div class="b">
                                                    <div class="l">
                                                        <div class="r">
                                                            <div class="bl">
                                                                <div class="br">
                                                                    <div class="tl">
                                                                        <div class="tr">
                                                                            <div class="content">
                                                                                <style type="text/css">
                                                                                    .style4
                                                                                    {
                                                                                        width: 242px;
                                                                                    }
                                                                                    .style5
                                                                                    {
                                                                                        width: 179px;
                                                                                    }
                                                                                    .style6
                                                                                    {
                                                                                        width: 144px;
                                                                                    }
                                                                                    </style>
<table style="padding-left: 10px; width: 100%;">

<tr>
<td align="left" valign="top">

<table id="tblprojects" width="100%" border="0" cellspacing="0" cellpadding="0" class="display">
    <thead>
        <tr>
            <th id="pcode" width="34%" align="left" height="30">
                <a href="#">Project Code</a>
            </th>
            <th id="pname" width="12%" align="left">
                <a href="#">Project Name</a>
            </th>
            <th id="pdesc" width="20%" align="left">
                <a href="#">Description</a>
            </th>                                                                                                            
            <th id="psdate" width="10%" align="left">
                <a href="#">Start Date</a>
            </th>
            <th id="pedate" width="10%" align="left">
                <a href="#">End Date</a>
            </th>
            <th id="edit" width="2%">
            </th>
            <th id="Delete" width="2%">
            </th>
        </tr>
    </thead>
    <tbody>
        <%
foreach (PM_Projects project in (List<PM_Projects>)ViewData["ProjectList"])
{

        %>
        <tr>
            <td headers="pcode" class="oddrow-mdl" align="left" height="12" width="34%">
               <%= project.ProjectCode%>
            </td>
            <td headers="pname" class="oddrow-mdl" align="left" width="20%">
                 <%= project.ProjectName%>
            </td>
            <td headers="pdesc" class="oddrow-mdl" align="left" width="20%">
                <%= project.Description%>
            </td>
            <td headers="psdate" class="oddrow-mdl" align="left" width="20%">
                <%= project.ProjectStartDate%>
            </td>
            <td headers="pedate" class="oddrow-mdl" align="left" width="20%">
                <%= project.ProjectEndDate%>
            </td>
            
            <td headers="edit" class="evnrow-mdl" align="left" width="20%">
                <a href="#"><strong>
                    <%--<%=Html.ActionLink<UserController>(c => c.EditManager(manager.ProviderUserKey.ToString()), "Edit")%>--%>
                    <a class="link" onclick="lnkEditProject_onClick('<%= project.ProjectId%>');"
                            title="Edit User Roles" href="#">Edit Project </a>
                </strong></a>
            </td>
            <td headers="Delete" class="evnrow-mdl" align="left" width="2%">
                <a href="#"><strong>
                    <%-- Html.ActionLink<UserController>(c => c.Delete(manager.ProviderUserKey.ToString()), "Delete", new { onclick = "return confirm('Are you sure you wish to delete selected manager?');" })--%>
                    <%-- **<%=Html.ActionLink<UserController>(c => c.Delete(manager.ProviderUserKey.ToString()), "Delete", new { onclick = "return deleteConfirm();" })%>--%>
                </strong></a>
            </td>
        </tr>
        <%} %>
    </tbody>
</table>
</td>
</tr>

</table>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
