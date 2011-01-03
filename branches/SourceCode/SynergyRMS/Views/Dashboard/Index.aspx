<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="pageTitle" width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr>
                <td valign="middle" align="left">
                </td>
            </tr>
        </tbody>
    </table>
    <div id="divMain">
        <div id="divLeftColumn">
            <div style="padding: 5px 10px 10px 20px;">
                <div id="panelLeft">
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <img src="../../Content/images/common/space.gif" height="2" />
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <img src="../../Content/images/common/space.gif" height="2">
                </div>
            </div>
        </div>
        <div id="divRightColumn">
            <div style="padding: 5px 20px 10px 10px;">
                <div id="panelRight">
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <img src="../../Content/images/common/space.gif" height="2">
                </div>
            </div>
        </div>
    </div>
    <table align="center" width="95%">
        <tr>
            <td>
                <!-- --------------------------------------------------------- -->
                <div class="outer">
                    <div class="boxtitle">
                        <table style="background-color: white;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img id="img12" src="../../Content/images/common/manage_projects.gif" alt="" />
                                    </td>
                                    <td>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="td4" class="boxtitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                        padding-left: 4px; padding-right: 5px;">
                                                        Manage Projects
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
                                                            </style>
                                                        <table style="padding-left: 10px; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="padding-left: 10px;">
                                                                        <table id="Table3" style="width: 100%;">
                                                                            <tbody>
                                                                                <tr id="Tr8">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <a id="A8" href="javascript:__doPostBack('ctl02$icon_AddProject','')">
                                                                                            <%--<img src="images/cross_collapse.gif" id="ctl02_img_AddProject" title="Click to hide information">--%>
                                                                                            <img src="../../Content/images/common/cross.gif" id="Img13" title="Click for more information">
                                                                                        </a>
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A9" title="Click here to Add a New Project" href="../Project/NewProject">Add
                                                                                            a New Project</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <%--                
                                                                                        <tr id="ctl02_desc_AddProject">
                                                                                        <td>
                                                                                        </td>
                                                                                        <td style="border: 1px solid rgb(204, 204, 204); background-color: rgb(240, 248, 255);
                                                                                        padding: 6px; width: 95%; line-height: 1.5;">
                                                                                        Projects are used throughout the Atlantic Global Solution for tracking all Project related data such as tasks, risks, issues, change
                                                                                        requests, storing documents and communicating Project progress. 
                                                                                        Projects are also used for tracking time, submitting expenses and for billing clients. 
                                                                                        You can use this link to add a new Project or to create a new Project based on a pre-defined template.
                                                                                        </td>
                                                                                        </tr>--%>
                                                                                <tr id="Tr9">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img14" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A10" title="Click here to View an Existing Project" href="../Project/EditProject">
                                                                                            View an Existing Project</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr10">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img15" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A11" title="Click here to Enter Project Tasks" href="../Project/EditProject">
                                                                                            Enter Project Tasks</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr11">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img16" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A12" title="Click here to Upload Documents" href="../Project/Docs">Upload Documents</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr12">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img17" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A13" title="Click here to Create a Project Status Report" href="../Report/Index">
                                                                                            Create a Project Status Report</a>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
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
                <img src="../../Content/images/common/space.gif" height="2" />
                <!-- --------------------------------------------------------- -->
            </td>
            <td>
                <!-- --------------------------------------------------------- -->
                <div class="outer">
                    <div class="boxtitle">
                        <table style="background-color: white;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img id="img6" src="../../Content/images/common/manage_resources.gif" alt="">
                                    </td>
                                    <td>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="td3" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                        padding-left: 4px; padding-right: 5px;">
                                                        Manage Resources
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
                                                            </style>
                                                        <table style="padding-left: 10px; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="padding-left: 10px;">
                                                                        <table id="Table2" style="width: 100%;">
                                                                            <tbody>
                                                                                <tr id="Tr3">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img7" title="Click for more information">
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A3" title="Click here to Add a New Department" href="../Resource/Department">
                                                                                            Add a New Department</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr4">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img8" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A4" title="Click here to Add a New Role" href="../Resource/Role">Add a New Role</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr5">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img9" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A5" title="Click here to Add a New Resource" href="../Resource/Index">Add a New
                                                                                            Resource</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr6">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img10" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A6" title="Click here to View an Existing Resources" href="../Resource/Resources">
                                                                                            View an Existing Resource</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr7">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img11" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A7" title="Click here to View Resources Schedules" href="../Resource/Schedule">
                                                                                            View Resource Schedules</a>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
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
                <img src="../../Content/images/common/space.gif" height="2">
                <!-- --------------------------------------------------------- -->
            </td>
        </tr>
        <tr>
            <td>
                <!-- --------------------------------------------------------- -->
                <div class="outer">
                    <div class="boxtitle">
                        <table style="background-color: white;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img id="img3" src="../../Content/images/common/manage_timesheets.gif" alt="">
                                    </td>
                                    <td>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="td2" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                        padding-left: 4px; padding-right: 5px;">
                                                        Manage Timesheets
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
                                                            </style>
                                                        <table style="padding-left: 10px; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="padding-left: 10px;">
                                                                        <table id="Table1" style="width: 100%;">
                                                                            <tbody>
                                                                                <tr id="Tr1">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img4" title="Click for more information">
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A1" title="Click here to Enter Time" href="../Timesheets/Index">Enter Time</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr2">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img5" title="Click for more information">
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A2" title="Click here to Approve Timesheets" href="../Timesheets/Approve">Approve
                                                                                            Timesheets</a>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
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
                <img src="../../Content/images/common/space.gif" height="2">
                <!-- --------------------------------------------------------- -->
            </td>
            <td>
                <!-- --------------------------------------------------------- -->
                <!-- --------------------------------------------------------- -->
            </td>
        </tr>
    </table>
</asp:Content>
