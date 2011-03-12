<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Assign Roles</title>
         <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" />
    <link id="lnkStyle" rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" />
    <script src="<%= ResolveUrl("~") %>Scripts/common/WebResorce.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/xbLibrary.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/com_popupwindow.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/com_sitenavigation.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/jquery-1.4.1.min.js" type="text/javascript"></script>
	<script src="<%= ResolveUrl("~") %>Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
	<script src="<%= ResolveUrl("~") %>Scripts/jquery-ui-1.7.2.custom.min.js" type="text/javascript"></script>
	<script src="<%= ResolveUrl("~") %>Scripts/jquery.blockUI.js" type="text/javascript"></script>
	
	
	<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/WebResorce.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/SkinStyle.css" type="text/css"/>
     <link id="Link1" rel="stylesheet" 
    href="<%= ResolveUrl("~") %>Content/common/styles.css" />
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/sitenavigation.css" type="text/css"/>   
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/ScrollableTable.css" type="text/css" />
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/Grid.css" type="text/css"/>
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" type="text/css"/>
   <%-- <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.8.6.custom.css" type="text/css" media="screen" />--%>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.7.2.custom.css" type="text/css" media="screen" />
</head>
<body >
   <script type="text/javascript">
    function lnkAssignRolePermission_onClick(userkey, role) {
        AECWinPopup.open('AssignRolesEditPermission?id=' + userkey + '&role=' + role, 550, 500, popupCallback, '', false);
    }
    function popupCallback(context, returnValue) {
    }
</script>

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
            width: 557px;
            height: 424px;
            top: 13px;
            margin: 0px auto;
            left: 0px;
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
            top: 17px;
            left: -3px;
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
       .style3
       {
           width: 78px;
       }
    </style>
    <table style="height: 511px; width: 581px">
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
                                    string userkey = edituser.ProviderUserKey.ToString();
                                    %>
                                    Assign Roles for user :<%=edituser.UserName%></div>
                                    
                                <div>
                                    <p>
                                        Use the form below to Assign user to roles
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
                                                                    <td valign="middle" align="right" class="style2">
                                                                       &nbsp;
                                                                    </td>
                                                                    <td valign="middle" align="left" style="width: 80%">
                                                                    <% if ((ViewData["status"]) != null)
                                                                       {
                                                                           var status = ViewData["status"].ToString();
                                                                           var msg = ViewData["msg"].ToString();
                                                                    %>
                                                                    <% if (status == "Success")
                                                                       { %>
                                                                    <div id="msgsuccess" class="success-msg" style="width:50%;float:left;font-size:10px;">
                                                                        <%= msg%></div>
                                                                    <%} %>
                                                                    <% if (status == "Error")
                                                                       { %>
                                                                    <div id="msgerror" class="error-msg" style="width:50%;float:left;font-size:10px;">
                                                                        <%= msg%></div>
                                                                    <%} %>
                                                                    <%} %>
                                                                </td>
                                                                </tr>
                                                                
                                                                 <% using (Html.BeginForm("AssignRoletoEditUser", "Resource"))
                                                                   { %>
                                                                   <input type="hidden" name="hdnid" value="<%=userkey%>">
                                                                <tr>
                                                                    <td valign="middle" align="right" class="style2">
                                                                        Resource Type:
                                                                    </td>
                                                                    <td valign="middle" align="left" class="formDetail">
                                                                        <%=Html.DropDownList("ddRoles", (SelectList)ViewData["RoleList"],new { @class = "comboBox" })%>
                                                                        <input type="submit" value="Add Role" class="button" id="btnAddRoles" name="btnAddRoles"
                                                                            style="width: 85px">
                                                                    </td>
                                                                </tr>
                                                                 <%} %>
                                                               
                                                               
                                                                   
                                                                
                                                                
                                                                <tr>
                                                                    <td valign="top" align="right" class="style2">
                                                                        Roles:
                                                                    </td>
                                                                    <td valign="top" align="left" class="formDetail">
                                                                        <table>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td class="style1">
                                                                                        <table cellspacing="0" cellpadding="0" style="width: 50%; margin-right: 28px;" 
                                                                                            class="table" id="tblRoles">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <th align="left" id="role"  class="tableColumnTitle">
                                                                                                        Role
                                                                                                    </th>
                                                                                                    
                                                                                                   
                                                                                                </tr>
                                                                                                <%if (ViewData["EditUserRolesList"] != null)
                                                                                                  {

                                                                                                      foreach (string role in (List<string>)ViewData["EditUserRolesList"])
                                                                                                      {
                                                                                                %>
                                                                                                <tr>
                                                                                                    <td align="left" style="width: 50%;" class="tableRowDark" headers="role">
                                                                                                        <%= role %>
                                                                                                    </td>
                                                                                                    
                                                                                                </tr>
                                                                                                <%}
                                                                                                 }%>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: left; vertical-align: middle;" class="style1">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style1">
                                                                                        <table cellspacing="0" cellpadding="0" style="border: 0pt none; width: 100%;">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td align="left">
                                                                                                        &nbsp;
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        &nbsp;
                                                                                                    </td>
                                                                                                    <td align="right">
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
                                   
                                   
                                </div>
                            </div>
                       
                      
                    </div>
                </div>
            </td>
        </tr>
    </table>
</body>
</html>
