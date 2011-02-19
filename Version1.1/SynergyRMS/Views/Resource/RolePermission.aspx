<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="SynergyRMS.Models" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Role Permission</title>
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" />
    <link id="lnkStyle" rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" />
</head>
<body>
  <style type="text/css">
        /* Normal Login Screen Styles */
        
        .serviceUpdateTitle
        {
            color: #555555;
            font-weight: bold;
            padding-bottom: 2px;
            padding-top: 2px;
        }
        
        .serviceUpdate
        {
            color: #555555;
            text-align: justify;
        }
        
        .loginpagebackground
        {
            background-image: url(../../Content/images/common/loginbackground.png);
            text-align: center;
            background-color: #367DAD;
            height: 100%;
        }
        
        .container
        {
            background-color: transparent;
            position: absolute;
            top: 30px;
            left: 0px;
            width: 100%;
            text-align: center;
            min-width: 900px;
        }
        
        .content
        {
            background-color: transparent;
            position: relative;
            text-align: left;
            width: 596px;
            height: 375px;
            top: 9px;
            margin: 0px auto;
            left: -10px;
        }
        
        .error
        {
            width: 365px;
            padding: 0px 0px 10px 5px;
        }
        
        .header
        {
            background-color: transparent;
            position: relative;
            top: 30px;
            text-align: left;
            width: 769px;
            height: auto;
            margin: 0px auto;
        }
        
        .loginlogo
        {
            position: relative;
            background-color: transparent;
        }
        
        .pageLeftColumn
        {
            position: relative;
            background-color: transparent;
            width: 584px;
            height: 266px;
            top: 12px;
            left: 14px;
        }
        
        .pageRightColumn
        {
            position: absolute;
            background-color: Transparent;
            top: 0px;
            
            right: 0px;
            width: 377px;
            height: auto;
        }
        
        .logintable
        {
            background-image: url(../../Content/images/common/login_gradient.png);
            width: 100%;
            border: solid 1px #CCCCCC;
        }
        
        .normalCell, .Username
        {
            padding: 2px 20px 2px 20px;
        }
        
        
        .BoxTop
        {
            background-image: url(../../Content/images/common/login_box_top.png);
            background-repeat: no-repeat;
            height: 20px;
        }
        
        .BoxMiddle
        {
            background-repeat: repeat-y;
            background-image: url(../../Content/images/common/login_box_middle.png);
            height: auto;
            padding-top: 0px;
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 10px;
            background-color: Transparent;
        }
        
        .BoxBottom
        {
            background-image: url('../../Content/images/common/login_box_bottom.png');
            height: 19px;
            background-color: Transparent;
            width: 396px;
        }
        
        .boxTitle
        {
            font-size: 14px;
            font-family: Myriad Pro, "Lucida Grande" , "Lucida Sans Unicode" ,Trebuchet MS,Arial;
            line-height: 1.6em;
            letter-spacing: 0px;
            font-weight: 700;
            color: #333333;
            padding-bottom: 3px;
            padding-top: 0px;
        }
        
        .Username
        {
            font-size: 11px;
            font-weight: 500;
        }
        
        .SignIn, .greenButton
        {
            font-size: 13px;
            font-family: Myriad Pro, "Lucida Grande" , "Lucida Sans Unicode" ,Trebuchet MS,Arial;
            font-weight: 700;
            color: #FFFFFF;
            padding: 0px;
            display: inline-block;
        }
       .style2
       {
      }
    </style>
    
    
    <table style="height: 431px; width: 648px">
        <tr align="center" valign="top">
            <td align="center">
                <div class="content">
                    <!-- Left Hand Column -->
                    <div class="pageLeftColumn">
                        <!-- Login Box -->
                        <%--<div class="BoxTop">
                        </div>--%>
                        
                            <div style="padding-right: 30px;">
                                <div class="boxTitle">
                                    <% 
                                        MembershipUser edituser = (MembershipUser)ViewData["EditUser"];                                    
                                   
                                        string editRole = ViewData["EditRole"].ToString();                                    
                                    %>
                                    Edit Permission of Role :<%=editRole%>
                                </div>
                                <div>
                                    <p>
                                        Use the form below to edit user permission of assigned role.
                                    </p>
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="formBody" id="masterpage_divBody">
                                                        <table cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse; width: 110%;"
                                                            id="masterPage_tblFormContentRoot">
                                                            <tbody>
                                                                <tr>
                                                                    <td height="5" class="style2">
                                                                        <img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="../../Content/images/common/space.gif">
                                                                    </td>
                                                                    <td height="5" width="100%" class="formDetailNoPadding">
                                                                        <img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="../../Content/images/common/space.gif">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                <td valign="middle" align="right" class="formDetailDark">
                                                                        
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top" align="right" class="style2" colspan="2">
                                                                         <% if ((ViewData["status"]) != null)
                                                                           {
                                                                               var status = ViewData["status"].ToString();
                                                                               var msg = ViewData["msg"].ToString();
                                                                        %>
                                                                        <% if (status == "Success")
                                                                           { %>
                                                                        <div id="msgsuccess" class="success-msg">
                                                                            <%= msg%></div>
                                                                        <%} %>
                                                                        <% if (status == "Error")
                                                                           { %>
                                                                        <div id="msgerror" class="error-msg">
                                                                            <%= msg%></div>
                                                                        <%} %>
                                                                        <%} %>
                                                                        
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                     <td valign="middle" align="right" class="formDetailDark">
                                                                   
                                                                       
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="middle" align="right" class="formDetailDark">
                                                                   
                                                                       
                                                                    </td>
                                                                </tr>
                                                                
                                                                <% using (Html.BeginForm("SetPermission", "Resource"))
                                                                   {


                                                                       Hashtable permissionList = new Hashtable();
                                                                      if (ViewData["PermissionList"] != null)
                                                                      {
                                                                          permissionList = (Hashtable)ViewData["PermissionList"];
                                                                      }
                                                                     
                                                                %>
                                                                 <input type="hidden" name="hdnid" value="<%=editRole%>">                                                               
                                                                
                                                                
                                                                <tr>
                                                                    <td valign="top" align="center" class="style2">
                                                                        
                                                                       <table width="100">
                                                                       <tr align"center" valign"top">
                                                                       <td align"center" valign"top">
                                                                       <table style="width: 456px">
                                                                       <tr align"center" valign"top">
                                                                       <td>Add Project</td>
                                                                       <td><%
                                                                                    
                                                                       bool add = (bool)permissionList[SynergyConstents.addProject];
                                                                               //if ((((bool)permissionList.ContainsValue(SynergyConstents.addProject)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.addProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="addProject" name="addProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="addProject" name="addProject">
                                                                                    <%} %></td>
                                                                       <td> Edit Project</td>
                                                                       <td> <%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.editProject)) == null ? false : true))
                                                                                if ((bool)permissionList[SynergyConstents.editProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="editProject" name="editProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="editProject" name="editProject">
                                                                                    <%} %></td>
                                                                       </tr>
                                                                       
                                                                       <tr align"center" valign"top">                                                                       
                                                                       <td>View Project</td>
                                                                       <td><%
                                                                              
                                                                              // if ((((bool)permissionList.ContainsValue(SynergyConstents.viewProject)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.viewProject])
                                                                                     { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="viewProject" name="viewProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="viewProject" name="viewProject">
                                                                                    <%} %></td>
                                                                       <td>Delete Project</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.deleteProject)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.deleteProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="deleteProject" name="deleteProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="deleteProject" name="deleteProject">
                                                                                    <%} %></td>
                                                                       </tr>
                                                                       
                                                                       <tr align"center" valign"top">
                                                                       <td>Assign to project</td>
                                                                       <td> <%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.assignToProject)) == null ? false : true))
                                                                                if ((bool)permissionList[SynergyConstents.assignToProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="assignToProject" name="assignToProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="assignToProject" name="assignToProject">
                                                                                    <%} %>
                                                                                </td>
                                                                       <td>View Project Schedule</td>
                                                                       <td>
                                                                       <%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.viewProjectSchedule)) == null ? false : true))
                                                                           if ((bool)permissionList[SynergyConstents.viewProjectSchedule])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="viewProjectSchedule" name="viewProjectSchedule">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="viewProjectSchedule" name="viewProjectSchedule">
                                                                                    <%} %>
                                                                       </td>
                                                                       </tr>
                                                                       
                                                                       <tr align"center" valign"top">
                                                                       <td>View Project Reports</td>
                                                                       <td> <%
                                                                       
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.viewProjectReports)) == null ? false : true))
                                                                                if ((bool)permissionList[SynergyConstents.viewProjectReports])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="viewProjectReports" name="viewProjectReports">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="viewProjectReports" name="viewProjectReports">
                                                                                    <%} %></td>
                                                                       <td>Add new user</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.addUser)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.addUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="addUser" name="addUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="addUser" name="addUser">
                                                                                    <%} %></td>
                                                                       </tr>
                                                                       
                                                                       <tr align"center" valign"top">
                                                                       <td>View User</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.viewUser)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.viewUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="viewUser" name="viewUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="viewUser" name="viewUser">
                                                                                    <%} %></td>
                                                                       <td>Edit user</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.editUser)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.editUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="editUser" name="editUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="editUser" name="editUser">
                                                                                    <%} %></td>
                                                                       </tr>
                                                                       
                                                                       <tr align"center" valign"top">
                                                                       <td>Delete user</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.deleteUser)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.deleteUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="deleteUser" name="deleteUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="deleteUser" name="deleteUser">
                                                                                    <%} %></td>
                                                                       <td>View User Schedule</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.viewUserSchedule)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.viewUserSchedule])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="viewUserSchedule" name="viewUserSchedule">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="viewUserSchedule" name="viewUserSchedule">
                                                                                    <%} %></td>
                                                                       </tr>
                                                                       
                                                                       <tr align"center" valign"top">
                                                                       <td>Add Role</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.addRole)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.addRole])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="addRole" name="addRole">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="addRole" name="addRole">
                                                                                    <%} %></td>
                                                                       <td>Edit Role Permission</td>
                                                                       <td><%
                                                                       //if ((((bool)permissionList.ContainsValue(SynergyConstents.editRolePermission)) == null ? false : true))
                                                                               if ((bool)permissionList[SynergyConstents.editRolePermission])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="editRolePermission" name="editRolePermission">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="editRolePermission" name="editRolePermission">
                                                                                    <%} %></td>
                                                                       </tr>
                                                                       
                                                                      
                                                                       
                                                                       
                                                                       </table>
                                                                       </td>
                                                                       </tr></table>
                                                                       
                                                                        
                                                                        </td>
                                                                </tr>
                                                                
                                                                
                                                          
                                                                <tr>
                                                                    <td height="5" class="style2">
                                                                        <img height="1" width="180" id="ctl00_phFormContent_ucFormFooter_img1" src="../../Content/images/common/space.gif">
                                                                    </td>
                                                                    <td height="5" width="100%" class="formDetailNoPadding">
                                                                        <img height="1" id="ctl00_phFormContent_ucFormFooter_img2" src="../../Content/images/common/space.gif">
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="formFoot" id="masterpage_divFoot">
                                        <table cellspacing="0" cellpadding="0" border="0" style="width: 104%">
                                            <tbody>
                                                <tr>
                                                    <td valign="middle" align="left">
                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left">
                                                                        <input type="submit" value="Save" class="button" id="btnSave" name="btnSave">&nbsp;
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
                                </div>
                            </div>
                       
                       <%-- <div class="BoxBottom">
                        </div>--%>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</body>
</html>
