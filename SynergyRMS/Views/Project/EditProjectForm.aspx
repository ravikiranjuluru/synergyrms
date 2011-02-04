<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="SynergyRMS.Models" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit Project</title>
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
</head>
<body>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#projectstartdate").datepicker();
        });
        $(document).ready(function() {
            $("#projectenddate").datepicker();
        });
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
       .style2
       {
           width: 180px;
       }
       </style>
     <% using (Html.BeginForm("EditProject", "Project"))
        { %>
    <table style="height: 511px; width: 581px">
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
                                    Update Project :<%=project.ProjectName%>
                                    <input type="hidden" name="hdnid" value="<%=project.ProjectId%>"/>
                                    </div>
                                <div>
                                    <p>
                                        Use the form below to update project information
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
                                                        &nbsp;
                                                    </td>
                                                    <td valign="middle" align="left">
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
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                         Code:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                   
                                                        <input name="txtCode" id="code" class="textBox"
                                                            size="20" maxlength="20" type="text" value=" <%= project.ProjectCode%>">
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                         Project Name:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                   
                                                        <input name="txtprojectname" id="txtprojectname" class="textBox"
                                                           type="text" style="width: 253px" value="<%= project.ProjectName%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Description:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="txtDescription" id="txtDescription"
                                                            class="textBox" size="70" maxlength="70" type="text" value="<%= project.Description%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Status:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="chckStatus" id="chckStatus"
                                                            class="textBox" type="checkbox">
                                                    </td>
                                                </tr>
                                                
                                                
                                               <%if (ViewData["ProTypes"] != null)
                                                 { %>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Project Type:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <%--<%=Html.DropDownList("ddProTypes", (SelectList)ViewData["ProTypes"], new { @class = "comboBox" })%>--%>
                                                      <%=Html.DropDownList("ddProTypes", (SelectList)ViewData["ProTypes"], project.PM_Types.TypeId)%>
                                                    </td>
                                                </tr>
                                                <%} %>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Start Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">  
                                                        <input name="projectstartdate" id="projectstartdate"
                                                            class="textBox" size="15" maxlength="4" type="text" 
                                                            value="<%=project.ProjectStartDate%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                       End Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                      
                                                        <input name="projectenddate" id="projectenddate"
                                                            class="textBox" size="15" maxlength="4" type="text" value="<%=project.ProjectEndDate%>">
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
                                   
                                </div>
                            </div>
                       <%} %>
                      
                    </div>
                </div>
            </td>
        </tr>
    </table>
    <%} %>
</body>
</html>
