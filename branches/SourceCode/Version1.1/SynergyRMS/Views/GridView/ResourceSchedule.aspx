<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Resource Schedule</title>
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
  
  

 
 <div style="padding: 0px;">
        <table cellspacing="0" cellpadding="0" class="dashboardTabStrip" style="border: medium none;
            width: 100%;" id="Table1">
            <tbody>
                <tr>
                    <td align="left" id="Td3">
                        <div style="overflow: hidden;" id="Div1">
                            <table cellspacing="0" cellpadding="0" border="0" id="Table2">
                                <tbody>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td class="dashboardTabSpace">
                                            <img height="1" width="1" id="Img3" src="../../Content/images/common/space.gif">
                                        </td>
                                         <td nowrap="nowrap" class="dashboardTabSelected">
                                                Scheduling
                                            </td>
                                        <td class="dashboardTabSpace">
                                            <img height="1" width="1" id="Img4" src="../../Content/images/common/space.gif">
                                        </td>
                                       <%-- <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Calendar')" onmouseout="this.className='dashboardTabOff';"
                                            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
                                            <a href="../Resource/Calendar">Calendar</a>
                                            
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace2" src="../../Content/images/common/space.gif">
                                        </td>
                                        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Utilisation')" onmouseout="this.className='dashboardTabOff';"
                                            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
                                            <a href="../Resource/Utilisation">Utilisation</a>
                                        </td>--%>
                                        <td nowrap="nowrap" width="100%" valign="middle" align="left" class="dashboardTabTail">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table height="5" width="100%" cellspacing="0" cellpadding="0" border="0" class="dashboardTabStripBase">
                            <tbody>
                                <tr>
                                    <td valign="middle" align="left" id="btnScrollLeft" class="tabScrollEnabled">
                                        <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollLeft" src="../../Content/images/icon/arrowleft_grey.gif">
                                    </td>
                                    <td width="100%">
                                    </td>
                                    <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
                                        <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollRight" src="../../Content/images/icon/arrowright_grey.gif">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
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
                                                                        User:
                                                                        <select name="ctl00$phFormContent$cboProjectLevel" id="Select2" class="comboBox">
                                                                            <option value="Select" selected="selected">Select</option>
                                                                            <option value="Project1">User 1</option>
                                                                            <option value="Project2">User 2</option>
                                                                            <option value="Project3">User 3</option>
                                                                        </select>
                                                                        <%--<%=Html.DropDownList("feedbackcategory", (SelectList)ViewData["SectorList"], new { @class = "frmInputElements" })%>--%>
                                                                    </td>
                                                                    <td align="left">
                                                                        <input type="submit" value="View" class="button" id="Submit1" name="btnView">
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
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                    </td>
                </tr>
            </tbody>
        </table>
        <%--<%Html.RenderPartial("LoadSchedule"); %>--%>
    </div>
    <p style="text-align:justify">
<%Html.RenderPartial("LoadSchedule"); %>
    </p>
    
                
   
    
      
    
</body>
</html>

