<%--<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" 
MasterPageFile="~/Views/Shared/MasterDashboard.Master"%>
    <%@ Import Namespace="SynergyRMS.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">--%>
  <%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="SynergyRMS.Models" %>
<%@ Import Namespace="LeaveAdapter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Gantt</title>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/Site.css" type="text/css"/>

<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/WebResorce.css" type="text/css"/>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/SkinStyle.css" type="text/css"/>

<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" type="text/css"/>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/sitenavigation.css" type="text/css"/>   
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/ScrollableTable.css" type="text/css" />
<link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/Grid.css" type="text/css"/>
<link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" type="text/css"/>

<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.7.2.custom.css" type="text/css" media="screen" />

<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/Controls.css" type="text/css"/>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/Editor.css" type="text/css"/>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/CalendarElement.css" type="text/css"/>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/SchedulingElement.css" type="text/css"/>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/directentrygrid.css" type="text/css"/>
   
   
   <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_page.css"
        type="text/css" />
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_table.css"
        type="text/css" />

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.js"></script>

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.dataTables.js"></script>

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
    
    
    <style type="text/css">
        .t
        {
            background: url(../../Content/images/common/dot_top.gif) 0 0 repeat-x;
            width: 100%;
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
        .style4
        {
            width: 12%;
        }
        #tblprojects
        {
            width: 90%;
        }
    </style>


	    
<% var currentusername = HttpContext.Current.User.Identity.Name.ToString();%>
    <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        View User Leaves
                       
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
   <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
        
            <tr>
                <td>
                    <div id="masterpage_divBody" class="formBody">
                        <table id="tabTablectl00_phTabstripHeader_tabMain" style="border: medium none; width: 100%;"
                            class="" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td id="ctl00_phTabstripHeader_tabMain_tdStretch" align="left">
                                        <div id="ctl00_phTabstripHeader_tabMain_divTabContainer" style="overflow: hidden;">
                                            <table id="ctl00_phTabstripHeader_tabMain_tabStrip" border="0" cellpadding="0" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace"
                                                                width="5" height="1">
                                                        </td>
                                                        <td class="tabSelected" nowrap="nowrap">
                                                            Leave Informations
                                                        </td>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0"
                                                                width="1" height="1">
                                                        </td>
                                                       
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="tabStripBase" border="0" cellpadding="0" cellspacing="0" width="100%"
                                            height="5">
                                            <tbody>
                                                <tr>
                                                    <td class="tabScrollEnabled" id="btnScrollLeft" align="left" valign="middle">
                                                        <img src="../../Content/images/common/arrowleft_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollLeft"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                    <td width="100%">
                                    </td>
                                                    <td class="tabScrollEnabled" id="btnScrollRight" align="right" valign="middle">
                                                        <img src="../../Content/images/common/arrowright_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollRight"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                    
                        <table id="masterPage_tblFormContentRoot" style="border-collapse: collapse;" border="0"
                            cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td align="justify" valign="top" style="width:80%">
                                      <%-- <strong>
                                       <a href="#" onclick="history.go(-1)">Back</a>
                                       </strong>--%>
                                       </td>
                                </tr>
                                <tr>
                                    <td align="justify" valign="top" style="width:80%">
                                     
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                        &nbsp;</td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                        &nbsp;</td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="top" >
<table id="tblprojects" border="0" cellspacing="0" cellpadding="0" class="display">
    <thead>
        <tr>
            <th id="pcode" align="center"  class="style9" align="center" height="30">
                <a href="#">Leave Reason</a>
            </th>
            <th id="pname" align="center" class="style10" align="center">
                <a href="#"></a>
            </th>
            <th id="pdtype" align="center" class="style9" align="center">
                <a href="#"></a></th>                                                                                                            
            <th id="pdesc" align="center" class="style11" align="center">
                <a href="#"></a>
            </th>                                                                                                            
            <th id="psdate" align="center" class="style11" align="center">
                <a href="#">Start Date</a>
            </th>
            <th id="pedate" align="center" align="center">
                <a href="#">End Date</a>
            </th>
            <th id="edit"  align="center" class="style4">
            </th>
            <th id="delete" align="center">
            </th>
        </tr>
    </thead>
    <tbody>
        <%
        int y=0;
foreach (EmployeeLeaveEntity leave in (List<EmployeeLeaveEntity>)ViewData["UserLeave"])
{


        %>
        <tr>
            <td headers="pcode" class="oddrow-mdl" align="left" height="12" 
                style="width: 10%">
              
            </td>
            <td headers="pname" class="oddrow-mdl" align="left" style="width: 10%">
                
            </td>
            <td headers="pdtype" class="oddrow-mdl" align="left" style="width: 10%">
                
                </td>
            <td headers="pdesc" class="oddrow-mdl" align="left" style="width: 22%">
                 <%= leave.description    %>
            </td>
            <td headers="psdate" class="oddrow-mdl" align="left" style="width: 15%">
                <%=String.Format("{0:ddd, MMM d, yyyy}", leave.startDate.Date)%>
            </td>
            <td headers="pedate" class="oddrow-mdl" align="left" style="width: 15%">
               <%= String.Format("{0:ddd, MMM d, yyyy}", leave.endDate.Date)    %>
            </td>
            
      
        </tr>
        <%} %>
    </tbody>
</table>
                                      
                                      
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                  <tr>
                                    <td align="center" valign="top">
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="masterpage_divFoot" class="formFoot">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td align="left" valign="middle">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td align="left">
                                                        
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    
                    <div style="padding-left: 10px; padding-right: 10px;"></div>
                </td>
            </tr>
        </tbody>
    </table>

    <script>
        $(document).ready(function() {
        $('#tblprojects').dataTable({
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
    
    
<%--</asp:Content>--%>

</body>
</html>
