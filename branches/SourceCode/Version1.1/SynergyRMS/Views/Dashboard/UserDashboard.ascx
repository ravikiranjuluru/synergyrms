﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="SynergyRMS.Models" %>

<%--<link rel="stylesheet" media="screen" href="../../Content/Dashboard.css" />--%>

<table class="pageTitle" width="100%" border="0" cellpadding="0" cellspacing="0">
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
                                            <div class="tr" style="height:250px">
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
                                                                                    <a id="A8" href="#"></a><a id="A9" title="Click here to Add a New Project" href="../Project/NewProject">
                                                                                        <img src="../../Content/images/common/newproject.png" id="Img13" title="Click for more information">New
                                                                                        Project</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProject))
                                                                              { %>
                                                                            <tr id="Tr9">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A10" title="Click here to View an Existing Project" href="../Project/EditProject">
                                                                                        <img src="../../Content/images/common/viewproject.png" id="Img14" title="Click for more information" />View
                                                                                        Projects</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProjectSchedule))
                                                                              { %>
                                                                            <tr id="Tr2">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A1" title="Click here to View an Existing Project" href="../GridView/Index">
                                                                                        <img src="../../Content/images/common/schedule.jpg" id="Img3" title="Click for more information" />Project
                                                                                        Schedule</a>
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
                                                                                    <a id="A13" title="Click here to Create a Project Status Report" href="../Report/Index">
                                                                                        <img src="../../Content/images/common/ReportsMain.jpg" id="Img4" title="Click for more information" />
                                                                                        Reports</a>
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
                                            <div class="tr" style="height:250px">
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
                                                                                        <img src="../../Content/images/common/role.png" id="Img8" title="Click here to Add a New Role" />User
                                                                                        Role </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%--<%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addUser))
                                                                                  { %>--%>
                                                                            <tr id="Tr5">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A5" title="Click here to Add a New Resource" href="../Resource">
                                                                                        <img src="../../Content/images/common/users.jpg" id="Img9" title="Click for more information" />Users</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%--<%} %>--%>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewUserSchedule))
                                                                              { %>
                                                                            <tr id="Tr7">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A7" title="Click here to View Resources Schedules" href="../Resource/Schedule">
                                                                                        <img src="../../Content/images/common/schedule.jpg" id="Img11" title="Click for more information" />
                                                                                        View Resource Schedules</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            
                                                                           <tr id="Tr3">
                                                                                <td padding-left="6px" width="5%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A2" title="Click here to Add a New Resource" 
                                                                                    href="../GridView/Schedule">
                                                                                    <img src="../../Content/images/common/schedule.jpg" id="Img1" title="Click for more information" />
                                                                                        Resource Allocation Schedule</a>
                                                                                </td>
                                                                            </tr>
                                                                             <tr id="Tr1">
                                                                                 <td padding-left="6px" width="5%">
                                                                                     &nbsp;
                                                                                 </td>
                                                                                 <td>
                                                                                     <a id="A3" href="../../Leave/LeaveManagement.aspx">
                                                                                         <img src="../../Content/images/common/Leave.jpg" id="Img5" />
                                                                                         <span id="Span5" title="Click here to Add a  Leave">Leave Management </span>
                                                                                     </a>
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

<style type="text/css">
fieldset  
{
    position: relative; padding: 10px; padding-top: 0; padding-top: 25px\9; 
    margin-bottom: 30px; background: #F6F6F6; -webkit-border-radius: 8px; -moz-border-radius: 8px;
     border-radius: 8px; background: -webkit-gradient(linear, left top, left bottom, from(#EFEFEF), to(#FFFFFF)); 
     background: -moz-linear-gradient(center top, #EFEFEF, #FFFFFF 100%); 
     box-shadow: 3px 3px 10px #ccc; -moz-box-shadow: 3px 3px 10px #ccc; -webkit-box-shadow: 3px 3px 10px #ccc 
     }
legend  
{
    padding: 6px 12px; position: absolute; left: 10px; 
    top: -11px; background-color: #4F709F; color: white; -webkit-border-radius: 4px; -moz-border-radius: 4px; 
    border-radius: 4px; box-shadow: 2px 2px 4px #888; -moz-box-shadow: 2px 2px 4px #888; 
    -webkit-box-shadow: 2px 2px 4px #888; text-shadow: 1px 1px 1px #333 
    }
    </style>
    <table width="90%" align="center">
    <tr align="center" valign="top">
    
    <td align="center" valign="top">
        <table width="100%">
            <tr align="center" valign="top">
                <td align="center" valign="top" width="48%">
                    <fieldset style="width: 100%">
                   
                        <legend><img id="img7" src="../../Content/images/common/manage_projects.gif" alt="">&nbsp;Projects</legend>
                        
                        <p align="center">
                        <table id="Table3" style="width: 100%;">
                                                                        <tbody>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addProject))
                                                                              { %>
                                                                            <tr id="Tr11">
                                                                                <td padding-left="6px" width="5%">
                                                                                    <a id="A4" href="#">&nbsp;</a>
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A6" href="#"></a><a id="A11" title="Click here to Add a New Project" href="../Project/NewProject">
                                                                                        <img src="../../Content/images/common/newproject.png" id="Img10" title="Click for more information">New
                                                                                        Project</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProject))
                                                                              { %>
                                                                            <tr id="Tr13">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A12" title="Click here to View an Existing Project" href="../Project/EditProject">
                                                                                        <img src="../../Content/images/common/viewproject.png" id="Img12" title="Click for more information" />View
                                                                                        Projects</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProjectSchedule))
                                                                              { %>
                                                                            <tr id="Tr14">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A14" title="Click here to View an Existing Project" href="../GridView/Index">
                                                                                        <img src="../../Content/images/common/schedule.jpg" id="Img15" title="Click for more information" />Project
                                                                                        Schedule</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProjectReports))
                                                                              { %>
                                                                            <tr id="Tr15">
                                                                                <td padding-left="6px" width="5%">
                                                                                    <%--<img src="../../Content/images/common/cross.gif" id="Img17" title="Click for more information" />--%>
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A15" title="Click here to Create a Project Status Report" href="../Report/Index">
                                                                                        <img src="../../Content/images/common/ReportsMain.jpg" id="Img16" title="Click for more information" />
                                                                                        Reports</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%   } %>
                                                                        </tbody>
                                                                    </table>
                        </p>
                    </fieldset>
                </td>
                <td align="center" valign="top" width="4%">
                &nbsp;&nbsp;&nbsp;
                </td>
                <td align="center" valign="top" width="48%">
                 <fieldset style="width: 100%">
                        <legend>Projects</legend>
                        <p>
                            <label for="name">
                                Name</label><input name="name" type="text" /></p>
                        <p>
                            <label for="company">
                                Company</label><input name="company" type="text" /></p>
                        <p>
                            <label for="email">
                                Email</label><input name="email" type="email" /></p>
                        <p>
                            <label for="telephone">
                                Telephone</label><input name="telephone" type="tel" /></p>
                        <p>
                            <label for="website">
                                Website</label><input name="website" type="url" value="http://" /></p>
                    </fieldset>
                </td>
            </tr>
        </table>
         
    </td>
   
     
    </tr>
    </table>
    

