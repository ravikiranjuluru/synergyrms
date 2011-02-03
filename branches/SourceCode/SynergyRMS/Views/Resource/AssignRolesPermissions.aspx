<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Assign Roles Permissions</title>
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
           width: 180px;
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
                                    %>
                                    Edit Roles for user :<%=edituser.UserName%>
                                    <br />
                                    <% 
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
                                                                <% using (Html.BeginForm("AddRole", "Resource"))
                                                                   { %>
                                                                <%if (ViewData["EditUser"] != null)
                                                                  {

                                                                      bool[] permissionList = new bool[7];
                                                                      if (ViewData["PermissionList"] != null)
                                                                      {
                                                                          permissionList = (bool[])ViewData["PermissionList"];
                                                                      }
                                                                %>
                                                                                                                                
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
                                                                                    <%if (permissionList[0])
                                                          { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="chkProAdd" name="chkProAdd">
                                                                                    <%}
                                                          else
                                                          { %>
                                                                                    <input type="checkbox" class="checkBox" id="chkProAdd" name="chkProAdd">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Edit Project
                                                                                </td>
                                                                                <td>
                                                                                    <%if (permissionList[1])
                                                          { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="chkProEdit" name="chkProEdit">
                                                                                    <%}
                                                          else
                                                          { %>
                                                                                    <input type="checkbox" class="checkBox" id="chkProEdit" name="chkProEdit">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Delete Project
                                                                                </td>
                                                                                <td>
                                                                                    <%if (permissionList[2])
                                                          { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="chkProDelete" name="chkProDelete">
                                                                                    <%}
                                                          else
                                                          { %>
                                                                                    <input type="checkbox" class="checkBox" id="chkProDelete" name="chkProDelete">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Add new Task
                                                                                </td>
                                                                                <td>
                                                                                    <%if (permissionList[3])
                                                          { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="chkTaskAdd" name="chkTaskAdd">
                                                                                    <%}
                                                          else
                                                          { %>
                                                                                    <input type="checkbox" class="checkBox" id="chkTaskAdd" name="chkTaskAdd">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Edit Task
                                                                                </td>
                                                                                <td>
                                                                                    <%if (permissionList[4])
                                                          { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="chkTaskEdit" name="chkTaskEdit">
                                                                                    <%}
                                                          else
                                                          { %>
                                                                                    <input type="checkbox" class="checkBox" id="chkTaskEdit" name="chkTaskEdit">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Delete Task
                                                                                </td>
                                                                                <td>
                                                                                    <%if (permissionList[5])
                                                          { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="chkTaskDelete" name="chkTaskDelete">
                                                                                    <%}
                                                          else
                                                          { %>
                                                                                    <input type="checkbox" class="checkBox" id="chkTaskDelete" name="chkAssgnPro">
                                                                                    <%} %>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 165px">
                                                                                    Assign to a Project
                                                                                </td>
                                                                                <td>
                                                                                    <%if (permissionList[6])
                                                          { %>
                                                                                    <input type="checkbox" checked="checked" class="checkBox" id="chkAssgnPro" name="chkAssgnPro">
                                                                                    <%}
                                                          else
                                                          { %>
                                                                                    <input type="checkbox" class="checkBox" id="chkAssgnPro" name="chkAssgnPro">
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
