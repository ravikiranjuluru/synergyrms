<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="SynergyRMS.Models" %>

<table class="pageTitle" width="100%" border="0" cellpadding="0" cellspacing="0">

<link rel="stylesheet" href="../../Content/tooltip/jquery.tooltip.css" />
<link rel="stylesheet" href="../../Content/tooltip/screen.css" />

<script src="../../Scripts/tooltip/jquery.js" type="text/javascript"></script>
<script src="../../Scripts/tooltip/jquery.bgiframe.js" type="text/javascript"></script>
<script src="../../Scripts/tooltip/jquery.dimensions.js" type="text/javascript"></script>
<script src="../../Scripts/tooltip/jquery.tooltip.js" type="text/javascript"></script>
<script src="../../Scripts/tooltip/chili-1.7.pack.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function() {
        $("#tooltip1,#tooltip2,#tooltip3,#tooltip5,#tooltip6,#tooltip7").tooltip({
                track: true,
                delay: 0,
                showURL: false,
                fixPNG: true,
                showBody: " - ",
                extraClass: "pretty fancy",
                top: -15,
                left: 5
            });
//            $('#tooltip4,#tooltip8').tooltip({
//                track: true,
//                delay: 0,
//                showURL: false,
//                showBody: " - ",
//                extraClass: "pretty",
//                fixPNG: true,
//                left: -120
//            });
        });
    </script>
    <tbody>
        <tr>
            <td valign="middle" align="left">
            </td>
        </tr>
    </tbody>
