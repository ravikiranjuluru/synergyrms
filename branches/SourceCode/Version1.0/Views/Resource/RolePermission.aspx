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
       .style1
       {
           width: 367px;
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
                                                                <td valign="top" align="right" class="style2">
                                                                      
                                                                    </td>
                                                                    <td valign="top" align="left" style="width:80%">
                                                                       
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
                                                                    <td valign="top" align="right" class="style2">
                                                                        <label for="notes">
                                                                        </label>
                                                                        Select Permission:
                                                                    </td>
                                                                    <td valign="top" align="left" class="formDetail">
                                                                        <table style="width: 100%">
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Add Project
                                                                                </td>
                                                                                <td>
                                                                                    <%
                                                                                    
                                                                       
                                                                                        if ((bool)permissionList[SynergyConstents.addProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="addProject" name="addProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="addProject" name="addProject">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Edit Project
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.editProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="editProject" name="editProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="editProject" name="editProject">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Delete Project
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.deleteProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="deleteProject" name="deleteProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="deleteProject" name="deleteProject">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Add new Task
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.addTask])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="addTask" name="addTask">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="addTask" name="addTask">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Edit Task
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.editTask])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="editTask" name="editTask">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="editTask" name="editTask">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Delete Task
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.deleteTask])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="deleteTask" name="deleteTask">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="deleteTask" name="deleteTask">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Assign to a Project
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.assignToProject])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="assignToProject" name="assignToProject">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="assignToProject" name="assignToProject">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            
                                                                            
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Add new user
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.addUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="addUser" name="addUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="addUser" name="addUser">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    View User
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.viewUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="viewUser" name="viewUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="viewUser" name="viewUser">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Edit user
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.editUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="editUser" name="editUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="editUser" name="editUser">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Delete user
                                                                                </td>
                                                                                <td>
                                                                                    <%if ((bool)permissionList[SynergyConstents.deleteUser])
                                                                                      { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="deleteUser" name="deleteUser">
                                                                                    <%}
                                                                                      else
                                                                                      { %>
                                                                                    <input type="checkbox" class="checkBox" id="deleteUser" name="deleteUser">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
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
