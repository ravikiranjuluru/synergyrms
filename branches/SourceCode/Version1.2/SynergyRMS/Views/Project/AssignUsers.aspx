﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="SynergyRMS.Models" %>
<%@ Import Namespace="SynergyRMS.Controllers" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Assign Users</title>
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
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/sitenavigation.css" type="text/css"/>   
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/ScrollableTable.css" type="text/css" />
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/Grid.css" type="text/css"/>
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" type="text/css"/>
   <%-- <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.8.6.custom.css" type="text/css" media="screen" />--%>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.7.2.custom.css" type="text/css" media="screen" />
    
     <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_page.css"
        type="text/css" />
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_table.css"
        type="text/css" />

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.js"></script>

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.dataTables.js"></script>

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
       .style2
       {
           width: 180px;
       }
       #Table1
     {
         width: 83%;
     }
       #tblnewusers
     {
         width: 507px;
     }
       </style>
    
    <table style="height: 511px; width: 581px" align="center">
        <tr align="center" valign="top">
            <td align="center">
                <div class="content">
                    
                    <div class="pageLeftColumn">
                       <%if (ViewData["EditProject"] != null)
                         { %>
                        
                            <div style="padding-right: 30px;">
                                <div class="boxTitle">
                                <% 
                           PM_Projects project = (PM_Projects)ViewData["EditProject"];
                                    
                                    %>
                                    Assign Users to Project :<%=project.ProjectName%>
                                    <input type="hidden" name="hdnid" value="<%=project.ProjectId%>"/>
                                    </div>
                                <div>
                                    <p>
                                        Use the form below to assign users to project
                                    </p>
                                    <p>
                                    <%if (ViewData["CurrentUserList"] != null)
                                      { %>
                                        <table id="tblRoles" class="table">
                                            <thead>
                                                <tr>
                                                    <th id="uname" align="left" height="30" class="tableColumnTitle" style="width: 25%">
                                                        User Name
                                                    </th>
                                                    <th id="fname" width="12%" align="left" class="tableColumnTitle">
                                                        First Name
                                                    </th>
                                                    <th id="lname" width="20%" align="left" class="tableColumnTitle">
                                                        Last Name
                                                    </th>
                                                    <th id="email" width="10%" align="left" class="tableColumnTitle">
                                                        Email
                                                    </th>
                                                    <th id="del" width="2%" class="tableColumnTitle"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                        foreach (MembershipUser user in (MembershipUserCollection)ViewData["CurrentUserList"])
                                        {
                                            ProfileCommon Userprofile = Profile.GetProfile(user.UserName);
                                            string keyid = user.ProviderUserKey.ToString();        
                                                %>
                                                <tr>
                                                    <td headers="uname" class="oddrow-mdl" align="left" height="12" style="width: 25%">
                                                        <%= user.UserName%>
                                                    </td>
                                                    <td headers="fname" class="oddrow-mdl" align="left" width="20%">
                                                        <%= Userprofile.FirstName%>
                                                    </td>
                                                    <td headers="lname" class="oddrow-mdl" align="left" width="20%">
                                                        <%= Userprofile.LastName%>
                                                    </td>
                                                    <td headers="email" class="oddrow-mdl" align="left" width="20%">
                                                        <%= user.Email%>
                                                    </td>
                                                    <td headers="del" class="oddrow-mdl" align="left" width="20%">
                                                    <strong>
                                                    <%=Html.ActionLink("Delete from Project", "DeleteUserfromProject", "Project", new { uid = user.ProviderUserKey.ToString(), pid = project.ProjectId }, null)%> 
                                                    </strong>
                                                    </td>
                                                </tr>
                                                <%} %>
                                            </tbody>
                                        </table>
                                                        <%}
                                      else
                                      {%>
                                      <p>
                                        Currently no users assigned to the <%=project.ProjectName%> project
                                    </p>
                                                        <%} %>
                                    </p>
                                    <p>&nbsp;<br /></p>
                                   <%-- <p>&nbsp;<br /></p>--%>
                                    
                                    
                                   <p style="width:90%; text-align: center;">
                                    <table cellspacing="0" cellpadding="0" border="0" style="width: 104%">
                                            <tbody>
                                                <tr>
                                                    <td valign="middle" align="left">
                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                            <tbody>
                                                            <tr>
                                                                    <td align="center">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                            <tr>
                                                                    <td align="center">
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
                                                                    </td></tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" style="width:80%" valign="top">
  <%if (ViewData["Userlist"] != null)
                                              { %>
                            <table id="tbluser" width="100%" border="0" cellspacing="0" cellpadding="0" class="display">
                                <thead>
                                    <tr>
                                        <th id="Th6" align="left" height="30" class="tableColumnTitleStart" 
                                            style="width: 25%">
                                            <a href="#">User Name
                                                <img src="../../Content/images/icon/Sort-Icon.gif" width="7" height="10" border="0"
                                                    class="pdn-tp" alt="Sort by User Name" border="0" title="Sort by Role Name" /></a>
                                        </th>
                                        <th id="Th7" width="12%" align="left" class="tableColumnTitleStart">
                                            <a href="#">First Name</a>
                                        </th>
                                        <th id="Th8" width="20%" align="left" class="tableColumnTitle">
                                            <a href="#">Last Name</a>
                                        </th>
                                        <th id="Th9" width="10%" align="left" class="tableColumnTitle">
                                            <a href="#">Email</a>
                                        </th>
                                        <th id="edit" width="2%">
                                        </th>
                                        <th id="Delete" width="2%">
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%  foreach (MembershipUser user in (MembershipUserCollection)ViewData["Userlist"])
                                        {
                                            ProfileCommon Userprofile = Profile.GetProfile(user.UserName);
                                            string keyid = user.ProviderUserKey.ToString();        
                                    %>
                                    <tr>
                                        <td headers="uname" class="oddrow-mdl" align="left" height="12" 
                                            style="width: 25%">
                                            <%= user.UserName%>
                                        </td>
                                        <td headers="fname" class="oddrow-mdl" align="left" width="20%">
                                            <%= Userprofile.FirstName%>
                                        </td>
                                        <td headers="lname" class="oddrow-mdl" align="left" width="20%">
                                            <%= Userprofile.LastName%>
                                        </td>
                                        <td headers="email" class="oddrow-mdl" align="left" width="20%">
                                            <%= user.Email%>
                                        </td>
                                        <td headers="edit" class="evnrow-mdl" align="left" width="20%">
                                        <% 
                                            var parameters = user.ProviderUserKey.ToString();
                                            parameters = parameters + "," + project.ProjectId;
                                             %>
                                             <strong>
                                             <%=Html.ActionLink("Assign to Project", "AssignUsertoProject", "Project", new { uid = user.ProviderUserKey.ToString(), pid = project.ProjectId }, null)%> 
                                           </strong>
                                           <%-- <%=Html.ActionLink("Assign to Project", "AssignUsertoProject", "Project", new { @id = project.ProjectId }, null)%> 
                                            <%= Html.ActionLink<ProjectController>(c => c.AssignUsertoProject(parameters), "linkText")%>
                                            --%>
                                        </td>
                                        <td headers="Delete" class="evnrow-mdl" align="left" width="2%">
                                            <a href="#"><strong></strong></a>
                                        </td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                            <% }  
                            else
                                      {%>
                                      <p>
                                        Currently no users found for the <%=project.ProjectName%> project to assign.
                                    </p>
                                                        <%} %>
                                                                    </td>
                                                                </tr>
                                                                 <tr>
                                                                    <td align="center">
                                                                    </td></tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                   </p>
                                
                                </div>
                            </div>
                       <%} %>
                      
                    </div>
                </div>
            </td>
        </tr>
    </table>
      <script>
          $(document).ready(function() {
          $('#tbluser').dataTable({
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
</body>
</html>
