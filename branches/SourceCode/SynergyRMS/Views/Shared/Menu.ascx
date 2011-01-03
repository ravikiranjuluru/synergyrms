<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
  <div id="divTabStrip" style="overflow: hidden;">

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
                    
                    <div id="divmenu">

                    <table id="snTabbedUI" class="agnav_default" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                
                            </td>
                            <td>
                                <div>
                                    <table border="0" cellpadding="0" cellspacing="0" style="margin-left: auto;">
                                        <tr>
                                           
                             <td id="Td1" class="item level1" >
                                                    <a class="link " href="../Dashboard/Index"><span
                                                            class="text ">Home</span> </a>
                                                </td>

                             <td id="DASHBOARD-MYWORK" class="item level1" onmouseenter="this.className += ' hover';"
                                                    onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link " href="../MyWork"><span
                                                            class="text ">My Work</span> </a>
                                                </td>
                                                
                              <td id="DASHBOARD-PROJECT" class="item level1" onmouseenter="this.className += ' hover';"
                                                    onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link " href="../Project/EditProject"><span
                                                            class="text ">Project</span> </a>
                                                </td>
                               
                            <td id="DASHBOARD-SCHEDULING" class="item level1" onmouseenter="this.className += ' hover';"
                                                    onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link " href="../Resource/Schedule"><span
                                                            class="text ">Scheduling</span> </a>
                                                </td>
                             
                             
                              <td id="TIMESHEET" class="item level1" onmouseenter="this.className += ' hover';"
                                                    onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link arrow" href="/timesheet/ts_directentry.aspx?_ClearUPState=True" 
                                                        onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text ">Time</span>
                                                    </a>
                                                    <div class="slide">
                                                        <table border="0" cellpadding="0" cellspacing="1">
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="../Timesheets/"><span class="text">Timesheet
                                                                            Entry</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="../Timesheets/Approve"><span class="text">Approval</span>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                                <%-- <td id="EXPENSE" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">    
                                
                                <a class="link arrow" href="/expense/exp_entry.aspx?_ClearUPState=True"  onclick="siteNavigation.doSelectItem(getParentNode(this));">