</table>
<style type="text/css">
    .t
    {
        background: url(../../Content/images/common/dot_top.gif) 0 0 repeat-x;
        width: 100%;
        height: 273px;
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
        top: 0px;
        left: 0px;
        height: 291px;
        width: 308px;
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
<table align="center" width="95%">
    <%
        
        var isAdmin = false;
        isAdmin = HttpContext.Current.User.IsInRole("Admin");
        var currentusername = HttpContext.Current.User.Identity.Name.ToString();
    %>
    <%--  <%if (isAdmin)
            { %>--%>
    <tr>
        <td>
            <div class="outer">
                <div class="boxtitle">
                    <table style="background-color: white;">
                        <tbody>
                            <tr>
                                <td>
                                    <img id="img2" src="../../Content/images/common/manage_projects.gif" alt="">
                                </td>
                                <td>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td id="td2" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                    padding-left: 4px; padding-right: 5px;">
                                                    Projects
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
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addProject))
                                                                              { %>
                                                                            <tr id="Tr8">
                                                                                <td padding-left="6px" width="5%">
                                                                                    <a id="A8" href="#">&nbsp;</a>
                                                                                </td>
                                                                                <td>
                                                                               
                                                                                    <a id="A8" href="#"></a><a id="A9" href="../Project/NewProject">
                                                                                        <img src="../../Content/images/common/newproject.png" id="Img13" >
                                                                                         <span id="tooltip1" title="Click here to Add a New Project">New Project</span></a>
                                                                                        
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProject))
                                                                              { %>
                                                                            <tr id="Tr9">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A10"  href="../Project/EditProject">
                                                                                        <img src="../../Content/images/common/viewproject.png" id="Img14"  />
                                                                                        <span id="tooltip2" title="Click here to View an Existing Project">View Projects</span>
                                                                                        </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProjectSchedule))
                                                                              { %>
                                                                            <tr id="Tr2">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A1"  href="../GridView/Index">
                                                                                        <img src="../../Content/images/common/schedule.jpg" id="Img3" />
                                                                                        <span id="tooltip3" title="Click here to View an Existing Project Schedule">Project Schedule</span>
                                                                                        </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProjectReports))
                                                                              { %>
                                                                            <tr id="Tr12">
                                                                                <td padding-left="6px" width="5%">
                                                                                    <%--<img src="../../Content/images/common/cross.gif" id="Img17" title="Click for more information" />--%>
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A13"  href="../Report/Index">
                                                                                        <img src="../../Content/images/common/ReportsMain.jpg" id="Img4"  />
                                                                                        <span id="tooltip4" title="Click here to Create a Project Status Report">Reports</span>
                                                                                        </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%   } %>
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
                                                    User Management
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
                                                        #Img5
                                                        {
                                                            width: 48px;
                                                        }
                                                        </style>
                                                    <table style="padding-left: 10px; width: 100%;">
                                                        <tbody>
                                                            <tr>
                                                                <td style="padding-left: 10px;">
                                                                    <table id="Table2" style="width: 100%;">
                                                                        <tbody>
                                                                            <%
                                                                                bool res = SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addRole);
                                                                                if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addRole))

                                                                                //<%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addRole))
                                                                                { %>
                                                                            <tr id="Tr4">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a href="../Resource/Role">
                                                                                        <img src="../../Content/images/common/role.png" id="Img8" />
                                                                                        <span id="tooltip5" title="Click here to Add a New Role">User Role </span>
                                                                                        </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%--<%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addUser))
                                                                                  { %>--%>
                                                                            <tr id="Tr5">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A5"  href="../Resource">
                                                                                        <img src="../../Content/images/common/users.jpg" id="Img9"  />
                                                                                        <span id="tooltip6" title="Click here to Add a New Resource">Users</span>
                                                                                        </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%--<%} %>--%>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewUserSchedule))
                                                                              { %>
                                                                            <tr id="Tr7">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A7"  href="../Resource/Schedule">
                                                                                        <img src="../../Content/images/common/schedule.jpg" id="Img11" />
                                                                                        <span id="tooltip7" title="Click here to View Resources Schedules">View Resource Schedules</span>
                                                                                        </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            
                                                                           <tr id="Tr3">
                                                                                <td padding-left="6px" width="5%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A2" href="../GridView/Schedule">
                                                                                    <img src="../../Content/images/common/schedule.jpg" id="Img1"  />
                                                                                        <span id="tooltip8" title="Click here to View Resource Allocation Schedule">Resource Allocation Schedule</span>
                                                                                        </a>
                                                                                </td>
                                                                            </tr>
                                                                            
                                                                             <tr id="Tr1">
                                                                                <td padding-left="6px" width="5%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A3" title="Click here to Add a  Leave" href="../../Leave/LeaveManagement.aspx">
                                                                                    <img src="../../Content/images/common/Leave.jpg" id="Img5" title="Click for more information" />
                                                                                        Leave Management</a>
                                                                                </td>
                                                                            </tr>
                                                                            
                                                                            <tr id="Tr6">
                                                                                <td padding-left="6px" width="5%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td>
                                                                                    &nbsp;
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="Tr10">
                                                                                <td padding-left="6px" width="5%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td>
                                                                                    &nbsp;
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
    <%-- <%}else{%>--%>
    <%--<tr>
            <td>           
                <!-- --------------------------------------------------------- -->
                <div class="outer">
                    <div class="boxtitle">
                        <table style="background-color: white;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img id="img1" src="../../Content/images/common/manage_projects.gif" alt="" />
                                    </td>
                                    <td>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="td1" class="boxtitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                        padding-left: 4px; padding-right: 5px;">
                                                        Manage My Projects
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
                                                            #Img13
                                                            {
                                                                height: 40px;
                                                                width: 40px;
                                                            }
                                                            </style>
                                                        <table style="padding-left: 10px; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="padding-left: 10px;">
                                                                        <table id="Table4" style="width: 100%;">
                                                                            <tbody>                                                                                                                                                        
                                                                                <tr id="Tr14">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img18" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A16" title="Click here to View an Existing Project" href="../Project/EditProject">
                                                                                            View my Project</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr15">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img19" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A17" title="Click here to Enter Project Tasks" href="../Project/EditProject">
                                                                                           View my Project Tasks</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr16">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img20" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A18" title="Click here to Upload Documents" href="../Project/Docs">View my Documents</a>
                                                                                    </td>
                                                                                </tr>
                                                                                 <tr id="Tr22">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img27" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A24" title="Click here to View Resources Schedules" href="../Resource/Schedule">
                                                                                            View My Schedules</a>
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
              
                <!-- --------------------------------------------------------- -->
                <div class="outer">
                    <div class="boxtitle">
                        <table style="background-color: white;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img id="img28" src="../../Content/images/common/manage_projects.gif" alt="" />
                                    </td>
                                    <td>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="td4" class="boxtitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                        padding-left: 4px; padding-right: 5px;">
                                                        Manage My Projects
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
                                                            #Img13
                                                            {
                                                                height: 40px;
                                                                width: 40px;
                                                            }
                                                            #Img4
                                                            {
                                                                width: 42px;
                                                            }
                                                            </style>
                                                        <table style="padding-left: 10px; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="padding-left: 10px;">
                                                                        <table id="Table5" style="width: 100%;">
                                                                            <tbody>                                                                                                                                                        
                                                                                <tr id="Tr23">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img29" 
                                                                                            title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A25" title="Click here to View an Existing Project" 
                                                                                            href="../Project/EditProject">
                                                                                            View my Project</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr24">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img30" 
                                                                                            title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A26" title="Click here to Enter Project Tasks" 
                                                                                            href="../Project/EditProject">
                                                                                           View my Project Tasks</a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr id="Tr25">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img31" 
                                                                                            title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A27" title="Click here to Upload Documents" href="../Project/Docs">View my Documents</a>
                                                                                    </td>
                                                                                </tr>
                                                                                 <tr id="Tr26">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img32" 
                                                                                            title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A28" title="Click here to View Resources Schedules" 
                                                                                            href="../Resource/Schedule">
                                                                                            View My Schedules</a>
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
            </td>
        </tr>--%>
    <%-- <%} %>--%>
</table>
