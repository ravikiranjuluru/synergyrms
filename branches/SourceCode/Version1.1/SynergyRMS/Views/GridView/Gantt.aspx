<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="SynergyRMS.Models" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Gantt</title>
    <%--<script src="Grid/GridE.js"> </script>
      <link href="Styles/Examples.css" rel="stylesheet" type="text/css" />--%>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/Site.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/WebResorce.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/SkinStyle.css" type="text/css"/>
    <link rel="stylesheet" href="../../Content/common/styles.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/sitenavigation.css" type="text/css"/>   
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/ScrollableTable.css" type="text/css" />
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/Grid.css" type="text/css"/>
   
</head>
<body>
 <script type="text/javascript">


     function ags_main_doShowPopup(url) {
         url += url.contains('?') ? '&' : '?';
         url += 'WindowMode=1';
         AECWinPopup.open(url, 850, 500, popupCallback, '', false);
     }

     function lnkMyAccount_onClick() {
         AECWinPopup.open('ags_myaccount.aspx?WindowMode=1', 800, 500, popupCallback, '', false);
     }

     function lnkLogin_onClick() {
         AECWinPopup.open('/Account/Login', 409, 307, popupCallback, '', false);
     }
     function lnkRegister_onClick() {
         AECWinPopup.open('/Account/Register', 450, 350, popupCallback, '', false);
     }

     function lnkpwdChange_onClick() {
         AECWinPopup.open('/Account/ChangePassword', 500, 480, popupCallback, '', false);
     }

     function lnkNewTask_onClick() {
         AECWinPopup.open('/Project/Task', 600, 350, popupCallback, '', false);
     }
     function lnkAssignTask_onClick() {
         AECWinPopup.open('/Project/Assign', 600, 350, popupCallback, '', false);
     }

     function lnkDocUpload_onClick() {
         AECWinPopup.open('/Project/DocUpload', 700, 900, popupCallback, '', false);
     }

     function popupCallback(context, returnValue) {
     }

     function openPage(pageUrl) {
         //window.frames['mainFrame'].location.href = pageUrl;
     }

     function radMenu_onItemClick(sender, args) {
         if (args.Item.Items.length == 0) {
             if (args.Item.LinkElement) {
                 //                      if (args.Item.LinkElement.target == 'mainFrame' && args.Item.LinkElement.href.length > 0) {
                 //                          WebForm_DoCallback('__Page', args.Item.LinkElement.href, callbackHandler, null, null, true);
                 //                      }
             }
             sender.Close();
         }
     }

     function callbackHandler() {
         //do nothing
     }
     addEvent(window, 'load', window_onLoad);
     addEvent(window, 'resize', window_onResize);


     function window_onLoad() {
         if (document.getElementById('mnuMySettings')) {
             document.getElementById('mnuMySettings').style.position = 'relative';
         }
         window_onResize();

         //openPage('/ags_gettingstarted.aspx?Code=GETTINGSTARTED');
         //openPage('/Account/Login');

         if (document.getElementById('snTabbedUI')) {
             window.siteNavigation.doResize(document.getElementById('snTabbedUI'));
         }
     }


     function window_onResize() {
         if (document.getElementById("divTabStrip")) {
             document.getElementById("divTabStrip").style.width = document.documentElement.clientWidth - getAbsoluteLeft(getParentNode(document.getElementById("divTabStrip"))) + 'px';
         }
         //document.getElementById('mainFrame').style.height = Math.max(100, document.documentElement.clientHeight - document.getElementById('mainFrame').offsetTop) + 'px';
     }

  
    </script> 
    
 <style type="text/css">
        .layout_header
        {
            background: #10385A url(../../Content/images/common/ag_app_header.png) no-repeat;
            color: #A49D99;
            padding: 5px 0px 0px 0px;
            border-bottom: solid 3px #EFEFEF;
        }
        .layout_header_util a, .layout_header_util a:hover
        {
            color: #FFFFFF;
        }
        .style1
        {
            /*height: 110px;*/
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
    </style>
<table class="layout_header" border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="left" valign="middle" rowspan="2" style="padding-bottom: 5px;">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="left" valign="top" style="white-space: nowrap;">
                            <%--<img src="<%= ResolveUrl("~") %>Content/images/common/atlanticglobal.png" id="imgHome" alt="Atlantic Global Solution"
                                style="padding-left: 10px; padding-right: 4px; cursor: pointer;" onclick="openPage('ags_gettingstarted.aspx?Code=GETTINGSTARTED');" />--%>
                        </td>
                    </tr>
                </table>
            </td>
            <td align="right" valign="middle" style="padding-bottom: 5px;" class="style1">
                <table class="layout_header_util" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="right" valign="middle" style="white-space: nowrap;">
                           
                                <span class="text"><% Html.RenderPartial("LogOnUserControl"); %></span>
                               
                        </td>
                        <td align="left" valign="middle" style="white-space: nowrap;">
                            &nbsp;&nbsp;|
                        </td>

                        
                        <td align="right" valign="middle" style="white-space: nowrap;">

                            <script type="text/javascript">

                                function siteNavigation_selectTab(item) {

                                    if (item) {
                                        if (typeof item == 'string') {
                                            item = document.getElementById(item);
                                        }

                                        if (item) {
                                            siteNavigation.doSelectItem(item, true);
                                        }
                                    }
                                }   

                            </script>

                            <table id="snMySettings" class="agnav_defaultmenu" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <div>
                                            <table border="0" cellpadding="0" cellspacing="0" style="margin-left: auto;">
                                                <tr>
                                                    <td id="SETTINGS" class="item level1" onmouseenter="this.className += ' hover';"
                                                        onmouseleave="this.className = this.className.replace(' hover', '');">
                                                        <a class="link arrow" href="#"><span class="text ">My Account</span> </a>
                                                        <div class="slide">
                                                            <table border="0" cellpadding="0" cellspacing="1">
                                                                <tr>
                                                                    <td class="item level2">
                                                                        <a class="link" onclick="lnkpwdChange_onClick();" title="Change Password">
                                                                            <span class="text">Change Password</span> </a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="item level2">
                                                                        <div class="hr" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="item level2">
                                                                        <a class="link" href="/Account/LogOff">
                                                                            <span class="text">Log Off</span> </a>
                                                                    </td>
                                                                </tr>    
                                                                                                                          
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                                
                                                
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                       
                       
                      
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100%;">
            <!-- main menu goes here-->
          <%Html.RenderPartial("Menu"); %>
            </td>
        </tr>
    </table>
    <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        Project Schedule
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
            <tr>
                <td>
                    <table class="dashboardOperationsBarOuter" cellpadding="0" cellspacing="0" width="100%">
                        <tbody>
                            <tr>
                                <td class="dashboardOperationsBar">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td align="left" valign="middle">
                                                    <!-- Toolbar Content Goes Here -->
                                                    <table border="0">
                                                        <tbody>
                                                        
                                                            <tr>
                                                                <td style="white-space: nowrap;" align="left">
                                                                   
                                                                </td>
                                                                <td align="left">
                                                                    
                                                                </td>
                                                              
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <% using (Html.BeginForm("ProjectSchedule", "GridView"))
                                                               {
                                                                   if (ViewData["ProjectList"] != null)
                                                                   { %>
                                                            <tr>
                                                                <td class="formDetailDark" align="right" valign="middle">
                                                                    <label for="projectLevel">
                                                                    </label>
                                                                    Projects :
                                                                </td>
                                                                <td class="formDetail" align="left" valign="top">
                                                                    <%=Html.DropDownList("ddProject", (SelectList)ViewData["ProjectList"], new { @class = "comboBox" })%>
                                                                </td>
                                                                <td align="left">
                                                                    <input type="submit" value="View" class="button" id="btnView" name="btnView">
                                                                </td>
                                                            </tr>
                                                            <%}
                                                                }%>
                                                        </tbody>
                                                    </table>
                                                </td>
                                                <td style="padding-right: 0px;" align="right" valign="middle">
                                                    <table border="0px" cellpadding="0" cellspacing="1">
                                                        <tbody>
                                                            <tr>
                                                                <td style="white-space: nowrap;" align="right" valign="middle">
                                                                </td>
                                                                <td class="" style="padding: 0px; white-space: nowrap;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="padding-left: 2px; padding-right: 4px;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="padding-right: 10px;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="white-space: nowrap;" align="right" valign="middle">
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
                                <td>
                                </td>
                            </tr>
                             <tr>
                    <td>
                        <table class="dashboardTabStripBase" border="0" cellpadding="0" cellspacing="0" width="100%"
                            height="5">
                            <tbody>
                                <tr>
                                    <td class="tabScrollEnabled" id="btnScrollLeft" align="left" valign="middle">
                                        <img src="../../Content/images/common/arrowleft_grey.gif" id="ctl00_ucTabStrip_imgScrollLeft"
                                            style="display: none;" align="middle">
                                    </td>
                                    <td width="100%">
                                    </td>
                                    <td class="tabScrollEnabled" id="btnScrollRight" align="right" valign="middle">
                                        <img src="../../Content/images/common/arrowright_grey.gif" id="ctl00_ucTabStrip_imgScrollRight"
                                            style="display: none;" align="middle">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <%if (ViewData["ProjectLoad"] != null) {
                          PM_Projects project = (PM_Projects)ViewData["ProjectLoad"];
                          ViewData["LoadProject"] = project;
                      %>
                    <td class="formDetail">
                        Loading schedule for project:&nbsp;<%=project.ProjectName %>
                    </td>
                    <%} %>
                </tr>
                            
                        </tbody>
                    </table>
                    <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                </td>
            </tr>
        </tbody>
    </table>

<%
  
    if (ViewData["LoadProject"] != null)
    {
%>
    <table width="99%">
        <tr align="left" valign="top">
            <td>
                <%Html.RenderPartial("Load", ViewData["LoadProject"]); %>
            </td>
        </tr>
    </table>
    <%} %>
      
    
</body>
</html>