<span class="text ">Expense</span>
                                </a> 
                                    <div class="slide"> 
                                            <table border="0" cellpadding="0" cellspacing="1">
                                                 <tr>                                    
                                                        <td class="item level2">
                                                            
                                                                <a class="link" href="/expense/exp_entry.aspx?_ClearUPState=True"  onclick="siteNavigation.doSelectItem(getParentNode(this));">
                                                                    <span class="text">Expense Entry</span>
                                                                </a> 
                                                            
                                                        </td>

                                                    </tr>
                                                
                                                    <tr>                                    
                                                        <td class="item level2">
                                                            
                                                                <a class="link" href="/expense/exp_claimsearch.aspx?_ClearUPState=True"  onclick="siteNavigation.doSelectItem(getParentNode(this));">
                                                                    <span class="text">Claims</span>
                                                                </a> 
                                                            
                                                        </td>
                                                    </tr>
                                                
                                            </table>

                                        
                                    </div>
                                    
                                    
                                
                            </td>--%>
                            
                             <td id="ADMIN" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link arrow" href="#"><span class="text ">Admin</span> </a>
                                                    <div class="slide">
                                                        <table class="flat" border="0" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td onmousedown="siteNavigation.doScroll(getFirstChild(getNextSibling(this)), 'left');">
                                                                    <span class="scrollleft"></span>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <table border="0" cellpadding="0" cellspacing="0">
                                                                            <tr>
                                                                                <td class="head">
                                                                                    Business Entities
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    Financial
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    Skills
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    Security
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_actiontypesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Action
                                                                                                        Types</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_actionviewsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Action
                                                                                                        Views</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_activitysearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Activities</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_expensecategorysearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Categories</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_clientsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Clients</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_contactsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Contacts</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_costcentresearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Cost
                                                                                                        Centres</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_deliverabletypesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Deliverable
                                                                                                        Types</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_departmentsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Departments</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_expensetypesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Expense
                                                                                                        Types</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_locationsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Locations</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_riskactiontypesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Mitigation
                                                                                                        Plan Item Types (Risk)</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_projectsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Projects</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_resourcesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Resources</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_resourcesearch.aspx?MODE=ROLE&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Roles</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_timechargesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Charges</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_timecostsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Costs</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_timecostchargeadjust.aspx?Mode=Charge&ReturnTrail=%7e%2fags_blank.aspx&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Adjust Charges</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_timecostchargeadjust.aspx?Mode=Cost&ReturnTrail=%7e%2fags_blank.aspx&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Adjust Costs</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_nominalsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Nominal
                                                                                                        Codes</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_skillsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Skills</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_skillresourcesearch.aspx?Mode=Approve&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Skills Approve</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_skillresourcesearch.aspx?Mode=Review&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Skills Review</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_loginsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Logins</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_logingroupsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Login
                                                                                                        Groups</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_logintemplatesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Login
                                                                                                        Templates</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_securitygroupsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Security
                                                                                                        Groups</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                                <td onmousedown="siteNavigation.doScroll(getFirstChild(getPreviousSibling(this)), 'right');">
                                                                    <span class="scrollright"></span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                              
                            <td id="REPORTS" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link arrow" href="/reporting/rep_reportsearch.aspx?_ClearUPState=True"
                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                            class="text ">Reports</span> </a>
                                                    <div class="slide">
                                                        <table class="flat" border="0" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td onmousedown="siteNavigation.doScroll(getFirstChild(getNextSibling(this)), 'left');">
                                                                    <span class="scrollleft"></span>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <table border="0" cellpadding="0" cellspacing="0">
                                                                            <tr>
                                                                                <td class="head">
                                                                                    Administration
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    Planning
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    Time &amp; Expense
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=33&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Activity</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=36&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Client</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=50&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Client Contact By Client</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=37&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Cost Rate</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=38&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Department</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=41&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=42&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Resource</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=29&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Action</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=26&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Change Request</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=27&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Document</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=24&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Issue</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=25&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Issue Resolution Plan</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=28&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Lessons Learned</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=30&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Progress Update</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=21&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Risk</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=23&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Risk Mitigation Plan</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=20&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Task</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=51&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Task - Completed</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=55&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Task - Due</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=56&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Task - Due (with Assignments)</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=52&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Task - Late</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=54&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Task - Late (with Assignments)</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=22&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Project Task Assignments</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=11&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Expense Detailed</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=12&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Expense Summary By Project</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=2&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Timesheet Detailed</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=5&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Timesheet Graphical By Project, Resource</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=4&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Timesheet Graphical By Resource, Project</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=8&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Timesheet Summary By Project</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/reporting/rep_reportparameters.aspx?ReportKey=9&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Timesheet Summary By Resource</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                                <td onmousedown="siteNavigation.doScroll(getFirstChild(getPreviousSibling(this)), 'right');">
                                                                    <span class="scrollright"></span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                             
                             <td id="SEARCH" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link arrow" href="#"><span class="img" style="background-image: url(../../Content/images/common/navstrip_search.gif);">
                                                        &nbsp;</span> <span class="text empty"></span></a>
                                                    <div class="slide">
                                                        <table class="flat" border="0" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td onmousedown="siteNavigation.doScroll(getFirstChild(getNextSibling(this)), 'left');">
                                                                    <span class="scrollleft"></span>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <table border="0" cellpadding="0" cellspacing="0">
                                                                            <tr>
                                                                                <td class="head">
                                                                                    Time &amp; Expense
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    Billing
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    Project
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="head">
                                                                                    CRM
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/timesheet/ts_search.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Time</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/expense/exp_expensesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Expense</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/expense/exp_claimsearch.aspx?Tab=SEARCH&_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Claims</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/timeandexpense/te_locksearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Locks</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/timeandexpense/te_budgetsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Budgets</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/clientbilling/cb_billingcontractsearch.aspx?_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Contracts</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/clientbilling/cb_invoicesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Invoices</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/riskmanagement/rsk_risksearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Risks</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/riskmanagement/rsk_riskactionsearch.aspx?_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Mitigation Plan Items</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/riskmanagement/rsk_issuesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Issues</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/riskmanagement/rsk_issueactionsearch.aspx?_ClearUPState=True"
                                                                                                     onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                                                        class="text">Resolution Plan Items</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/planning/pln_profilesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Forecasts</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/planning/pln_scenariosearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Scenarios</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/planning/pln_deliverablesearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Deliverables</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="space">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td class="body">
                                                                                    <table border="0" cellpadding="0" cellspacing="1">
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/bit/bit_actionsearch.aspx?AVKey=6&_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Change
                                                                                                        Requests</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/bit/bit_actionsearch.aspx?AVKey=5&_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Communicate</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/bit/bit_actionsearch.aspx?AVKey=4&_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Documents</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/bit/bit_actionsearch.aspx?AVKey=2&_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Status
                                                                                                        Reporting</span> </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_clientsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Clients</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="item level3">
                                                                                                <a class="link" href="/admin/adm_contactsearch.aspx?_ClearUPState=True" 
                                                                                                    onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="text">Contacts</span>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                                <td onmousedown="siteNavigation.doScroll(getFirstChild(getPreviousSibling(this)), 'right');">
                                                                    <span class="scrollright"></span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                              
                           <td id="CONFIG" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                                    <a class="link arrow" href="/ags_configuration.aspx?_ClearUPState=True" 
                                                        onclick="siteNavigation.doSelectItem(getParentNode(this));"><span class="img" style="background-image: url(../../Content/images/common/navstrip_configuration.gif);">
                                                            &nbsp;</span> <span class="text empty"></span></a>
                                                    <div class="slide">
                                                        <table border="0" cellpadding="0" cellspacing="1">
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultsautogenerate.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Auto-Generate</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultscurrency.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Currency</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_customfields.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Custom Fields</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultswebdisplay.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Display Settings</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_entitydefaults.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Entity Defaults</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultsentrysettings.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Entry Settings</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultsgeneral.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">General Settings</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/clientbilling/cb_invoicetemplatesearch.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Invoice Templates</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_localesearch.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Locales</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultslogin.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Log On Settings</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_planningperiodsedit.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Planning Periods</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_projectlevels.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Project Level Settings</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultsreporting.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Report Settings</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultsrestrictions.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Restrictions</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_scheduledjobs.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Scheduled Jobs</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_screenlabels.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Screen Labels</span> </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="item level2">
                                                                    <a class="link" href="/admin/adm_systemdefaultsCV.aspx?_ClearUPState=True&ReturnTrail=%26%252fags_configuration.aspx%26Configuration"
                                                                         onclick="siteNavigation.doSelectItem(getParentNode(this));"><span
                                                                            class="text">Strategic Planning</span> </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                            <td>
                                
                            </td>
                        </tr>
                    </table>
                    
                    </div>
                </div>