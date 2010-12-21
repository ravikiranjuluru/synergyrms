<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Dashboard </h2>
    <div>
        <input name="__EVENTTARGET" id="__EVENTTARGET" value="" type="hidden">
        <input name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" type="hidden">
        <input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3NDk4MzM1MDUPZBYCAgUPZBYEAgEPDxYCHglQYWdlVGl0bGVlZGQCAw9kFgJmDxYCHgdWaXNpYmxlaGRkSW5A0WtBtr4dBEgggUZFHofEreI="
            type="hidden">
    </div>
    <script type="text/javascript">
    //<![CDATA[
        var theForm = document.forms['frmMain'];
        if (!theForm) {
            theForm = document.frmMain;
        }
        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }
    //]]>
    </script>
    
    <div>
        <input name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWOwKx9urUAgKyhK/mDgLSnJ+eAwLeiK/4AgKypoCGCwKlgMPzAgLlwIu9DwKw1sLbBAL3iPrPDgKJkNV4Ary6jqMKAp2A68sLAu3A4zwC8Z2V8AwC8sGm7wcC4JrcrQUCubemxwoCkYO3/g0C2bSQ7A4C043e6AwCgNzmkgoC96ng8QYCif/trQEC/+jOtQECoLWlsQMC+oChuAQCspfD4Q4C8cHUxAQC/sfz8AsCnqOCywwClefHOALnj9rQBAK905GpBQKE9KSyCwKj9NPrDwKrt7SNDAKWr+b5BwLm09e8AwKhzNDFDAK0rJM6Asb+vdoLAtP0/e0DAufb1zkCgKCTjwYCts6f6wQChY2mwA4Cs5eAsAMCxOPuywECydKUhAQCtMq73QUCscq79woCzpX60QICneq40w8C89yChg0CqMH59QMCw6OBpQgC7JeZ2AwCjLPj1AYC4c2mlQ+OlJXA2OsbNtKm8lv7cK6t8BGhag=="
            type="hidden">
    </div>
    <table class="pageTitle" width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr>
                <td valign="middle" align="left">
                </td>
            </tr>
        </tbody>
    </table>
    <div id="divMain">
        <div id="divLeftColumn">
            <div style="padding: 5px 10px 10px 20px;">
                <div id="panelLeft">
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <div class="outer">
                        <div class="boxtitle">
                            <table style="background-color: white;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <img id="imgTitleIcon" src="../../Content/images/common/manage_projects.gif" alt=""/>
                                        </td>
                                        <td>
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td id="tdTitle" class="boxtitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                            padding-left: 4px; padding-right: 5px;">
                                                            Manage Projects
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
                                                                
                                                            </style>
                                                            <table style="padding-left: 10px; width: 100%;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td style="padding-left: 10px;">
                                                                            <table id="ctl02_tblLinks" style="width: 100%;">
                                                                                <tbody>
                                                                                    <tr id="ctl02_linkrow_AddProject">
                                                                                        <td padding-left="6px" width="5%">
                                                                                            <a id="ctl02_icon_AddProject" href="javascript:__doPostBack('ctl02$icon_AddProject','')">
                                                                                                <%--<img src="images/cross_collapse.gif" id="ctl02_img_AddProject" title="Click to hide information">--%>
                                                                                                <img src="../../Content/images/common/cross.gif" id="Img1" title="Click for more information">
                                                                                            </a>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl02_link_AddProject" title="Click here to Add a New Project" href="../Project/NewProject">
                                                                                                Add a New Project</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                        <%--                
                                                                                        <tr id="ctl02_desc_AddProject">
                                                                                        <td>
                                                                                        </td>
                                                                                        <td style="border: 1px solid rgb(204, 204, 204); background-color: rgb(240, 248, 255);
                                                                                        padding: 6px; width: 95%; line-height: 1.5;">
                                                                                        Projects are used throughout the Atlantic Global Solution for tracking all Project related data such as tasks, risks, issues, change
                                                                                        requests, storing documents and communicating Project progress. 
                                                                                        Projects are also used for tracking time, submitting expenses and for billing clients. 
                                                                                        You can use this link to add a new Project or to create a new Project based on a pre-defined template.
                                                                                        </td>
                                                                                        </tr>--%>
                                                                                    <tr id="ctl02_linkrow_DASHBOARD-PROJECT">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl02_img_DASHBOARD-PROJECT"
                                                                                                    title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl02_link_DASHBOARD-PROJECT" title="Click here to View an Existing Project"
                                                                                                href="../Project/EditProject">View an Existing
                                                                                                Project</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr id="ctl02_linkrow_ViewTasks">
                                                                                        <td padding-left="6px" width="5%">
                                                                                          
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl02_img_ViewTasks" title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl02_link_ViewTasks" title="Click here to Enter Project Tasks" href="../Project/EditProject">
                                                                                                Enter Project Tasks</a>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr id="ctl02_linkrow_UploadDocuments4">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl02_img_UploadDocuments4"
                                                                                                    title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl02_link_UploadDocuments4" title="Click here to Upload Documents" href="../Project/Docs">
                                                                                                Upload Documents</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr id="ctl02_linkrow_CommunicateProgress5">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl02_img_CommunicateProgress5"
                                                                                                    title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl02_link_CommunicateProgress5" title="Click here to Communicate with Team Members"
                                                                                                href="../Resource/ViewTeam">Communicate
                                                                                                with Team Members</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr id="ctl02_linkrow_ProjectStatus2">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl02_img_ProjectStatus2" title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl02_link_ProjectStatus2" title="Click here to Create a Project Status Report"
                                                                                                href="../Report/Index">Create a Project
                                                                                                Status Report</a>
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
                    <img src="../../Content/images/common/space.gif" height="2"/>
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <div class="outer">
                        <div class="boxtitle">
                            <table style="background-color: white;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <img id="imgTitleIcon" src="../../Content/images/common/manage_resources.gif" alt="">
                                        </td>
                                        <td>
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td id="tdTitle" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                            padding-left: 4px; padding-right: 5px;">
                                                            Manage Resources
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
                                                                
                                                            </style>
                                                            <table style="padding-left: 10px; width: 100%;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td style="padding-left: 10px;">
                                                                            <table id="ctl10_tblLinks" style="width: 100%;">
                                                                                <tbody>
                                                                                    <tr id="ctl10_linkrow_AddDepartment">
                                                                                        <td padding-left="6px" width="5%">
                                                                                            
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl10_img_AddDepartment" title="Click for more information">
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl10_link_AddDepartment" title="Click here to Add a New Department" href="../Resource/Department">
                                                                                                Add a New Department</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                   
                                                                                   
                                                                                    <tr id="ctl10_linkrow_AddRoles">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl10_img_AddRoles" title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl10_link_AddRoles" title="Click here to Add a New Role" href="../Resource/Role">
                                                                                                Add a New Role</a>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr id="ctl10_linkrow_AddResource">
                                                                                        <td padding-left="6px" width="5%">
                                                                                            
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl10_img_AddResource" title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl10_link_AddResource" title="Click here to Add a New Resource" href="../Resource/Index">
                                                                                                Add a New Resource</a>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr id="ctl10_linkrow_ViewResource">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl10_img_ViewResource" title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl10_link_ViewResource" title="Click here to View an Existing Resources"
                                                                                                href="../Resource/Index">View an Existing Resource</a>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr id="ctl10_linkrow_ViewSchedule">
                                                                                        <td padding-left="6px" width="5%">
                                                                                          
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl10_img_ViewSchedule" title="Click for more information"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl10_link_ViewSchedule" title="Click here to View Resources Schedules" href="../Resource/Index">
                                                                                                View Resource Schedules</a>
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
                    <img src="../../Content/images/common/space.gif" height="2">
                </div>
            </div>
        </div>
        <div id="divRightColumn">
            <div style="padding: 5px 20px 10px 10px;">
                <div id="panelRight">
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <div class="outer">
                        <div class="boxtitle">
                            <table style="background-color: white;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <img id="imgTitleIcon" src="../../Content/images/common/manage_timesheets.gif" alt="">
                                        </td>
                                        <td>
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td id="tdTitle" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                            padding-left: 4px; padding-right: 5px;">
                                                            Manage Timesheets
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
                                                                
                                                            </style>
                                                            <table style="padding-left: 10px; width: 100%;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td style="padding-left: 10px;">
                                                                            <table id="ctl06_tblLinks" style="width: 100%;">
                                                                                <tbody>
                                                                                    <tr id="ctl06_linkrow_AddTimesheet">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl06_img_AddTimesheet" title="Click for more information">
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl06_link_AddTimesheet" title="Click here to Enter Time" href="../Timesheets/Index">
                                                                                                Enter Time</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr id="ctl06_linkrow_ApproveTimesheets">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl06_img_ApproveTimesheets"
                                                                                                    title="Click for more information">
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl06_link_ApproveTimesheets" title="Click here to Approve Timesheets" href="../Timesheets/Index">
                                                                                                Approve Timesheets</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr id="ctl06_linkrow_AddActivity">
                                                                                        <td padding-left="6px" width="5%">
                                                                                           
                                                                                                <img src="../../Content/images/common/cross.gif" id="ctl06_img_AddActivity" title="Click for more information">
                                                                                        </td>
                                                                                        <td>
                                                                                            <a id="ctl06_link_AddActivity" title="Click here to Add a New Type of Time Recording Activity"
                                                                                                href="../Timesheets/Index">Add a New Type of Time
                                                                                                Recording Activity</a>
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
                    <img src="../../Content/images/common/space.gif" height="2">
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <%--<div class="outer">   	
    
  <div class="boxtitle">
        <table style="background-color: white;">
            <tbody><tr>
                                     
                    <td> 
                        <img id="imgTitleIcon" src="images/manage_expenses.gif" alt="">    
                    </td>
                                                     
                <td>
                    <table>
                        <tbody><tr>
                            <td id="tdTitle" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px; padding-left: 4px; padding-right: 5px;">                                	
                                Manage Expenses
                            </td>
                        </tr>                        
                    </tbody></table>                    
                </td>
            </tr>
        </tbody></table>
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

