<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
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
 
     <%
        
        var isAdmin = false;
        isAdmin = HttpContext.Current.User.IsInRole("Admin");
        var currentusername = HttpContext.Current.User.Identity.Name.ToString();
    %>
    <table width="90%" align="center">
    <tr align="center" valign="top">
    
    <td align="center" valign="top">
        <table width="100%">
            <tr align="center" valign="top">
                <td align="center" valign="top" width="48%">
                    
                    <fieldset style="width: 100%;height:330px">
                   
                        <legend><img id="img7" src="../../Content/images/common/manage_projects.gif" alt="">&nbsp;Projects</legend>
                        
                        <p align="center">
                            <table id="Table3" style="width: 100%;">
                                <tbody align="left" valign="top">
                                    <tr id="Tr16">
                                        <td padding-left="6px" width="5%">
                                            &nbsp;&nbsp;
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;
                                        </td>
                                    </tr>
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
                                    <tr id="Tr22">
                                                                                 <td padding-left="6px" width="5%">
                                                                                     &nbsp;
                                                                                 </td>
                                                                                 <td>
                                                                                     &nbsp;
                                                                                 </td>
                                                                            </tr>
                                                                              <tr id="Tr23">
                                                                                 <td padding-left="6px" width="5%">
                                                                                     &nbsp;
                                                                                 </td>
                                                                                 <td>
                                                                                     &nbsp;
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
                 <fieldset style="width: 100%;height:330px">
                   
                        <legend>
                       <img id="img17" src="../../Content/images/common/manage_resources.gif" alt="">
                        &nbsp;User Management</legend>
                        
                        <p align="center">
                            <table id="Table4" style="width: 100%;">
                               <tbody>
                                   <tr id="Tr24">
                                       <td padding-left="6px" width="5%">
                                           &nbsp;
                                       </td>
                                       <td>
                                           &nbsp;
                                       </td>
                                   </tr>
                                                                            <%
                                                                                bool res1 = SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addRole);
                                                                                if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addRole))

                                                                                //<%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addRole))
                                                                                { %>
                                                                            <tr id="Tr17">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a href="../Resource/Role">
                                                                                        <img src="../../Content/images/common/role.png" id="Img18" title="Click here to Add a New Role" />User
                                                                                        Role </a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            <%--<%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addUser))
                                                                                  { %>--%>
                                                                            <tr id="Tr18">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A16" title="Click here to Add a New Resource" href="../Resource">
                                                                                        <img src="../../Content/images/common/users.jpg" id="Img19" title="Click for more information" />Users</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%--<%} %>--%>
                                                                            <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewUserSchedule))
                                                                              { %>
                                                                            <tr id="Tr19">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A17" title="Click here to View Resources Schedules" href="../Resource/Schedule">
                                                                                        <img src="../../Content/images/common/schedule.jpg" id="Img20" title="Click for more information" />
                                                                                        View Resource Schedules</a>
                                                                                </td>
                                                                            </tr>
                                                                            <%} %>
                                                                            
                                                                           <tr id="Tr20">
                                                                                <td padding-left="6px" width="5%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A18" title="Click here to Add a New Resource" 
                                                                                    href="../GridView/Schedule">
                                                                                    <img src="../../Content/images/common/schedule.jpg" id="Img21" title="Click for more information" />
                                                                                        Resource Allocation Schedule</a>
                                                                                </td>
                                                                            </tr>
                                                                             <tr id="Tr21">
                                                                                 <td padding-left="6px" width="5%">
                                                                                     &nbsp;
                                                                                 </td>
                                                                                 <td>
                                                                                     <a id="A19" href="../../Leave/LeaveManagement.aspx">
                                                                                         <img src="../../Content/images/common/Leave.jpg" id="Img22" />
                                                                                         <span id="Span1" title="Click here to Add a  Leave">Leave Management </span>
                                                                                     </a>
                                                                                 </td>
                                                                            </tr>
                                                                              <tr id="Tr25">
                                                                                 <td padding-left="6px" width="5%">
                                                                                     &nbsp;
                                                                                 </td>
                                                                                 <td>
                                                                                 
                                                                                     &nbsp;
                                                                                 </td>
                                                                            </tr>
                                                                            <tr id="Tr26">
                                                                                 <td padding-left="6px" width="5%">
                                                                                     &nbsp;
                                                                                 </td>
                                                                                 <td>
                                                                                     &nbsp;
                                                                                 </td>
                                                                            </tr>
                                                                             
                                                                            
                                                                        </tbody>
                            </table>
                        </p>
                    </fieldset>
                </td>
            </tr>
        </table>
         
    </td>
   
     
    </tr>
    </table>
    

