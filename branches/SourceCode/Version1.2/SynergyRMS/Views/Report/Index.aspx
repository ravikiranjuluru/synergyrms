<%@ Page Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <link id="lnkFavIcon" rel="SHORTCUT ICON" href="<%= ResolveUrl("~") %>Content/images/icon/favicon.ico" />
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
      
   <%-- <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>    
    <link href="http://www.soyos.net/tl_files/demos/aero-window/css/AeroWindow.css?r=123" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="http://www.soyos.net/tl_files/demos/aero-window/js/jquery-1.4.2.min.js"></script> 
    <script type="text/javascript" src="http://www.soyos.net/tl_files/demos/aero-window/js/jquery-ui-1.8.1.custom.min.js"></script> 
    <script type="text/javascript" src="http://www.soyos.net/tl_files/demos/aero-window/js/jquery.easing.1.3.js"></script>         
    <script type="text/javascript" src="http://www.soyos.net/tl_files/demos/aero-window/js/jquery-AeroWindow.js"></script>--%>

<link href="../../Content/jquery-ui.css" rel="stylesheet" type="text/css"/> 
<link href="../../Content/AeroWindow.css" rel="stylesheet" type="text/css"/> 
<script type="text/javascript" src="../../Scripts/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="../../Scripts/jquery-ui-1.8.1.custom.min.js"></script> 
<script type="text/javascript" src="../../Scripts/aerowindow/jquery-AeroWindow.js"></script> 
<script type="text/javascript" src="../../Scripts/aerowindow/jquery.easing.1.3.js"></script> 

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

    
    function popupCallback(context, returnValue) {
    }

    function openPage(pageUrl) {
        //window.frames['mainFrame'].location.href = pageUrl;
    }

   

    function callbackHandler() {
        //do nothing
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
                        Project Reports</td>
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
                  
                    <td class="formDetail">
                      
                        This form display all the reports related to the project schedules.</td>
                </tr>
                           
                        </tbody>
                    </table>
                    <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                </td>
            </tr>
        </tbody>
    </table>
     <div class="outer">
                    <div class="boxtitle">
                        <table style="background-color: white;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img id="img1" src="../../Content/images/common/reports_icon.gif" alt="" />
                                    </td>
                                    <td>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="td1" class="boxtitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                        padding-left: 4px; padding-right: 5px;">
                                                        &nbsp;Projects Reports
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
                                                                                <%--<tr id="Tr14">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img18" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                         <a id="Report" title="Click here to View Report" href="../../Reports/Project_Resources.aspx" target="_blank">
                                                                                            Project Resources Report</a>
                                                                                    </td>
                                                                                </tr>--%>
                                                                               <%-- <tr id="Tr15">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img19" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <a id="A10" title="Click here to View Report" href="../../Reports/ResourceAllocation.aspx" target="_blank">
                                                                                    Resource Allocation Report</a>
                                                                                    </td>
                                                                                </tr>--%>
                                                                                <%--<tr id="Tr16">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img20" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                       <a id="A3" title="Click here to View Report" href="../../Reports/ViewProjectByResources.aspx" target="_blank">
                                                                                    Resource Detail Report</a>
                                                                                    </td>
                                                                                </tr>--%>
                                                                                
                                                                                
                                                                                 <tr id="Tr1">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img2" title="Click for more information" />
                                                                                    </td>
                                                                                     
                                                                                     <td>
                                                                                         <div id="Div2">
                                                                                             <div id="report1icon">
                                                                                                 <a href="#" title="Click here to View Report">Project Resources Report</a>
                                                                                             </div>
                                                                                         </div>
                                                                                        
                                                                                     </td>
                                                                                </tr>
                                                                                 <tr id="Tr2">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img3" title="Click for more information" />
                                                                                    </td>
                                                                                     
                                                                                     <td>
                                                                                         <div id="Div1">
                                                                                             <div id="report2icon">
                                                                                                 <a href="#" title="Click here to View Report">Resource Projects Detail Report</a>
                                                                                             </div>
                                                                                         </div>
                                                                                        
                                                                                     </td>
                                                                                </tr>
                                                                                <tr id="Tr3">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img4" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <div id="Div3">
                                                                                            <div id="report3icon">
                                                                                                <a href="#" title="Click here to View Report">Resource Projects Report</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                
                                                                                   <tr id="Tr4">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <img src="../../Content/images/common/cross.gif" id="Img5" title="Click for more information" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <div id="Div4">
                                                                                            <div id="report4icon">
                                                                                                <a href="#" title="Click here to View Report">Resource Allocation Detail Report</a>
                                                                                            </div>
                                                                                        </div>
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
    <div id="Firefoxapp" style="display: none;">
        <iframe src="../../Reports/Test.htm" width="100%" height="100%" style="border: 0px;"
            frameborder="0"></iframe>
        <div id="iframeHelper">
        </div>
    </div>
    <div id="report1app" style="display: none;">
        <iframe src="../../Reports/Project_Resources.aspx" width="100%" height="100%" style="border: 0px;"
            frameborder="0"></iframe>
        <div id="Div18">
        </div>
    </div>
    <div id="report2app" style="display: none;">
        <iframe src="../../Reports/ResourceAllocation.aspx" width="100%" height="100%" style="border: 0px;"
            frameborder="0"></iframe>
        <div id="Div20">
        </div>
    </div>
    <div id="report3app" style="display: none;">
        <iframe src="../../Reports/ViewProjectByResources.aspx" width="100%" height="100%" style="border: 0px;"
            frameborder="0"></iframe>
        <div id="Div22">
        </div>
    </div>
          <div id="report4app" style="display: none;">
        <iframe src="../../Reports/ResourceAllocationByUser.aspx" width="100%" height="100%" style="border: 0px;"
            frameborder="0"></iframe>
        <div id="Div7">
        </div>
    </div>     
              
                                                                                             
                                                                                             
                                                                                             
     <script type="text/javascript">
        
         $('#report1icon').click(function() {
         $('#report1app').AeroWindow({
         WindowTitle: 'Project Resources Report',
                 WindowPositionTop: 'center',
                 WindowStatus: 'regular',     /* 'regular', 'maximized', 'minimized' */
                 WindowPositionLeft: 'center',
                 WindowWidth: 700,
                 WindowHeight: 500,
                 WindowAnimation: 'easeOutCubic'
             });
         });
         $('#report2icon').click(function() {
         $('#report2app').AeroWindow({
         WindowTitle: 'Resource Projects Detail Report ',
                 WindowPositionTop: 'center',
                 WindowStatus: 'regular',     /* 'regular', 'maximized', 'minimized' */
                 WindowPositionLeft: 'center',
                 WindowWidth: 700,
                 WindowHeight: 500,
                 WindowAnimation: 'easeOutCubic'
             });
         });
         $('#report3icon').click(function() {
         $('#report3app').AeroWindow({
         WindowTitle: 'Resource Projects Report',
                 WindowPositionTop: 'center',
                 WindowStatus: 'regular',     /* 'regular', 'maximized', 'minimized' */
                 WindowPositionLeft: 'center',
                 WindowWidth: 700,
                 WindowHeight: 500,
                 WindowAnimation: 'easeOutCubic'
             });
         });

         $('#report4icon').click(function() {
             $('#report4app').AeroWindow({
                 WindowTitle: 'Resource Allocation Detail Report',
                 WindowPositionTop: 'center',
                 WindowStatus: 'regular',     /* 'regular', 'maximized', 'minimized' */
                 WindowPositionLeft: 'center',
                 WindowWidth: 700,
                 WindowHeight: 500,
                 WindowAnimation: 'easeOutCubic'
             });
         });
    </script>
    
</body>
</html>