</style>

        
<table style="padding-left: 10px; width: 100%;">
    <tbody><tr>
        <td style="padding-left: 10px;">
            <table id="ctl14_tblLinks" style="width: 100%;">
		<tbody><tr id="ctl14_linkrow_AddExpense">
			<td padding-left="6px" width="5%"><a id="ctl14_icon_AddExpense" href="javascript:__doPostBack('ctl14$icon_AddExpense','')"><img src="images/cross.gif" id="ctl14_img_AddExpense" title="Click for more information"></a></td>
			<td><a id="ctl14_link_AddExpense" title="Click here to Add a New Expense" href="javascript:__doPostBack('ctl14$link_AddExpense','')">Enter Expenses</a></td>
		</tr>
		<tr id="ctl14_linkrow_ApproveExpense">
			<td padding-left="6px" width="5%"><a id="ctl14_icon_ApproveExpense" href="javascript:__doPostBack('ctl14$icon_ApproveExpense','')"><img src="images/cross.gif" id="ctl14_img_ApproveExpense" title="Click for more information"></a></td>
			<td><a id="ctl14_link_ApproveExpense" title="Click here to Approve Expenses " href="javascript:__doPostBack('ctl14$link_ApproveExpense','')">Approve Expenses </a></td>
		</tr>
		<tr id="ctl14_linkrow_SubmitExpenses">
			<td padding-left="6px" width="5%"><a id="ctl14_icon_SubmitExpenses" href="javascript:__doPostBack('ctl14$icon_SubmitExpenses','')"><img src="images/cross.gif" id="ctl14_img_SubmitExpenses" title="Click for more information"></a></td>
			<td><a id="ctl14_link_SubmitExpenses" title="Click here to Submit Expenses for Payment" href="javascript:__doPostBack('ctl14$link_SubmitExpenses','')">Submit Expenses for Payment</a></td>
		</tr>
		<tr id="ctl14_linkrow_AuthoriseExpenses">
			<td padding-left="6px" width="5%"><a id="ctl14_icon_AuthoriseExpenses" href="javascript:__doPostBack('ctl14$icon_AuthoriseExpenses','')"><img src="images/cross.gif" id="ctl14_img_AuthoriseExpenses" title="Click for more information"></a></td>
			<td><a id="ctl14_link_AuthoriseExpenses" title="Click here to Authorise Expenses ready for Payment" href="javascript:__doPostBack('ctl14$link_AuthoriseExpenses','')">Authorise Expenses ready for Payment</a></td>
		</tr>
		<tr id="ctl14_linkrow_AddExpenseType">
			<td padding-left="6px" width="5%"><a id="ctl14_icon_AddExpenseType" href="javascript:__doPostBack('ctl14$icon_AddExpenseType','')"><img src="images/cross.gif" id="ctl14_img_AddExpenseType" title="Click for more information"></a></td>
			<td><a id="ctl14_link_AddExpenseType" title="Click here to Add a New Expense Type" href="javascript:__doPostBack('ctl14$link_AddExpenseType','')">Add a New Type of Expense</a></td>
		</tr>
	</tbody></table>
	                    
        </td>
    </tr>
          
            
</tbody></table>    


							    </div>						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </div>
    
</div>--%>
                    <img src="../../Content/images/common/space.gif" height="2">
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <%--<div class="outer">   	
    
    <div class="boxtitle">
        <table style="background-color: white;">
            <tbody><tr>
                                     
                    <td> 
                        <img id="imgTitleIcon" src="images/manage_billing.gif" alt="">    
                    </td>
                                                     
                <td>
                    <table>
                        <tbody><tr>
                            <td id="tdTitle" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px; padding-left: 4px; padding-right: 5px;">                                	
                                Manage Billing
                            </td>
                        </tr>                        
                    </tbody></table>                    
                </td>
            </tr>
        </tbody></table>
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

</style>

        
<table style="padding-left: 10px; width: 100%;">
    <tbody><tr>
        <td style="padding-left: 10px;">
            <table id="ctl18_tblLinks" style="width: 100%;">
		<tbody><tr id="ctl18_linkrow_AddContract">
			<td padding-left="6px" width="5%"><a id="ctl18_icon_AddContract" href="javascript:__doPostBack('ctl18$icon_AddContract','')"><img src="images/cross.gif" id="ctl18_img_AddContract" title="Click for more information"></a></td>
			<td><a id="ctl18_link_AddContract" title="Click here to Add a New Contract" href="javascript:__doPostBack('ctl18$link_AddContract','')">Add a New Billing Contract</a></td>
		</tr>
		<tr id="ctl18_linkrow_BillingSummary">
			<td padding-left="6px" width="5%"><a id="ctl18_icon_BillingSummary" href="javascript:__doPostBack('ctl18$icon_BillingSummary','')"><img src="images/cross.gif" id="ctl18_img_BillingSummary" title="Click for more information"></a></td>
			<td><a id="ctl18_link_BillingSummary" title="Click here to View Billing Summary" href="javascript:__doPostBack('ctl18$link_BillingSummary','')">View Billing Summary</a></td>
		</tr>
		<tr id="ctl18_linkrow_AddInvoice">
			<td padding-left="6px" width="5%"><a id="ctl18_icon_AddInvoice" href="javascript:__doPostBack('ctl18$icon_AddInvoice','')"><img src="images/cross.gif" id="ctl18_img_AddInvoice" title="Click for more information"></a></td>
			<td><a id="ctl18_link_AddInvoice" title="Click here to Create an Invoice" href="javascript:__doPostBack('ctl18$link_AddInvoice','')">Create an Invoice</a></td>
		</tr>
	</tbody></table>
	                    
        </td>
    </tr>
          
            
</tbody></table>    


							    </div>						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </div>
    
</div>--%>
                    <img src="../../Content/images/common/space.gif" height="2">
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
                        }
                        .content
                        {
                            padding-top: 10px;
                        }
                    </style>
                    <%--<div class="outer">   	
    
    <div class="boxtitle">
        <table style="background-color: white;">
            <tbody><tr>
                                                     
                <td>
                    <table>
                        <tbody><tr>
                            <td id="tdTitle" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px; padding-left: 4px; padding-right: 5px;">                                	
                               
                            </td>
                        </tr>                        
                    </tbody></table>                    
                </td>
            </tr>
        </tbody></table>
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
							                                           							        
<table style="width: 100%; padding: 3px;">
		<tbody><tr>
			<td style="width: 20%; text-align: center;">
			
			</td>
			
		</tr>
	</tbody></table>
	

							    </div>						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </div>
    
</div>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>