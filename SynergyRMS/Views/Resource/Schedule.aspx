<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <form id="aspnetForm" onsubmit="javascript:return WebForm_OnSubmit();" action="dashboard/custom/SchedulingDashboard/SchedulingDashboard.aspx?ReturnTrail=%26%257e%252fags_gettingstarted.aspx%26Getting%2bStarted&amp;Continue="
        method="post" name="aspnetForm">
       


       <%-- <script type="text/javascript" src="/scripts/xbScrollableTable.js"></script>
        <script type="text/javascript" src="/scripts/xbLibrary.js"></script>
        <script type="text/javascript" src="/dashboard/dsh_dashboard.master.js"></script>
        <script type="text/javascript" src="/scripts/xbLibrary.js"></script>
        <script type="text/javascript" src="/common/controls/com_popupwindow.js"></script>
        <script type="text/javascript" src="/common/controls/com_menulist.js"></script>
        <script type="text/javascript" src="/scripts/xbLibrary.js"></script>
        <script type="text/javascript" src="/common/controls/com_tabstripheader.js"></script>
        <script type="text/javascript" src="/dashboard/custom/SchedulingDashboard/SchedulingElement.js"></script>
        <script type="text/javascript" src="/scripts/xbSplitter.js"></script>
        <script type="text/javascript" src="/common/script/com_selectall.js"></script>--%>

        <script type="text/javascript">
//&lt;![CDATA[
function SchedulingElement_onSubmit()
{
    document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGridScrollTop').value = xbScrollableTable.getScrollTop('tblTaskGrid');
    document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGridScrollLeft').value = xbScrollableTable.getScrollLeft('tblTaskGrid');
    document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGanttScrollTop').value = xbScrollableTable.getScrollTop('tblTaskGantt');
    document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGanttScrollLeft').value = xbScrollableTable.getScrollLeft('tblTaskGantt');
    if (document.getElementById('tblAssignmentGrid'))
    {
        document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentGridScrollTop').value = xbScrollableTable.getScrollTop('tblAssignmentGrid');
        document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentGridScrollLeft').value = xbScrollableTable.getScrollLeft('tblAssignmentGrid');
        document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentWindowHeight').value = parseInt(document.getElementById('divAssignmentWindow').offsetHeight);
    }
    document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGanttWindowSize').value = parseInt((document.getElementById('divTaskGantt').offsetWidth / document.getElementById('divTaskContainer').offsetWidth) * 100) + '%';
}
function SchedulingElement_initialiseScrollPositions()
{
    xbScrollableTable.scrollTo('tblTaskGrid', document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGridScrollLeft').value, document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGridScrollTop').value);
    xbScrollableTable.scrollTo('tblTaskGantt', 0, 0);
    if (document.getElementById('tblAssignmentGrid'))
    {
        xbScrollableTable.scrollTo('tblAssignmentGrid', document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentGridScrollLeft').value, document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentGridScrollTop').value);
    }
}
function SchedulingElement_refresh()
{
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','Refresh');
}
function SchedulingElement_toggleResource(resourceCode)
{
    document.getElementById('hdnPostbackValue').value = resourceCode;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','ToggleResource');
}
function SchedulingElement_removeResource(resourceCode)
{
    document.getElementById('hdnPostbackValue').value = resourceCode;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','RemoveResource');
}
function SchedulingElement_addAssignment(assignmentAddKey)
{
    document.getElementById('hdnPostbackValue').value = assignmentAddKey;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','AddAssignment');
}
function SchedulingElement_assignAssignment(assignmentKey)
{
    document.getElementById('hdnPostbackValue').value = assignmentKey;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','AssignAssignment');
}
function SchedulingElement_cloneAssignment(assignmentKey)
{
    document.getElementById('hdnPostbackValue').value = assignmentKey;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','CloneAssignment');
}
function SchedulingElement_editAssignment(assignmentKey)
{
    document.getElementById('hdnPostbackValue').value = assignmentKey;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','EditAssignment');
}
function SchedulingElement_editTask(taskKey)
{
    document.getElementById('hdnPostbackValue').value = taskKey;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','EditTask');
}
function SchedulingElement_moveAssignment(assignmentKey, startDate)
{
    var strUrl = '/common/com_calendar.aspx';
    strUrl = strUrl + '?Popup=True';
    strUrl = strUrl + '&amp;Date=' + escape(startDate);
    AECWinPopup.open(strUrl, 500, 500, SchedulingElement_moveAssignmentCallback, assignmentKey, false);
}
function SchedulingElement_moveAssignmentCallback(assignmentKey, returnValue)
{
    document.getElementById('hdnPostbackValue').value = assignmentKey + '|' + returnValue.oaDate;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','MoveAssignment');
}
function SchedulingElement_showAssignments(assignmentShowKey)
{
    document.getElementById('hdnPostbackValue').value = assignmentShowKey;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','ShowAssignments');
}
function SchedulingElement_expandAllResources()
{
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','ExpandAllResources');
}
function SchedulingElement_collapseAllResources()
{
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','CollapseAllResources');
}
function SchedulingElement_collapseAllResources()
{
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','CollapseAllResources');
}
function SchedulingElement_doDeleteAssignments()
{
    var blnReturnValue = false;
    for (var intIndex = 0; intIndex &lt; document.getElementsByName('chkSelect').length; intIndex++)
    {
        if (document.getElementsByName('chkSelect')(intIndex).checked)
        {
            blnReturnValue = true;
            break;
        }
    }
    if (blnReturnValue)
    {
        blnReturnValue = confirm('Are you sure you want to Delete the selected Assignments?');
    }
    else
    {
        alert('Please select the Assignments you want to Delete');
    }
    return blnReturnValue;
}
function SchedulingElement_doModifyAssignmentsResource()
{
    var blnReturnValue = false;
    for (var intIndex = 0; intIndex &lt; document.getElementsByName('chkSelect').length; intIndex++)
    {
        if (document.getElementsByName('chkSelect')(intIndex).checked)
        {
            blnReturnValue = true;
            break;
        }
    }
    if (blnReturnValue)
    {
        var strUrl = '/ags_contextselect.aspx';
        strUrl += '?Mode=DataType';
        strUrl += '&amp;DataType=Resource';
        strUrl += '&amp;DataTypePermission=TaskPlanningMaintain';
        strUrl += '&amp;PageTitle=Select+Resource';
        AECWinPopup.open(strUrl, 900, 500, SchedulingElement_modifyAssignmentsResourceCallback, '', false);
    }
    else
    {
        alert('Please select the Assignments you want to Modify');
    }
    return blnReturnValue;
}
function SchedulingElement_modifyAssignmentsResourceCallback(context, returnValue)
{
    document.getElementById('hdnPostbackValue').value = returnValue;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','ModifyAssignmentsResource');
}
function SchedulingElement_splitAssignment(assignmentKey)
{
    document.getElementById('hdnPostbackValue').value = assignmentKey;
    __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','SplitAssignment');
}
//]]&gt;
</script>

        <script type="text/javascript" src="/common/controls/com_listmanagement.js"></script>

        <script type="text/javascript">
            //&lt;![CDATA[
            function com_listmanagement_postBack() { __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager', 'SAVEASLISTNAME'); } //]]&gt;
</script>

        <script type="text/javascript" src="/common/controls/com_pickbox.js"></script>

        <script type="text/javascript">
            //&lt;![CDATA[
            var ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate = {
                getDate: function() {
                    return { 'day': this.getDay(), 'month': this.getMonth(), 'year': this.getYear() };
                },
                getDay: function() {
                    return this.day() ? this.day().value : null;
                },
                getMonth: function() {
                    return this.month().value;
                },
                getYear: function() {
                    return this.year().value;
                },
                getOADate: function() {
                    return document.getElementByID('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_hdnDate').value;
                },
                day: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_cmbDayUS') ? document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_cmbDayUS') : null;
                },
                month: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_cmbMonth');
                },
                year: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_txtYear');
                },
                time: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_txtTime');
                },
                selectLink: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgSelect') ? document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgSelect') : null;
                },
                todayLink: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgToday') ? document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgToday') : null;
                },
                clearDateLink: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgClearDate') ? document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgClearDate') : null;
                },
                nowLink: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgNow') ? document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgNow') : null;
                },
                clearTimeLink: function() {
                    return document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgClearTime') ? document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_imgClearTime') : null;
                },
                setDisabled: function(val) {
                    if (this.day()) this.day().disabled = val;
                    if (this.month()) this.month().disabled = val;
                    if (this.year()) this.year().disabled = val;
                    if (this.time()) this.time().disabled = val;
                    if (this.selectLink()) this.selectLink().style.display = val ? 'none' : '';
                    if (this.todayLink()) this.todayLink().style.display = val ? 'none' : '';
                    if (this.clearDateLink()) this.clearDateLink().style.display = val ? 'none' : '';
                    if (this.nowLink()) this.nowLink().style.display = val ? 'none' : '';
                    if (this.clearTimeLink()) this.clearTimeLink().style.display = val ? 'none' : '';
                }
            };
            function com_dateinput_setHyperlinkDateCallback_ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate(context, returnValue) { document.getElementById('ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_hdnDate').value = returnValue.oaDate; winPopup.close(); __doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucFromDate', 'PICKDATE'); } //]]&gt;
</script>

        <script type="text/javascript" src="/common/controls/com_dateinput.js"></script>

        <script type="text/javascript">
            //&lt;![CDATA[
            function WebForm_OnSubmit() {
                SchedulingElement_onSubmit();
                return true;
            }
            //]]&gt;
</script>

        <div>
            <input type="hidden" value="/wEWGQKamaONCwL/mqDiCgKIoMaBCALnkJj9AgKQiqimDAKiwKHvAwLHpZPkDQKj0au8CgKw0o48Aqndy6oNAufZ88QBAqDctt0HAoicxo0HAtvt2+kKAv+a/8YFAuKljKsKAvzwgPkBAqWPyUACtvC15QkC/5e5hQ4CqKbJxAIC2KLZqwkC0rf33gUC98z1kgoC5YmC7QaJ/QDXolkL97/zN4AVtU3xU6qbjw=="
                id="__EVENTVALIDATION" name="__EVENTVALIDATION">
        </div>

        <script type="text/javascript">

            if (window.top.siteNavigation_selectTab) {
                window.top.siteNavigation.doSelectItem('DASHBOARD-SCHEDULING');
            }
        
    </script>

        <script type="text/javascript">
            
                var aecWebForm = document.getElementById('aspnetForm');
                var m_blnIsWebFormLoaded = false;
                var m_blnIsWebFormSubmitting = false;            
                var fnFormSubmit = null;
                
                //Cater for the Web Form already having an onSubmit method call
                if (aecWebForm.onsubmit) {
                    fnFormSubmit = aecWebForm.onsubmit;
                }
                
                aecWebForm.onsubmit = function() {
                
                    if (m_blnIsWebFormLoaded == true &amp;&amp; m_blnIsWebFormSubmitting == false) {
                        if (fnFormSubmit &amp;&amp; (fnFormSubmit.call() == false)) {
                            return false;
                        } else {
                            m_blnIsWebFormSubmitting = true;
                            return true;
                        }                
                    } else {
                        return false;
                    }
                }         
                            
                
                function dsh_dashboardmaster_tbiPrintPreview_onClick() {
                
                    var aintElements = new Array();
                    var colChildNodes = getChildNodes(document.getElementById('ulPrintPreview'));
                
                    for (var intIndex = 0; intIndex &lt; colChildNodes.length; intIndex++) {
                        if (colChildNodes[intIndex].getAttribute('aecIsSelected') == '1') {
                            aintElements.push(parseInt(colChildNodes[intIndex].getAttribute('aecIndex')));   
                        }
                    }
                
                    if (aintElements.length &gt; 0) {                    
                        dashboardMaster.showPrintPreview(aintElements.join(','));
                    } else {
                        alert('Please select at least 1 element to print')
                    }
                }               
                
                
                function dsh_dashboardmaster_toggleToolbarMenu(e, toolbarItem) {   
                
                    var oEvent = e || window.event;
                    var oMenu = getNextSibling(toolbarItem);                                                
                                                            
                    if (oMenu) {
                        if (oMenu.style.display == 'none') {
                                                                                                                  
                            dsh_dashboardmaster_showMenu(oEvent, oMenu, toolbarItem);
                            
                            toolbarItem.className = 'tbWrapSelected';
                            //getParentNode(toolbarItem).className = 'tbWrapSelected';
                            toolbarItem.childNodes[1].src = '../../Content/images/icon/menuitem_dropdown_inactive.gif';
                            
                        } else {
                            dsh_dashboardmaster_hideMenu();
                            
                            toolbarItem.className = 'tbWrap';
                            //getParentNode(toolbarItem).className = 'tbWrap';
                            toolbarItem.childNodes[1].src = '../../Content/images/icon/menuitem_dropdown_active.gif';
                        }
                     }
                }
                
                
                function dsh_dashboardmaster_showMenu(e, menu,toolbarItem) {
                    
                    var oEvent = e || window.event;
                    var blnContinue = true;                                                        
                    
                    if (window.activeMenu) {
                        if (window.activeMenu == menu) {
                            blnContinue == false
                        } else {
                            dsh_dashboardmaster_hideMenu();
                        }
                    }
                    
                    if (blnContinue == true) {
                        
                        menu.style.visibility = 'hidden';                        
                        menu.style.left = 0;
                        menu.style.top = 0;
                        menu.style.display = 'block';                                                                         
                        
                        // Position Box
                        com_menulist_movebox(toolbarItem,menu,'right');     
                        menu.style.visibility = 'visible';
                        
                        window.activeMenu = menu;                        
                        cancelBubble(oEvent);
                        addEvent(document, 'mousedown', dsh_dashboardmaster_hideMenu);                    
                    }
                }
                           
                
                function dsh_dashboardmaster_hideMenu() {
                
                    if (window.activeMenu) {
                        window.activeMenu.style.display = 'none';
                        //getParentNode(getPreviousSibling(window.activeMenu)).className = 'tbWrap';
                        getPreviousSibling(window.activeMenu).className = 'tbWrap';
                        window.activeMenu = null;
                    }
                }
                
                
                function dsh_dashboardmaster_toggleSelection(e, item) {
                               
                    var oEvent = e || window.event;
                               
                    if (getAttribute(item, 'aecIsSelected', '0') == '1') {
                        getFirstChild(item).src = '../../Content/images/icon/menuitem_blank.gif';
                        item.setAttribute('aecIsSelected', '0');
                    } else {
                        getFirstChild(item).src = '../../Content/images/icon/menuitem_selected.gif';
                        item.setAttribute('aecIsSelected', '1');
                    }
                    
                    getLastChild(item).value = item.getAttribute('aecIsSelected');
                    cancelEvent(oEvent);
                }
                
                
                var dashboardMaster = {
                
                    showPrintPreview: function (items) {
                       
                        
                                window.open('/dashboard/custom/SchedulingDashboard/SchedulingDashboard.aspx?Code=SCHEDULING&amp;media=1&amp;elements=' + urlEncode(items));
                            
                    },
                    
                    showExcelPreview: function (items) {
                       
                        
                                window.open('/dashboard/custom/SchedulingDashboard/SchedulingDashboard.aspx?Code=SCHEDULING&amp;media=2&amp;elements=' + urlEncode(items));
                            
                    },

                    getElementIndex: function (code) {
                    
                        var intReturnValue = -1;
                    
                        switch (code) {
                            
                                    case 'Scheduling':
                                        intReturnValue = 0;
                                        break;
                                        
                                    
                                    case 'Calendar':
                                        intReturnValue = 1;
                                        break;
                                        
                                    
                                    case 'Requests':
                                        intReturnValue = 2;
                                        break;
                                        
                                    
                                    case 'Utilisation':
                                        intReturnValue = 3;
                                        break;
                                        
                                    
                                    case 'Conflicts':
                                        intReturnValue = 4;
                                        break;
                                        
                                    
                                                    
                            default:
                                break;
                        }
                        
                        return intReturnValue;
                    }           
                }

                // Moves the box object to be directly beneath an object.
                function com_menulist_movebox(owner, box, alignment) {

                    var cleft = 0;
                    var ctop = 0;
                    var obj = owner;

                    while (obj.offsetParent)
                    {
                        cleft += obj.offsetLeft;
                        ctop += obj.offsetTop;
                        obj = obj.offsetParent;
                    }
                                        
                    
                    //align the box to the right if set.
                    if (alignment.toLowerCase() == 'right') {
                        cleft = cleft - (box.clientWidth - owner.offsetWidth);
                        //alert("cleft: " + cleft + "box.clientwidth:" + box.clientWidth + " owneroffset: " + owner.offsetWidth)
                    }

                    box.style.left = cleft + -2 + 'px';        

                    ctop += owner.offsetHeight ;

                    // Handle Internet Explorer body margins,
                    // which affect normal document, but not
                    // absolute-positioned stuff.
                    if (document.body.currentStyle &amp;&amp;
                        document.body.currentStyle['marginTop'])
                    {
                   
                        ctop += parseInt(
                            document.body.currentStyle['marginTop']);
                            
                    }

                    box.style.top = ctop + 'px';
                    
                }

            </script>

        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td>
                        <table width="100%" cellspacing="0" cellpadding="0" class="dashboardOperationsBarOuter">
                            <tbody>
                                <tr>
                                    <td class="dashboardOperationsBar">
                                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td valign="middle" align="left">
                                                        <!-- Toolbar Content Goes Here -->
                                                        <table width="100%">
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left" class="pageTitle">
                                                                        Schedule</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                    <td valign="middle" align="right" style="padding-right: 0px;">
                                                        <table cellspacing="1" cellpadding="0" border="0px">
                                                            <tbody>
                                                                <tr>
                                                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                                                    </td>
                                                                    <td valign="middle" align="right" style="white-space: nowrap;" class="">
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
                            </tbody>
                        </table>
                        <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                    </td>
                </tr>
            </tbody>
        </table>
        
        
        
        
        <div style="padding: 0px;">
            <table cellspacing="0" cellpadding="0" class="dashboardTabStrip" style="border: medium none;
                width: 100%;" id="tabTablectl00_ucTabStrip">
                <tbody>
                    <tr>
                        <td align="left" id="ctl00_ucTabStrip_tdStretch">
                            <div style="overflow: hidden;" id="ctl00_ucTabStrip_divTabContainer">
                                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_ucTabStrip_tabStrip">
                                    <tbody>
                                        <tr>
                                        </tr>
                                        <tr>
                                            <td class="dashboardTabSpace">
                                                <img height="1" width="5" id="ctl00_ucTabStrip_imgTabSpace" src="../../Content/images/common/space.gif">
                                            </td>
                                            <td nowrap="nowrap" class="dashboardTabSelected">
                                                Scheduling
                                            </td>
                                            <td class="dashboardTabSpace">
                                                <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace0" src="../../Content/images/common/space.gif">
                                            </td>
                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Calendar')" onmouseout="this.className='dashboardTabOff';"
                                                onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
                                                <a href="Calendar">Calendar</a>
                                            </td>
                                            <td class="dashboardTabSpace">
                                                <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace1" src="../../Content/images/common/space.gif">
                                            </td>
                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Utilisation')" onmouseout="this.className='dashboardTabOff';"
                                                onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
                                                <a href="Utilisation">Utilisation</a>
                                            </td>
                                            <td class="dashboardTabSpace">
                                                <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace3" src="../../Content/images/common/space.gif">
                                            </td>
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
                                            <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollLeft" src="../../Content/images/common/arrowleft_grey.gif">
                                        </td>
                                        <td width="100%">
                                        </td>
                                        <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
                                            <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollRight" src="../../Content/images/common/arrowright_grey.gif">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding: 3px;
                border-top: 1px solid rgb(153, 153, 153); border-collapse: collapse;" id="ctl00_tblMain">
                <tbody>
                    <tr>
                        <td width="100%" valign="top" align="left" style="border: medium none; margin: 0px;
                            border-collapse: collapse;">
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border: medium none;
                                border-collapse: collapse; margin: 0px; padding: 0px;">
                                <tbody>
                                    <tr>
                                        <td valign="top" align="left" rowspan="1" colspan="1" style="padding: 2px; width: 100%;">
                                            <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; border-collapse: collapse;
                                                padding: 0px;" class="dashboardElementHeaderEnabled">
                                                <tbody>
                                                    <tr>
                                                        <td valign="middle" style="padding: 3px 2px;">
                                                            <table width="100%" cellspacing="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="left" style="padding: 0px;" class="dashboardElementHeaderTitle">
                                                                            <table style="padding: 0px;">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td style="padding: 0px;">
                                                                                            &nbsp;
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td align="right" style="padding: 0px;">
                                                                            <table cellspacing="0" cellpadding="0">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td align="right" style="padding: 0px;" class="dashboardElementHeaderLink">
                                                                                            <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');"
                                                                                                            id="ctl00_hdrElement_Scheduling_mnuMenus_tblMenu0" style="padding-left: 4px;
                                                                                                            white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">
                                                                                                            <table cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
                                                                                                                <tbody>
                                                                                                                    <tr id="trMenuIcons">
                                                                                                                        <!-- Padding Removed as making Title bar too big on dashboards -->
                                                                                                                        <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Scheduling'));"
                                                                                                                            style="padding: 0px; border: 1px solid rgb(236, 236, 237);">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                            <div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();"
                                                                                                style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255);
                                                                                                border: 1px solid rgb(102, 102, 102); z-index: 5005;" id="ctl00_hdrElement_Scheduling_mnuMenus_tblMenu0_divPopup">
                                                                                                <table style="width: 220px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);
                                                                                                    border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">
                                                                                                    <tbody>
                                                                                                        <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#FFFFFF';"
                                                                                                            onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                                                                                            <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Scheduling'))"
                                                                                                                style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer;
                                                                                                                background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                                                                                                <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                                                                                            </td>
                                                                                                            <td onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Scheduling'))"
                                                                                                                style="white-space: nowrap; cursor: pointer; background-color: rgb(255, 255, 255);
                                                                                                                color: rgb(102, 102, 102);" class="popupMenuItem">
                                                                                                                Print
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </div>
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
                                                </tbody>
                                            </table>
                                            <div style="padding: 0px; overflow: hidden; border-width: medium 1px 1px; border-style: none solid solid;
                                                border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 275px;
                                                width: 1417px;" id="ctl00_dsh_dashboard_divElementScheduling">

                                                <script type="text/javascript" language="javascript">

            function SetAssignmentGridStyles()
            {
                if (document.getElementById('tblAssignmentGrid'))
                {
                    // Ensure that the last cells have the correct style
                    for (var intIndex = 0; intIndex &lt; document.getElementById('tblAssignmentGrid').tHead.rows.length; intIndex++)
                    {
                        document.getElementById('tblAssignmentGrid').tHead.rows[intIndex].lastChild.className = 'lastChild';
                    }

                    for (var intIndex = 0; intIndex &lt; document.getElementById('tblAssignmentGrid').tBodies[0].rows.length; intIndex++)
                    {
                        document.getElementById('tblAssignmentGrid').tBodies[0].rows[intIndex].lastChild.className = 'lastChild';
                    }
                }
            }

        </script>

                                                <script type="text/javascript" language="javascript">
                
                var m_oAssignmentToolTip = null;
                    
                function SchedulingElement_showAssignmentToolTip(e, code, title, text)
                {        
                    if (xbSplitter.isDragging == false)
                    {            
                        var oEvent = e || window.event;  
                        
                        // Set the Key
                        m_oAssignmentToolTip.code = code;
                    
                        // Update the information to be displayed on the ToolTip
                        getFirstChild(getFirstChild(getFirstChild(getFirstChild(m_oAssignmentToolTip)))).innerHTML = title;                   

                        getFirstChild(getChildNode(getFirstChild(getFirstChild(m_oAssignmentToolTip)), 1)).innerHTML = text;

                        // Set the position (take into account the client area)
                        m_oAssignmentToolTip.style.top = Math.min(oEvent.clientY + 10, document.documentElement.clientHeight - (m_oAssignmentToolTip.offsetHeight + 20)) + 'px';
                        m_oAssignmentToolTip.style.left = Math.min(oEvent.clientX + 10, document.documentElement.clientWidth - (m_oAssignmentToolTip.offsetWidth + 20)) + 'px';

                        // Display the ToolTip
                        m_oAssignmentToolTip.style.visibility = 'visible';                
                        
                        // Fade the ToolTip
                        doFade(m_oAssignmentToolTip, 0, 90, 10, 20, 0.5);
                    }              
                }
                
                
                function SchedulingElement_hideAssignmentToolTip(e)
                {             
                    var oEvent = e || window.event;  
                    
                    var intX = oEvent.clientX;
                    var intY = oEvent.clientY;   
                                                
                    if (intX &lt; m_oAssignmentToolTip.offsetLeft || 
                        intX &gt; m_oAssignmentToolTip.offsetLeft + m_oAssignmentToolTip.offsetWidth || 
                        intY &lt; m_oAssignmentToolTip.offsetTop || 
                        intY &gt; m_oAssignmentToolTip.offsetTop + m_oAssignmentToolTip.offsetHeight)
                    {
                        m_oAssignmentToolTip.code = '';
                        m_oAssignmentToolTip.opacity = 0;
                        m_oAssignmentToolTip.style.filter = 'alpha(opacity:' + m_oAssignmentToolTip.opacity + ')';
                        m_oAssignmentToolTip.style.visibility = 'hidden'; 
                    }           
                }
                
                
                function doFade(element, startOpacity, endOpacity, steps, intervals, power) {
                
                var intCurrentStep = 0;
                
                    if (element.fadeTimeout) {
	                    window.clearInterval(element.fadeTimeout);
	                }
        	                               
                    element.fadeTimeout = window.setInterval(
                    
	                    function() { 
        	            
	                        element.opacity = fadeInOut(startOpacity, endOpacity, steps, intCurrentStep, power);
	                        element.style.filter = 'alpha(opacity:' + element.opacity + ')'; 
	                        intCurrentStep++;
        	          
	                        if (intCurrentStep &gt; steps) {
	                            window.clearInterval(element.fadeTimeout);
	                        }
	                    } 
        	            
	                , intervals)
                }
                
                
                function fadeInOut(minValue, maxValue, totalSteps, actualStep, power) { 
                
                    return Math.ceil(minValue + (Math.pow(((1 / totalSteps) * actualStep), power) * (maxValue - minValue))); 
                } 
                

                window.onload = function() {
                    
                    if (window.ie == true) {

                        document.getElementById('divTaskWindow').onresize = resizeContainers;
                        document.getElementById('divAssignmentWindow').onresize = resizeContainers;

                        SetAssignmentGridStyles();

                    } else {
                    
                        // setInterval is used here to fire resize event when a users slides the browser window's size.
                        window.setInterval(resizeContainers, 100, null);                                                                                
                        
                        document.getElementById('tblTaskGrid').tHead.rows[0].style.height = document.getElementById('tblTaskGantt').tHead.rows[0].style.height = '32px';
                    
                        for (var intIndex = 0; intIndex &lt; document.getElementById('tblTaskGrid').tBodies[0].rows.length; intIndex++) {
                            document.getElementById('tblTaskGrid').tBodies[0].rows[intIndex].style.height = '22px';
                        }
                    }
                    
                    var oParent = getParentNode(document.getElementById('divContent'));                       
                    oParent.onresize = resizeWindows;

                    //turn off scrolling on dshb element master div so that table handles scrolling !
                    getParentNode(document.getElementById('divContent')).style.overflow = 'hidden';

                    //Initialise objects
                    m_oAssignmentToolTip = document.getElementById('divAssignmentToolTip');            
                
                    //Resize Windows
                    resizeWindows();
                    
                    //Initialise Split Windows
                    xbSplitter.initialise();            
                    
                    //Initalise Scrolling Tables
                    xbScrollableTable.initialise('tblTaskGrid', 100, 'scroll', 'hidden');
                    xbScrollableTable.initialise('tblTaskGantt', 100, 'scroll', 'auto');                
                    xbScrollableTable.initialise('tblAssignmentGrid', 100);
                    
                    //Synchronise Task table scrolling
                    xbScrollableTable.syncScroll('tblTaskGrid', 'tblTaskGantt', 'both', false, true);

                    //Initialise scroll positions
                    SchedulingElement_initialiseScrollPositions();

                    // Set the Select All checkbox
                    var blnSelectAll = true;  
                
                    if (document.getElementById('chkSelectAll'))
                    {
                        if (document.getElementsByName("chkSelect").length == 0)
                        {
                            document.getElementById("chkSelectAll").style.display = 'none';
                            if (document.getElementById("imgCheckSelectAllReplace"))
                            {
                                document.getElementById("imgCheckSelectAllReplace").style.display = 'inline';
                            }
                        }
                        else
                        {
                            for (var intIndex = 0; intIndex &lt; document.getElementsByName('chkSelect').length; intIndex++)
                            {
                                if (!document.getElementsByName('chkSelect')[intIndex].checked)
                                {
                                    blnSelectAll = false;
                                    break;
                                }
                            }                       
                            document.getElementById('chkSelectAll').checked = blnSelectAll;
                        }
                    }

                    document.getElementById('divContent').style.visibility = 'visible';
                }        
            
                window.onresize = function() {
                
                    //resizeWindows();
                }            
                
                function resizeWindows() {   
                
                    //set the height of scrolling table div so that when resize element scrolling tbl resizes properly
                    document.getElementById('divDetail').style.height = Math.max(120, getParentNode(document.getElementById('divContent')).offsetHeight - document.getElementById('divHeader').offsetHeight) + 'px';
                    document.getElementById('divDetail').style.width = Math.max(100, getParentNode(document.getElementById('divContent')).offsetWidth) - 2 + 'px';           
                }    
                
                function resizeContainers() {
                            
                    document.getElementById('divTaskContainer').style.height = Math.min(document.getElementById('divTaskWindow').offsetHeight - 20, window.xbScrollableTable.offsetHeight('tblTaskGrid') + window.scrollbarSize()) + 'px';                          
                }

            //--&gt;
            </script>

                                                <input type="hidden" value="0" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGridScrollTop"
                                                    name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnTaskGridScrollTop"><input
                                                        type="hidden" value="0" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGridScrollLeft"
                                                        name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnTaskGridScrollLeft"><input
                                                            type="hidden" value="0" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGanttScrollTop"
                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnTaskGanttScrollTop"><input
                                                                type="hidden" value="0" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGanttScrollLeft"
                                                                name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnTaskGanttScrollLeft"><input
                                                                    type="hidden" value="0" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentGridScrollTop"
                                                                    name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnAssignmentGridScrollTop"><input
                                                                        type="hidden" value="0" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentGridScrollLeft"
                                                                        name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnAssignmentGridScrollLeft"><input
                                                                            type="hidden" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnTaskGanttWindowSize"
                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnTaskGanttWindowSize"><input
                                                                                type="hidden" value="120" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_hdnAssignmentWindowHeight"
                                                                                name="ctl00$dshElement_Scheduling$aecElementControlScheduling$hdnAssignmentWindowHeight">
                                                <div onmouseout="SchedulingElement_hideAssignmentToolTip(event);" code="" class="toolTip"
                                                    id="divAssignmentToolTip" style="top: 215px; left: 899px; visibility: hidden;">
                                                    <table cellspacing="0" cellpadding="0" border="0" style="border: 1px solid rgb(191, 184, 156);">
                                                        <tbody>
                                                            <tr>
                                                                <td valign="middle" align="center" style="background: none repeat scroll 0% 0% rgb(243, 240, 231);
                                                                    border-bottom: 1px solid rgb(191, 184, 156); padding: 4px 6px; font-weight: bold;">
                                                                    Test Activity Maintenance Screen
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="middle" align="left" style="background: none repeat scroll 0% 0% rgb(255, 255, 255);
                                                                    padding: 2px 6px; white-space: nowrap;">
                                                                    12/17/2010 To 12/23/2010
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="middle" align="left" style="background: none repeat scroll 0% 0% rgb(255, 255, 255);
                                                                    padding: 2px 6px 4px; white-space: nowrap;">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div onmouseout="javascript:SchedulingElement_hidePopup('divColourKey', 100);" onmouseover="javascript:SchedulingElement_displayColourPopup(event, 'tdColourKey', 'divColourKey');"
                                                    style="padding: 2px; margin: 1px; overflow: visible; background-color: rgb(236, 236, 237);
                                                    border: 1px solid rgb(153, 153, 153); max-width: 250px;" class="toolTip" id="divColourKey">
                                                    <table cellspacing="0" cellpadding="2" border="0" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_tblColourKey">
                                                        <tbody>
                                                            <tr>
                                                                <td align="left" style="vertical-align: middle;" class="normal">
                                                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%; background-color: LightGreen;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                                <td align="left">
                                                                    Confirmed Assignments
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" style="vertical-align: middle;" class="normal">
                                                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%; background-color: Orange;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                                <td align="left">
                                                                    Provisional Assignments
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" style="vertical-align: middle;" class="normal">
                                                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%; background-color: Red;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                                <td align="left">
                                                                    Multiple Assignments
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div style="visibility: visible; overflow: hidden;" id="divContent">
                                                    <div style="padding-left: 10px; padding-right: 10px;" id="divHeader">
                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                            <thead>
                                                                <tr>
                                                                    <td align="left">
                                                                        <table width="100px" cellspacing="0" cellpadding="0" border="0" style="">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="left" style="white-space: nowrap;">
                                                                                        <table style="width: 100%;">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td align="left" style="white-space: nowrap; border: medium none; width: 100%;">
                                                                                                        <table>
                                                                                                            <tbody>
                                                                                                                <tr>
                                                                                                                    <td align="left" style="white-space: nowrap;">
                                                                                                                        Resource List:&nbsp;
                                                                                                                        <select onchange="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager','CBOLIST_CLICK')"
                                                                                                                            class="comboBox" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_cboList"
                                                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$cboList">
                                                                                                                            <option value="All" selected="selected">All</option>
                                                                                                                        </select>
                                                                                                                    </td>
                                                                                                                    <td align="left">
                                                                                                                        <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
                                                                                                                            <tbody>
                                                                                                                                <tr>
                                                                                                                                    <td onmouseout="com_menulist_menuOnMouseOut(this, '');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');"
                                                                                                                                        id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_mnuListActions_tblMenu0"
                                                                                                                                        style="white-space: nowrap; cursor: pointer; color: rgb(102, 102, 102);">
                                                                                                                                        <table cellspacing="0" cellpadding="0" border="0">
                                                                                                                                            <tbody>
                                                                                                                                                <tr onmouseout="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown.gif';"
                                                                                                                                                    onmouseover="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown_mouseover.gif';"
                                                                                                                                                    id="tr1">
                                                                                                                                                    <td valign="middle" align="center" onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');"
                                                                                                                                                        style="padding-left: 10px; white-space: nowrap; padding-right: 9px; background-image: url(&quot;../../Content/images/icon/vistabuttongrey.gif&quot;);
                                                                                                                                                        background-repeat: no-repeat; background-position: left center; height: 22px;">
                                                                                                                                                        Actions
                                                                                                                                                    </td>
                                                                                                                                                    <td onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');">
                                                                                                                                                        <img style="vertical-align: middle;" alt="" src="../../Content/images/icon/vistabuttongrey_dropdown_mouseover.gif">
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                            </tbody>
                                                                                                                                        </table>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </tbody>
                                                                                                                        </table>
                                                                                                                        <div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();"
                                                                                                                            style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255);
                                                                                                                            border: 1px solid rgb(102, 102, 102); z-index: 1001;" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_mnuListActions_tblMenu0_divPopup">
                                                                                                                            <table style="width: 220px; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);
                                                                                                                                border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">
                                                                                                                                <tbody>
                                                                                                                                    <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';"
                                                                                                                                        onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                                                                                                                        <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer;
                                                                                                                                            background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                                                                                                                            <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249);
                                                                                                                                            color: rgb(102, 102, 102);" class="popupMenuItem">
                                                                                                                                            Create Empty List...
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';"
                                                                                                                                        onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                                                                                                                        <td valign="middle" align="center" onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager');"
                                                                                                                                            style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer;
                                                                                                                                            background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                                                                                                                            <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager');"
                                                                                                                                            style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249);
                                                                                                                                            color: rgb(102, 102, 102);" class="popupMenuItem">
                                                                                                                                            Save As...
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';"
                                                                                                                                        onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                                                                                                                        <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer;
                                                                                                                                            background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                                                                                                                            <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249);
                                                                                                                                            color: rgb(102, 102, 102);" class="popupMenuItem">
                                                                                                                                            Delete...
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider">
                                                                                                                                            <img height="1" width="1" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider">
                                                                                                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';"
                                                                                                                                        onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                                                                                                                        <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer;
                                                                                                                                            background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                                                                                                                            <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249);
                                                                                                                                            color: rgb(102, 102, 102);" class="popupMenuItem">
                                                                                                                                            Show List Contents
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider">
                                                                                                                                            <img height="1" width="1" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider">
                                                                                                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';"
                                                                                                                                        onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                                                                                                                        <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;_USER_AddResources&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer;
                                                                                                                                            background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                                                                                                                            <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;_USER_AddResources&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249);
                                                                                                                                            color: rgb(102, 102, 102);" class="popupMenuItem">
                                                                                                                                            Add Resources...
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';"
                                                                                                                                        onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                                                                                                                        <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;_USER_AddRoles&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer;
                                                                                                                                            background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                                                                                                                            <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                                                                                                                        </td>
                                                                                                                                        <td onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;_USER_AddRoles&lt;/item&gt;&lt;/argument&gt;')"
                                                                                                                                            style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249);
                                                                                                                                            color: rgb(102, 102, 102);" class="popupMenuItem">
                                                                                                                                            Add Roles...
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </tbody>
                                                                                                                            </table>
                                                                                                                        </div>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </tbody>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        <input type="hidden" value="False" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_hdnPostBack"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$hdnPostBack">
                                                                                        <input type="hidden" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_hdnAction"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$hdnAction">
                                                                                        <input type="hidden" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_hdnParameter"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$ucResourceListManager$hdnParameter">
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td align="left" style="white-space: nowrap; padding-left: 10px;">
                                                                        Project:
                                                                    </td>
                                                                    <td align="left" style="white-space: nowrap; padding-left: 3px; width: 100%;">
                                                                        <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_dshElement_Scheduling_aecElementControlScheduling_pbxProject_lnkSelect', 'ctl00_dshElement_Scheduling_aecElementControlScheduling_pbxProject_lnkRefresh', true);"
                                                                            title="" maxlength="20" class="textBox" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_pbxProject_txtValue"
                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$pbxProject$txtValue">&nbsp;&nbsp;
                                                                        <input type="hidden" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_pbxProject_hdnDescription"
                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$pbxProject$hdnDescription">
                                                                    </td>
                                                                    <td align="right">
                                                                        <table cellspacing="0" cellpadding="0" border="0">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                                                                        <input type="image" title="Go to Current Week" alt="Go to Current Week" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_imgGoToCurrentPeriod"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$imgGoToCurrentPeriod"
                                                                                            src="../../Content/images/icon/currentperiod.gif">
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                                                                        <input type="image" title="Go Back a Week" alt="Go Back a Week" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_imgBack"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$imgBack" src="../../Content/images/icon/chevron_left.gif">
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">
                                                                                        <a id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_lnkPickDate"
                                                                                            href="javascript:com_dateinput_showHyperlinkDatePick('/common/com_calendar.aspx?CalendarMode=',com_dateinput_setHyperlinkDateCallback_ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate,'40525');">
                                                                                            12/13/2010/a>
                                                                                            <input type="hidden" class="textBox" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucFromDate_hdnDate"
                                                                                                name="ctl00$dshElement_Scheduling$aecElementControlScheduling$ucFromDate$hdnDate">
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">
                                                                                        <input type="image" title="Go Forward a Week" alt="Go Forward a Week" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_imgForward"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$imgForward" src="../../Content/images/icon/chevron_right.gif">
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                                                                        Period:
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 3px;">
                                                                                        <select onchange="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','')"
                                                                                            class="comboBox" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_lstPeriods"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$lstPeriods">
                                                                                            <option value="1">1</option>
                                                                                            <option value="2">2</option>
                                                                                            <option value="3">3</option>
                                                                                            <option value="4">4</option>
                                                                                            <option value="5">5</option>
                                                                                            <option value="6">6</option>
                                                                                            <option value="7">7</option>
                                                                                            <option value="8" selected="selected">8</option>
                                                                                        </select>
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 3px;">
                                                                                        Weeks
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" style="padding-left: 5px;" colspan="3">
                                                                        <table cellspacing="0" cellpadding="0" border="0">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap;" class="small">
                                                                                        Show Summary Rows for Expanded Resources:
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;"
                                                                                        class="small">
                                                                                        <input type="checkbox" checked="checked" onclick="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','')"
                                                                                            class="checkBox" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_chkShowSummaryRowsForExpandedResources"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$chkShowSummaryRowsForExpandedResources">
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td align="left" style="padding-left: 10px;" colspan="2">
                                                                        <table cellspacing="0" cellpadding="0" border="0">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap;" class="small">
                                                                                        Colour Scheme:
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;"
                                                                                        class="small">
                                                                                        <select onchange="__doPostBack('ctl00$dshElement_Scheduling$aecElementControlScheduling','')"
                                                                                            class="comboBox" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_lstColourScheme"
                                                                                            name="ctl00$dshElement_Scheduling$aecElementControlScheduling$lstColourScheme">
                                                                                            <option value="AssignmentStatus" selected="selected">Assignment Status</option>
                                                                                            <option value="Chargeability">Chargeability</option>
                                                                                        </select>
                                                                                    </td>
                                                                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;"
                                                                                        onmouseout="javascript:SchedulingElement_hidePopup('divColourKey', 100);" onmouseover="javascript:SchedulingElement_displayColourPopup(event, 'tdColourKey', 'divColourKey');"
                                                                                        id="tdColourKey">
                                                                                        <img alt="" src="../../Content/images/icon/colour_key.gif">
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </thead>
                                                        </table>
                                                    </div>
                                                    <div style="text-align: left; height: 221px; width: 1417px;" aecorientation="1" aectype="xbSplitter"
                                                        id="divDetail">
                                                        <div style="border: 0px solid rgb(255, 0, 0); overflow: hidden; position: absolute;
                                                            height: 221px; width: 1417px;" aecminsize="120" id="divTaskWindow" aecwindow="1"
                                                            aecsize="100%">
                                                            <div style="border: 0px solid rgb(255, 0, 0); margin: 10px; width: auto; height: 201px;"
                                                                aecorientation="0" aectype="xbSplitter" id="divTaskContainer">
                                                                <div style="overflow: hidden; border: 0px solid rgb(255, 0, 0); position: absolute;
                                                                    width: 723px; height: 201px;" aecminsize="100" id="divTaskGrid" aecwindow="1"
                                                                    aecsize="52%">
                                                                    <div style="overflow: hidden; width: 723px;">
                                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0" id="tblTaskGrid_Head"
                                                                            class="tableGridTask" style="margin-bottom: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                            width: 723px;">
                                                                            <thead>
                                                                                <tr style="height: 32px;">
                                                                                    <td align="center" style="white-space: nowrap; width: 25px;">
                                                                                        <div style="white-space: nowrap; width: 25px;" id="divExpandAll">
                                                                                            <img width="10px" onclick="javascript:SchedulingElement_expandAllResources();" alt=""
                                                                                                style="border-width: 0px; cursor: pointer;" title="Click to Expand All" src="../../Content/images/icon/expand.gif"><img
                                                                                                    width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"><img
                                                                                                        width="10px" onclick="javascript:SchedulingElement_collapseAllResources();" alt=""
                                                                                                        style="border-width: 0px; cursor: pointer;" title="Click to Collapse All" src="/images/contract.gif"></div>
                                                                                    </td>
                                                                                    <td style="width: 278px; height: 36px;">
                                                                                        Resource / Project
                                                                                    </td>
                                                                                    <td style="white-space: nowrap; width: 20px;">
                                                                                    </td>
                                                                                    <td style="width: 356px; padding-right: 5px;">
                                                                                        Task
                                                                                    </td>
                                                                                </tr>
                                                                            </thead>
                                                                        </table>
                                                                    </div>
                                                                    <div style="border-bottom: 1px solid rgb(153, 153, 153); padding-bottom: 0px; margin-bottom: 0px;
                                                                        overflow-x: scroll; overflow-y: hidden; width: 723px; height: 164px;">
                                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="tableGridTask"
                                                                            id="tblTaskGrid" style="margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                            padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; width: 723px;"
                                                                            aecisinitialised="true" aecminbodyheight="100" aeccontainersize="201:723">
                                                                            <thead style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                visibility: hidden;">
                                                                                <tr style="height: 0px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                    padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                    <td align="center" style="white-space: nowrap; width: 25px; line-height: 0px; height: 0px;
                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px;
                                                                                        border-top-width: 0px; visibility: hidden;">
                                                                                        <div style="white-space: nowrap; width: 25px; line-height: 0px; height: 0px; margin-bottom: 0px;
                                                                                            margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px;
                                                                                            border-top-width: 0px; visibility: hidden;" id="divExpandAll">
                                                                                            <img width="10px" onclick="javascript:SchedulingElement_expandAllResources();" alt=""
                                                                                                style="border-width: 0px; cursor: pointer; line-height: 0px; height: 0px; margin-bottom: 0px;
                                                                                                margin-top: 0px; padding-bottom: 0px; padding-top: 0px; visibility: hidden;"
                                                                                                title="Click to Expand All" src="/images/expand.gif"></div>
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 0px; line-height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                        padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                        visibility: hidden;">
                                                                                        Resource / Project
                                                                                    </td>
                                                                                    <td style="white-space: nowrap; width: 20px; line-height: 0px; height: 0px; margin-bottom: 0px;
                                                                                        margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px;
                                                                                        border-top-width: 0px; visibility: hidden;">
                                                                                    </td>
                                                                                    <td style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                        padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                        Task
                                                                                    </td>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                        <a href="javascript:SchedulingElement_toggleResource('RES1');">
                                                                                            <img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="/images/contract.gif"></a>
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;">
                                                                                        <a style="padding-right: 10px;" title="RES1

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES1&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);"
                                                                                            href="#">
                                                                                            <img height="11px" width="11px" alt="" style="border-width: 0px;" title="RES1

Click for details" src="../../Content/images/icon/information_blue.gif"></a><a title="RES1

Click to show Assignments" onclick="SchedulingElement_showAssignments('RES1                |                    |0|0|0.00');"
    href="#"> Alan Barnacle </a>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <a href="javascript:SchedulingElement_removeResource('RES1');">
                                                                                            <img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a>
                                                                                    </td>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/13/2010
Finish: 12/14/2010
Effort: 2.00 Days" href="javascript:SchedulingElement_editTask(63);">Document Requirements </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 1/7/2011
Finish: 1/13/2011
Effort: 5.00 Days" href="javascript:SchedulingElement_editTask(74);">Install Report Criteria Selection Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/17/2010
Finish: 12/23/2010
Effort: 5.00 Days" href="javascript:SchedulingElement_editTask(71);">Test Activity Maintenance Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/31/2010
Finish: 1/6/2011
Effort: 5.00 Days" href="javascript:SchedulingElement_editTask(73);">Test Report Criteria Selection Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/15/2010
Finish: 12/16/2010
Effort: 2.00 Days" href="javascript:SchedulingElement_editTask(70);">Write Activity Maintenance Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                        <a href="javascript:SchedulingElement_toggleResource('RES4');">
                                                                                            <img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="/images/contract.gif"></a>
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;">
                                                                                        <a style="padding-right: 10px;" title="RES4

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES4&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);"
                                                                                            href="#">
                                                                                            <img height="11px" width="11px" alt="" style="border-width: 0px;" title="RES4

Click for details" src="../../Content/images/icon/information_blue.gif"></a><a title="RES4

Click to show Assignments" onclick="SchedulingElement_showAssignments('RES4                |                    |0|0|0.00');"
    href="#"> Bernard Timms </a>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <a href="javascript:SchedulingElement_removeResource('RES4');">
                                                                                            <img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a>
                                                                                    </td>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                        <a href="javascript:SchedulingElement_toggleResource('RES2');">
                                                                                            <img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="/images/contract.gif"></a>
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;">
                                                                                        <a style="padding-right: 10px;" title="RES2

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES2&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);"
                                                                                            href="#">
                                                                                            <img height="11px" width="11px" alt="" style="border-width: 0px;" title="RES2

Click for details" src="../../Content/images/icon/information_blue.gif"></a><a title="RES2

Click to show Assignments" onclick="SchedulingElement_showAssignments('RES2                |                    |0|0|0.00');"
    href="#"> Janet J Bailey </a>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <a href="javascript:SchedulingElement_removeResource('RES2');">
                                                                                            <img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a>
                                                                                    </td>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/21/2010
Finish: 12/22/2010
Effort: 2.00 Days" href="javascript:SchedulingElement_editTask(66);">Test Login Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/31/2010
Finish: 1/6/2011
Effort: 5.00 Days" href="javascript:SchedulingElement_editTask(73);">Test Report Criteria Selection Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/24/2010
Finish: 12/30/2010
Effort: 5.00 Days" href="javascript:SchedulingElement_editTask(69);">Use Login Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;" title="PROJECT1">
                                                                                        <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                                                                        Demonstration Project
                                                                                    </td>
                                                                                    <td align="center">
                                                                                    </td>
                                                                                    <td style="">
                                                                                        <a title="Start: 12/15/2010
Finish: 12/20/2010
Effort: 4.00 Days" href="javascript:SchedulingElement_editTask(65);">Write Login Screen </a>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height: 22px;">
                                                                                    <td align="center" style="width: 25px;">
                                                                                        <a href="javascript:SchedulingElement_toggleResource('RES3');">
                                                                                            <img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/icon/contract.gif"></a>
                                                                                    </td>
                                                                                    <td style="width: 40%; height: 22px;">
                                                                                        <a style="padding-right: 10px;" title="RES3

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES3&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);"
                                                                                            href="#">
                                                                                            <img height="11px" width="11px" alt="" style="border-width: 0px;" title="RES3

Click for details" src="../../Content/images/icon/information_blue.gif"></a><a title="RES3

Click to show Assignments" onclick="SchedulingElement_showAssignments('RES3                |                    |0|0|0.00');"
    href="#"> John Smith </a>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <a href="javascript:SchedulingElement_removeResource('RES3');">
                                                                                            <img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a>
                                                                                    </td>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <!-- divTaskGrid -->
                                                                <div style="position: absolute; background-color: rgb(153, 153, 153); font-size: 1px;
                                                                    height: 201px; width: 5px; cursor: col-resize; z-index: 1; left: 733px;">
                                                                </div>
                                                                <div style="overflow: hidden; position: absolute; width: 668px; left: 738px; height: 201px;"
                                                                    aecmaxsize="908" aecminsize="100" aecsize="48%" id="divTaskGantt" aecwindow="2">
                                                                    <div style="overflow: hidden; width: 668px;">
                                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0" id="tblTaskGantt_Head"
                                                                            class="tableGridTask" style="margin-bottom: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                            width: 925px;">
                                                                            <thead>
                                                                                <tr style="height: 32px;">
                                                                                    <td valign="bottom" align="left" style="padding: 0px 17px 0px 0px; border-left: 0px solid rgb(255, 255, 255);
                                                                                        width: 908px;">
                                                                                        <div style="width: 908px; white-space: nowrap; overflow: hidden; height: 35px;" id="divGanttHead">
                                                                                            <div>
                                                                                                <span style="vertical-align: top; display: inline-block; overflow: hidden; white-space: nowrap;">
                                                                                                    <span title="" style="display: inline-block; overflow: hidden; width: 5px; height: 15px;">
                                                                                                    </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                        white-space: nowrap;"><span style="display: inline-block; text-align: left; padding-top: 2px;
                                                                                                            overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 15px;
                                                                                                            padding-left: 4px;">12/13/2010 </span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                overflow: hidden; white-space: nowrap;"><span style="display: inline-block; text-align: left;
                                                                                                                    padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                    width: 107px; height: 15px; padding-left: 4px;">12/20/2010 </span>
                                                                                                </span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                    white-space: nowrap;"><span style="display: inline-block; text-align: left; padding-top: 2px;
                                                                                                        overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 15px;
                                                                                                        padding-left: 4px;">12/27/2010 </span></span><span style="vertical-align: top; display: inline-block;
                                                                                                            overflow: hidden; white-space: nowrap;"><span style="display: inline-block; text-align: left;
                                                                                                                padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                width: 107px; height: 15px; padding-left: 4px;">1/3/2011 </span>
                                                                                                </span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                    white-space: nowrap;"><span style="display: inline-block; text-align: left; padding-top: 2px;
                                                                                                        overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 15px;
                                                                                                        padding-left: 4px;">1/10/2011 </span></span><span style="vertical-align: top; display: inline-block;
                                                                                                            overflow: hidden; white-space: nowrap;"><span style="display: inline-block; text-align: left;
                                                                                                                padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                width: 107px; height: 15px; padding-left: 4px;">1/17/2011 </span>
                                                                                                </span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                    white-space: nowrap;"><span style="display: inline-block; text-align: left; padding-top: 2px;
                                                                                                        overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 15px;
                                                                                                        padding-left: 4px;">1/24/2011 </span></span><span style="vertical-align: top; display: inline-block;
                                                                                                            overflow: hidden; white-space: nowrap;"><span style="display: inline-block; text-align: left;
                                                                                                                padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                width: 107px; height: 15px; padding-left: 4px;">1/31/2011 </span>
                                                                                                </span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                    white-space: nowrap;"><span title="" style="display: inline-block; text-align: center;
                                                                                                        padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                        width: 5px; height: 15px;"></span></span>
                                                                                            </div>
                                                                                            <div style="border-top: 1px solid rgb(153, 153, 153);">
                                                                                                <span style="vertical-align: top; display: inline-block; overflow: hidden; white-space: nowrap;">
                                                                                                    <span title="" style="display: inline-block; overflow: hidden; width: 5px; height: 15px;">
                                                                                                    </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                        white-space: nowrap;"><span title="12/13/2010" style="display: inline-block; text-align: center;
                                                                                                            padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                            width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/14/2010" style="display: inline-block;
                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/15/2010" style="display: inline-block;
                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                            width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/16/2010" style="display: inline-block;
                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/17/2010" style="display: inline-block;
                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                            width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/18/2010" style="display: inline-block;
                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/19/2010" style="display: inline-block;
                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/20/2010" style="display: inline-block;
                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                    width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/21/2010" style="display: inline-block;
                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/22/2010" style="display: inline-block;
                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                    width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/23/2010" style="display: inline-block;
                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/24/2010" style="display: inline-block;
                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                    width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/25/2010" style="display: inline-block;
                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/26/2010" style="display: inline-block;
                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/27/2010" style="display: inline-block;
                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                            width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/28/2010" style="display: inline-block;
                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/29/2010" style="display: inline-block;
                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                            width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="12/30/2010" style="display: inline-block;
                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="12/31/2010" style="display: inline-block;
                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                            width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/1/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/2/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/3/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/4/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/5/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/6/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/7/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/8/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/9/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/10/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/11/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/12/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/13/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/14/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/15/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/16/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/17/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/18/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/19/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/20/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/21/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/22/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/23/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/24/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/25/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/26/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/27/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/28/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/29/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="1/30/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="1/31/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">M</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="2/1/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="2/2/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">W</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="2/3/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">T</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="2/4/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">F</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="2/5/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                overflow: hidden; white-space: nowrap;"><span title="2/6/2011" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    width: 15px; height: 15px;">S</span></span><span style="vertical-align: top; display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        overflow: hidden; white-space: nowrap;"><span title="" style="display: inline-block;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            text-align: center; padding-top: 2px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            width: 5px; height: 15px;"></span></span></div>
                                                                                        </div>

                                                                                        <script type="text/javascript">

                                                                                            removeWhitespace(document.getElementById("divGanttHead"));

                                                </script>

                                                                                    </td>
                                                                                </tr>
                                                                            </thead>
                                                                        </table>
                                                                    </div>
                                                                    <div style="border-bottom: 1px solid rgb(153, 153, 153); padding-bottom: 0px; margin-bottom: 0px;
                                                                        overflow-x: scroll; overflow-y: auto; width: 668px; height: 164px;">
                                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="tableGridTask"
                                                                            id="tblTaskGantt" style="margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                            padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; width: 651px;"
                                                                            aecisinitialised="true" aecminbodyheight="100" aeccontainersize="201:668">
                                                                            <thead style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                visibility: hidden;">
                                                                                <tr style="height: 0px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                    padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                    <td valign="bottom" align="left" style="padding: 0px; border-left: 0px solid rgb(255, 255, 255);
                                                                                        width: 908px; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                        border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                        <div style="width: 908px; white-space: nowrap; overflow: hidden; height: 0px; line-height: 0px;
                                                                                            margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px;
                                                                                            border-top-width: 0px; visibility: hidden;" id="divGanttHead">
                                                                                            <div style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                                <span style="vertical-align: top; display: inline-block; overflow: hidden; white-space: nowrap;
                                                                                                    line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                    padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                                    <span title="" style="display: inline-block; overflow: hidden; width: 5px; height: 0px;
                                                                                                        line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                        border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"></span>
                                                                                                </span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                    white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                    padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                    visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                        overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                        padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                        border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">12/13/2010
                                                                                                    </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                        white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                        padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                        visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                            overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                            padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">12/20/2010
                                                                                                        </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                            white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                            padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                            visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                                overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                                padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                                border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">12/27/2010
                                                                                                            </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                                white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                                visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                                    overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                                    padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">1/3/2011
                                                                                                                </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                                    white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                    padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                                    visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                                        overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                                        padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                                        border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">1/10/2011
                                                                                                                    </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                                        white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                        padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                                        visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                                            overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                                            padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">1/17/2011
                                                                                                                        </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                                            white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                            padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                                            visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                                                overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                                                padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                                                border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">1/24/2011
                                                                                                                            </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                                                white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                                padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                                                visibility: hidden;"><span style="display: inline-block; text-align: left; padding-top: 0px;
                                                                                                                                    overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 107px; height: 0px;
                                                                                                                                    padding-left: 4px; line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">1/31/2011
                                                                                                                                </span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                                                    white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                                    padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                                                    visibility: hidden;"><span title="" style="display: inline-block; text-align: center;
                                                                                                                                        padding-top: 0px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                                        width: 5px; height: 0px; line-height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                                        padding-bottom: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                                                                    </span></span>
                                                                                            </div>
                         <div style="border-top: 0px solid rgb(153, 153, 153); line-height: 0px; height: 0px;
                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px;
                                                                                                visibility: hidden;">
                                                                                                <span style="vertical-align: top; display: inline-block; overflow: hidden; white-space: nowrap;
                                                                                                    line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                    padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                                    <span title="" style="display: inline-block; overflow: hidden; width: 5px; height: 0px;
                                                                                                        line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                        border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"></span>
                                                                                                </span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                    white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                    padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                    visibility: hidden;"><span title="12/13/2010" style="display: inline-block; text-align: center;
                                                                                                        padding-top: 0px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                        width: 15px; height: 0px; line-height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                        padding-bottom: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">
                                                                                                        M</span></span><span style="vertical-align: top; display: inline-block; overflow: hidden;
                                                                                                            white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                            padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px;
                                                                                                            visibility: hidden;"><span title="12/14/2010" style="display: inline-block; text-align: center;
                                                                                                                padding-top: 0px; overflow: hidden; border-left: 1px solid rgb(153, 153, 153);
                                                                                                                width: 15px; height: 0px; line-height: 0px; margin-bottom: 0px; margin-top: 0px;
                                                                                                                padding-bottom: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">T</span></span><span
                                                                                                                    style="vertical-align: top; display: inline-block; overflow: hidden; white-space: nowrap;
                                                                                                                    line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px;
                                                                                                                    padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span
                                                                                                                        title="12/15/2010" style="display: inline-block; text-align: center; padding-top: 0px;
                                                                                                                        overflow: hidden; border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px;
                                                                                                                        line-height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                        border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/16/2010"
                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/17/2010"
                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                        border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/18/2010"
                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/19/2010"
                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/20/2010"
                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                border-top-width: 0px; visibility: hidden;">M</span></span><span style="vertical-align: top;
                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/21/2010"
                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/22/2010"
                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/23/2010"
                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/24/2010"
                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/25/2010"
                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/26/2010"
                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/27/2010"
                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">M</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/28/2010"
                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/29/2010"
                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/30/2010"
                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="12/31/2010"
                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/1/2011"
                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/2/2011"
                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/3/2011"
                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">M</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/4/2011"
                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/5/2011"
                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/6/2011"
                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/7/2011"
                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/8/2011"
                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/9/2011"
                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/10/2011"
                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">M</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/11/2011"
                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/12/2011"
                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/13/2011"
                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/14/2011"
                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/15/2011"
                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/16/2011"
                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/17/2011"
                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">M</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/18/2011"
                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/19/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/20/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/21/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/22/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/23/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/24/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">M</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/25/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/26/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/27/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/28/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/29/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/30/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="1/31/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">M</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="2/1/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="2/2/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">W</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="2/3/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">T</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="2/4/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">F</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="2/5/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title="2/6/2011"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-left: 1px solid rgb(153, 153, 153); width: 15px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                border-top-width: 0px; visibility: hidden;">S</span></span><span style="vertical-align: top;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    display: inline-block; overflow: hidden; white-space: nowrap; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><span title=""
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="display: inline-block; text-align: center; padding-top: 0px; overflow: hidden;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-left: 1px solid rgb(153, 153, 153); width: 5px; height: 0px; line-height: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; border-bottom-width: 0px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        border-top-width: 0px; visibility: hidden;"></span></span></div>
                                                                                        </div>

                                                                                        <script type="text/javascript" style="line-height: 0px; height: 0px; margin-bottom: 0px;
                                                                                            margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px;
                                                                                            border-top-width: 0px; visibility: hidden;">

                                                                                            removeWhitespace(document.getElementById("divGanttHead"));

                                                </script>

                                                                                    </td>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td valign="top" align="left" style="padding: 0px; border-left: 0px solid rgb(255, 255, 255);
                                                                                        border-bottom: 0px solid rgb(255, 255, 255);" class="tableRowEnd">
                                                                                        <div style="width: 907px;">
                                                                                            <img border="0" align="middle" usemap="#imTasks" id="ctl00_dshElement_Scheduling_aecElementControlScheduling_ucGanttChart_imgGanttChart"
                                                                                                src="/planning/controls/pln_ganttchartimage.aspx?GUID=4d8ece19-e9eb-4c92-a238-737065a3c6ff"></div>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <!-- divTaskGantt -->
                                                            </div>
                                                            <!-- divTaskContainer -->
                                                        </div>
                                                        <!-- divTaskWindow -->
                                                        <div style="position: absolute; background-color: rgb(153, 153, 153); font-size: 1px;
                                                            height: 5px; width: 1417px; cursor: row-resize; z-index: 1; display: none; top: 369px;">
                                                        </div>
                                                        <div style="overflow: hidden; display: none; position: absolute; height: 120px; top: 0px;
                                                            width: 1417px;" aecsize="0" aecminsize="120" id="divAssignmentWindow" aecwindow="2">
                                                        </div>
                                                        <!-- divAssignmentWindow -->
                                                        <map name="imTasks" id="imTasks">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'30', 'Document Requirements', '12/13/2010 To 12/14/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |63|30|0.00');"
                                                                coords="5, 6, 37, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'35', 'Write Activity Maintenance Screen', '12/15/2010 To 12/16/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |70|35|0.00');"
                                                                coords="37, 6, 69, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'36', 'Test Activity Maintenance Screen', '12/17/2010 To 12/23/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |71|36|0.00');"
                                                                coords="69, 6, 181, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'38', 'Test Report Criteria Selection Screen', '12/31/2010 To 1/6/2011');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |73|38|0.00');"
                                                                coords="293, 6, 405, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'39', 'Install Report Criteria Selection Screen', '1/7/2011 To 1/13/2011');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |74|39|0.00');"
                                                                coords="405, 6, 517, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40536.00');"
                                                                coords="181, 6, 197, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40537.00');"
                                                                coords="197, 6, 213, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40538.00');"
                                                                coords="213, 6, 229, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40539.00');"
                                                                coords="229, 6, 245, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40540.00');"
                                                                coords="245, 6, 261, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40541.00');"
                                                                coords="261, 6, 277, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40542.00');"
                                                                coords="277, 6, 293, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40557.00');"
                                                                coords="517, 6, 533, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40558.00');"
                                                                coords="533, 6, 549, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40559.00');"
                                                                coords="549, 6, 565, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40560.00');"
                                                                coords="565, 6, 581, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40561.00');"
                                                                coords="581, 6, 597, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40562.00');"
                                                                coords="597, 6, 613, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40563.00');"
                                                                coords="613, 6, 629, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40564.00');"
                                                                coords="629, 6, 645, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40565.00');"
                                                                coords="645, 6, 661, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40566.00');"
                                                                coords="661, 6, 677, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40567.00');"
                                                                coords="677, 6, 693, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40568.00');"
                                                                coords="693, 6, 709, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40569.00');"
                                                                coords="709, 6, 725, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40570.00');"
                                                                coords="725, 6, 741, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40571.00');"
                                                                coords="741, 6, 757, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40572.00');"
                                                                coords="757, 6, 773, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40573.00');"
                                                                coords="773, 6, 789, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40574.00');"
                                                                coords="789, 6, 805, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40575.00');"
                                                                coords="805, 6, 821, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40576.00');"
                                                                coords="821, 6, 837, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40577.00');"
                                                                coords="837, 6, 853, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40578.00');"
                                                                coords="853, 6, 869, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40579.00');"
                                                                coords="869, 6, 885, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |                    |0|40580.00');"
                                                                coords="885, 6, 901, 14" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'30', 'Document Requirements', '12/13/2010 To 12/14/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |63|30|0.00');"
                                                                coords="5, 28, 37, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40527.00');"
                                                                coords="37, 28, 53, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40528.00');"
                                                                coords="53, 28, 69, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40529.00');"
                                                                coords="69, 28, 85, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40530.00');"
                                                                coords="85, 28, 101, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40531.00');"
                                                                coords="101, 28, 117, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40532.00');"
                                                                coords="117, 28, 133, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40533.00');"
                                                                coords="133, 28, 149, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40534.00');"
                                                                coords="149, 28, 165, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40535.00');"
                                                                coords="165, 28, 181, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40536.00');"
                                                                coords="181, 28, 197, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40537.00');"
                                                                coords="197, 28, 213, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40538.00');"
                                                                coords="213, 28, 229, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40539.00');"
                                                                coords="229, 28, 245, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40540.00');"
                                                                coords="245, 28, 261, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40541.00');"
                                                                coords="261, 28, 277, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40542.00');"
                                                                coords="277, 28, 293, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40543.00');"
                                                                coords="293, 28, 309, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40544.00');"
                                                                coords="309, 28, 325, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40545.00');"
                                                                coords="325, 28, 341, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40546.00');"
                                                                coords="341, 28, 357, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40547.00');"
                                                                coords="357, 28, 373, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40548.00');"
                                                                coords="373, 28, 389, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40549.00');"
                                                                coords="389, 28, 405, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40550.00');"
                                                                coords="405, 28, 421, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40551.00');"
                                                                coords="421, 28, 437, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40552.00');"
                                                                coords="437, 28, 453, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40553.00');"
                                                                coords="453, 28, 469, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40554.00');"
                                                                coords="469, 28, 485, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40555.00');"
                                                                coords="485, 28, 501, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40556.00');"
                                                                coords="501, 28, 517, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40557.00');"
                                                                coords="517, 28, 533, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40558.00');"
                                                                coords="533, 28, 549, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40559.00');"
                                                                coords="549, 28, 565, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40560.00');"
                                                                coords="565, 28, 581, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40561.00');"
                                                                coords="581, 28, 597, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40562.00');"
                                                                coords="597, 28, 613, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40563.00');"
                                                                coords="613, 28, 629, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40564.00');"
                                                                coords="629, 28, 645, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40565.00');"
                                                                coords="645, 28, 661, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40566.00');"
                                                                coords="661, 28, 677, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40567.00');"
                                                                coords="677, 28, 693, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40568.00');"
                                                                coords="693, 28, 709, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40569.00');"
                                                                coords="709, 28, 725, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40570.00');"
                                                                coords="725, 28, 741, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40571.00');"
                                                                coords="741, 28, 757, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40572.00');"
                                                                coords="757, 28, 773, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40573.00');"
                                                                coords="773, 28, 789, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40574.00');"
                                                                coords="789, 28, 805, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40575.00');"
                                                                coords="805, 28, 821, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40576.00');"
                                                                coords="821, 28, 837, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40577.00');"
                                                                coords="837, 28, 853, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40578.00');"
                                                                coords="853, 28, 869, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40579.00');"
                                                                coords="869, 28, 885, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |63|40580.00');"
                                                                coords="885, 28, 901, 36" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'39', 'Install Report Criteria Selection Screen', '1/7/2011 To 1/13/2011');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |74|39|0.00');"
                                                                coords="405, 50, 517, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40525.00');"
                                                                coords="5, 50, 21, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40526.00');"
                                                                coords="21, 50, 37, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40527.00');"
                                                                coords="37, 50, 53, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40528.00');"
                                                                coords="53, 50, 69, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40529.00');"
                                                                coords="69, 50, 85, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40530.00');"
                                                                coords="85, 50, 101, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40531.00');"
                                                                coords="101, 50, 117, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40532.00');"
                                                                coords="117, 50, 133, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40533.00');"
                                                                coords="133, 50, 149, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40534.00');"
                                                                coords="149, 50, 165, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40535.00');"
                                                                coords="165, 50, 181, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40536.00');"
                                                                coords="181, 50, 197, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40537.00');"
                                                                coords="197, 50, 213, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40538.00');"
                                                                coords="213, 50, 229, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40539.00');"
                                                                coords="229, 50, 245, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40540.00');"
                                                                coords="245, 50, 261, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40541.00');"
                                                                coords="261, 50, 277, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40542.00');"
                                                                coords="277, 50, 293, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40543.00');"
                                                                coords="293, 50, 309, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40544.00');"
                                                                coords="309, 50, 325, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40545.00');"
                                                                coords="325, 50, 341, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40546.00');"
                                                                coords="341, 50, 357, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40547.00');"
                                                                coords="357, 50, 373, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40548.00');"
                                                                coords="373, 50, 389, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40549.00');"
                                                                coords="389, 50, 405, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40557.00');"
                                                                coords="517, 50, 533, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40558.00');"
                                                                coords="533, 50, 549, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40559.00');"
                                                                coords="549, 50, 565, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40560.00');"
                                                                coords="565, 50, 581, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40561.00');"
                                                                coords="581, 50, 597, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40562.00');"
                                                                coords="597, 50, 613, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40563.00');"
                                                                coords="613, 50, 629, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40564.00');"
                                                                coords="629, 50, 645, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40565.00');"
                                                                coords="645, 50, 661, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40566.00');"
                                                                coords="661, 50, 677, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40567.00');"
                                                                coords="677, 50, 693, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40568.00');"
                                                                coords="693, 50, 709, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40569.00');"
                                                                coords="709, 50, 725, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40570.00');"
                                                                coords="725, 50, 741, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40571.00');"
                                                                coords="741, 50, 757, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40572.00');"
                                                                coords="757, 50, 773, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40573.00');"
                                                                coords="773, 50, 789, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40574.00');"
                                                                coords="789, 50, 805, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40575.00');"
                                                                coords="805, 50, 821, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40576.00');"
                                                                coords="821, 50, 837, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40577.00');"
                                                                coords="837, 50, 853, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40578.00');"
                                                                coords="853, 50, 869, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40579.00');"
                                                                coords="869, 50, 885, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |74|40580.00');"
                                                                coords="885, 50, 901, 58" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'36', 'Test Activity Maintenance Screen', '12/17/2010 To 12/23/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |71|36|0.00');"
                                                                coords="69, 72, 181, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40525.00');"
                                                                coords="5, 72, 21, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40526.00');"
                                                                coords="21, 72, 37, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40527.00');"
                                                                coords="37, 72, 53, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40528.00');"
                                                                coords="53, 72, 69, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40536.00');"
                                                                coords="181, 72, 197, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40537.00');"
                                                                coords="197, 72, 213, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40538.00');"
                                                                coords="213, 72, 229, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40539.00');"
                                                                coords="229, 72, 245, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40540.00');"
                                                                coords="245, 72, 261, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40541.00');"
                                                                coords="261, 72, 277, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40542.00');"
                                                                coords="277, 72, 293, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40543.00');"
                                                                coords="293, 72, 309, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40544.00');"
                                                                coords="309, 72, 325, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40545.00');"
                                                                coords="325, 72, 341, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40546.00');"
                                                                coords="341, 72, 357, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40547.00');"
                                                                coords="357, 72, 373, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40548.00');"
                                                                coords="373, 72, 389, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40549.00');"
                                                                coords="389, 72, 405, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40550.00');"
                                                                coords="405, 72, 421, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40551.00');"
                                                                coords="421, 72, 437, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40552.00');"
                                                                coords="437, 72, 453, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40553.00');"
                                                                coords="453, 72, 469, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40554.00');"
                                                                coords="469, 72, 485, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40555.00');"
                                                                coords="485, 72, 501, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40556.00');"
                                                                coords="501, 72, 517, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40557.00');"
                                                                coords="517, 72, 533, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40558.00');"
                                                                coords="533, 72, 549, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40559.00');"
                                                                coords="549, 72, 565, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40560.00');"
                                                                coords="565, 72, 581, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40561.00');"
                                                                coords="581, 72, 597, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40562.00');"
                                                                coords="597, 72, 613, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40563.00');"
                                                                coords="613, 72, 629, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40564.00');"
                                                                coords="629, 72, 645, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40565.00');"
                                                                coords="645, 72, 661, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40566.00');"
                                                                coords="661, 72, 677, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40567.00');"
                                                                coords="677, 72, 693, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40568.00');"
                                                                coords="693, 72, 709, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40569.00');"
                                                                coords="709, 72, 725, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40570.00');"
                                                                coords="725, 72, 741, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40571.00');"
                                                                coords="741, 72, 757, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40572.00');"
                                                                coords="757, 72, 773, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40573.00');"
                                                                coords="773, 72, 789, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40574.00');"
                                                                coords="789, 72, 805, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40575.00');"
                                                                coords="805, 72, 821, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40576.00');"
                                                                coords="821, 72, 837, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40577.00');"
                                                                coords="837, 72, 853, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40578.00');"
                                                                coords="853, 72, 869, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40579.00');"
                                                                coords="869, 72, 885, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |71|40580.00');"
                                                                coords="885, 72, 901, 80" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'38', 'Test Report Criteria Selection Screen', '12/31/2010 To 1/6/2011');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |73|38|0.00');"
                                                                coords="293, 94, 405, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40525.00');"
                                                                coords="5, 94, 21, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40526.00');"
                                                                coords="21, 94, 37, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40527.00');"
                                                                coords="37, 94, 53, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40528.00');"
                                                                coords="53, 94, 69, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40529.00');"
                                                                coords="69, 94, 85, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40530.00');"
                                                                coords="85, 94, 101, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40531.00');"
                                                                coords="101, 94, 117, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40532.00');"
                                                                coords="117, 94, 133, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40533.00');"
                                                                coords="133, 94, 149, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40534.00');"
                                                                coords="149, 94, 165, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40535.00');"
                                                                coords="165, 94, 181, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40536.00');"
                                                                coords="181, 94, 197, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40537.00');"
                                                                coords="197, 94, 213, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40538.00');"
                                                                coords="213, 94, 229, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40539.00');"
                                                                coords="229, 94, 245, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40540.00');"
                                                                coords="245, 94, 261, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40541.00');"
                                                                coords="261, 94, 277, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40542.00');"
                                                                coords="277, 94, 293, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40550.00');"
                                                                coords="405, 94, 421, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40551.00');"
                                                                coords="421, 94, 437, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40552.00');"
                                                                coords="437, 94, 453, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40553.00');"
                                                                coords="453, 94, 469, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40554.00');"
                                                                coords="469, 94, 485, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40555.00');"
                                                                coords="485, 94, 501, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40556.00');"
                                                                coords="501, 94, 517, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40557.00');"
                                                                coords="517, 94, 533, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40558.00');"
                                                                coords="533, 94, 549, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40559.00');"
                                                                coords="549, 94, 565, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40560.00');"
                                                                coords="565, 94, 581, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40561.00');"
                                                                coords="581, 94, 597, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40562.00');"
                                                                coords="597, 94, 613, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40563.00');"
                                                                coords="613, 94, 629, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40564.00');"
                                                                coords="629, 94, 645, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40565.00');"
                                                                coords="645, 94, 661, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40566.00');"
                                                                coords="661, 94, 677, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40567.00');"
                                                                coords="677, 94, 693, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40568.00');"
                                                                coords="693, 94, 709, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40569.00');"
                                                                coords="709, 94, 725, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40570.00');"
                                                                coords="725, 94, 741, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40571.00');"
                                                                coords="741, 94, 757, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40572.00');"
                                                                coords="757, 94, 773, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40573.00');"
                                                                coords="773, 94, 789, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40574.00');"
                                                                coords="789, 94, 805, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40575.00');"
                                                                coords="805, 94, 821, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40576.00');"
                                                                coords="821, 94, 837, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40577.00');"
                                                                coords="837, 94, 853, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40578.00');"
                                                                coords="853, 94, 869, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40579.00');"
                                                                coords="869, 94, 885, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |73|40580.00');"
                                                                coords="885, 94, 901, 102" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'35', 'Write Activity Maintenance Screen', '12/15/2010 To 12/16/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES1                |PROJECT1            |70|35|0.00');"
                                                                coords="37, 116, 69, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40525.00');"
                                                                coords="5, 116, 21, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40526.00');"
                                                                coords="21, 116, 37, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40529.00');"
                                                                coords="69, 116, 85, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40530.00');"
                                                                coords="85, 116, 101, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40531.00');"
                                                                coords="101, 116, 117, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40532.00');"
                                                                coords="117, 116, 133, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40533.00');"
                                                                coords="133, 116, 149, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40534.00');"
                                                                coords="149, 116, 165, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40535.00');"
                                                                coords="165, 116, 181, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40536.00');"
                                                                coords="181, 116, 197, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40537.00');"
                                                                coords="197, 116, 213, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40538.00');"
                                                                coords="213, 116, 229, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40539.00');"
                                                                coords="229, 116, 245, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40540.00');"
                                                                coords="245, 116, 261, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40541.00');"
                                                                coords="261, 116, 277, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40542.00');"
                                                                coords="277, 116, 293, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40543.00');"
                                                                coords="293, 116, 309, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40544.00');"
                                                                coords="309, 116, 325, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40545.00');"
                                                                coords="325, 116, 341, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40546.00');"
                                                                coords="341, 116, 357, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40547.00');"
                                                                coords="357, 116, 373, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40548.00');"
                                                                coords="373, 116, 389, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40549.00');"
                                                                coords="389, 116, 405, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40550.00');"
                                                                coords="405, 116, 421, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40551.00');"
                                                                coords="421, 116, 437, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40552.00');"
                                                                coords="437, 116, 453, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40553.00');"
                                                                coords="453, 116, 469, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40554.00');"
                                                                coords="469, 116, 485, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40555.00');"
                                                                coords="485, 116, 501, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40556.00');"
                                                                coords="501, 116, 517, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40557.00');"
                                                                coords="517, 116, 533, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40558.00');"
                                                                coords="533, 116, 549, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40559.00');"
                                                                coords="549, 116, 565, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40560.00');"
                                                                coords="565, 116, 581, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40561.00');"
                                                                coords="581, 116, 597, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40562.00');"
                                                                coords="597, 116, 613, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40563.00');"
                                                                coords="613, 116, 629, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40564.00');"
                                                                coords="629, 116, 645, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40565.00');"
                                                                coords="645, 116, 661, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40566.00');"
                                                                coords="661, 116, 677, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40567.00');"
                                                                coords="677, 116, 693, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40568.00');"
                                                                coords="693, 116, 709, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40569.00');"
                                                                coords="709, 116, 725, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40570.00');"
                                                                coords="725, 116, 741, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40571.00');"
                                                                coords="741, 116, 757, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40572.00');"
                                                                coords="757, 116, 773, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40573.00');"
                                                                coords="773, 116, 789, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40574.00');"
                                                                coords="789, 116, 805, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40575.00');"
                                                                coords="805, 116, 821, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40576.00');"
                                                                coords="821, 116, 837, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40577.00');"
                                                                coords="837, 116, 853, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40578.00');"
                                                                coords="853, 116, 869, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40579.00');"
                                                                coords="869, 116, 885, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES1                |PROJECT1            |70|40580.00');"
                                                                coords="885, 116, 901, 124" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40525.00');"
                                                                coords="5, 138, 21, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40526.00');"
                                                                coords="21, 138, 37, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40527.00');"
                                                                coords="37, 138, 53, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40528.00');"
                                                                coords="53, 138, 69, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40529.00');"
                                                                coords="69, 138, 85, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40530.00');"
                                                                coords="85, 138, 101, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40531.00');"
                                                                coords="101, 138, 117, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40532.00');"
                                                                coords="117, 138, 133, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40533.00');"
                                                                coords="133, 138, 149, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40534.00');"
                                                                coords="149, 138, 165, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40535.00');"
                                                                coords="165, 138, 181, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40536.00');"
                                                                coords="181, 138, 197, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40537.00');"
                                                                coords="197, 138, 213, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40538.00');"
                                                                coords="213, 138, 229, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40539.00');"
                                                                coords="229, 138, 245, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40540.00');"
                                                                coords="245, 138, 261, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40541.00');"
                                                                coords="261, 138, 277, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40542.00');"
                                                                coords="277, 138, 293, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40543.00');"
                                                                coords="293, 138, 309, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40544.00');"
                                                                coords="309, 138, 325, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40545.00');"
                                                                coords="325, 138, 341, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40546.00');"
                                                                coords="341, 138, 357, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40547.00');"
                                                                coords="357, 138, 373, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40548.00');"
                                                                coords="373, 138, 389, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40549.00');"
                                                                coords="389, 138, 405, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40550.00');"
                                                                coords="405, 138, 421, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40551.00');"
                                                                coords="421, 138, 437, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40552.00');"
                                                                coords="437, 138, 453, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40553.00');"
                                                                coords="453, 138, 469, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40554.00');"
                                                                coords="469, 138, 485, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40555.00');"
                                                                coords="485, 138, 501, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40556.00');"
                                                                coords="501, 138, 517, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40557.00');"
                                                                coords="517, 138, 533, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40558.00');"
                                                                coords="533, 138, 549, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40559.00');"
                                                                coords="549, 138, 565, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40560.00');"
                                                                coords="565, 138, 581, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40561.00');"
                                                                coords="581, 138, 597, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40562.00');"
                                                                coords="597, 138, 613, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40563.00');"
                                                                coords="613, 138, 629, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40564.00');"
                                                                coords="629, 138, 645, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40565.00');"
                                                                coords="645, 138, 661, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40566.00');"
                                                                coords="661, 138, 677, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40567.00');"
                                                                coords="677, 138, 693, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40568.00');"
                                                                coords="693, 138, 709, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40569.00');"
                                                                coords="709, 138, 725, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40570.00');"
                                                                coords="725, 138, 741, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40571.00');"
                                                                coords="741, 138, 757, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40572.00');"
                                                                coords="757, 138, 773, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40573.00');"
                                                                coords="773, 138, 789, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40574.00');"
                                                                coords="789, 138, 805, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40575.00');"
                                                                coords="805, 138, 821, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40576.00');"
                                                                coords="821, 138, 837, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40577.00');"
                                                                coords="837, 138, 853, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40578.00');"
                                                                coords="853, 138, 869, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40579.00');"
                                                                coords="869, 138, 885, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES4                |                    |0|40580.00');"
                                                                coords="885, 138, 901, 146" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'31', 'Write Login Screen', '12/15/2010 To 12/20/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |65|31|0.00');"
                                                                coords="37, 160, 133, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'32', 'Test Login Screen', '12/21/2010 To 12/22/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |66|32|0.00');"
                                                                coords="133, 160, 165, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'34', 'Use Login Screen', '12/24/2010 To 12/30/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |69|34|0.00');"
                                                                coords="181, 160, 293, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'37', 'Test Report Criteria Selection Screen', '12/31/2010 To 1/6/2011');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |73|37|0.00');"
                                                                coords="293, 160, 405, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40525.00');"
                                                                coords="5, 160, 21, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40526.00');"
                                                                coords="21, 160, 37, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40535.00');"
                                                                coords="165, 160, 181, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40550.00');"
                                                                coords="405, 160, 421, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40551.00');"
                                                                coords="421, 160, 437, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40552.00');"
                                                                coords="437, 160, 453, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40553.00');"
                                                                coords="453, 160, 469, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40554.00');"
                                                                coords="469, 160, 485, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40555.00');"
                                                                coords="485, 160, 501, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40556.00');"
                                                                coords="501, 160, 517, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40557.00');"
                                                                coords="517, 160, 533, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40558.00');"
                                                                coords="533, 160, 549, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40559.00');"
                                                                coords="549, 160, 565, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40560.00');"
                                                                coords="565, 160, 581, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40561.00');"
                                                                coords="581, 160, 597, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40562.00');"
                                                                coords="597, 160, 613, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40563.00');"
                                                                coords="613, 160, 629, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40564.00');"
                                                                coords="629, 160, 645, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40565.00');"
                                                                coords="645, 160, 661, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40566.00');"
                                                                coords="661, 160, 677, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40567.00');"
                                                                coords="677, 160, 693, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40568.00');"
                                                                coords="693, 160, 709, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40569.00');"
                                                                coords="709, 160, 725, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40570.00');"
                                                                coords="725, 160, 741, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40571.00');"
                                                                coords="741, 160, 757, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40572.00');"
                                                                coords="757, 160, 773, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40573.00');"
                                                                coords="773, 160, 789, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40574.00');"
                                                                coords="789, 160, 805, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40575.00');"
                                                                coords="805, 160, 821, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40576.00');"
                                                                coords="821, 160, 837, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40577.00');"
                                                                coords="837, 160, 853, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40578.00');"
                                                                coords="853, 160, 869, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40579.00');"
                                                                coords="869, 160, 885, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |                    |0|40580.00');"
                                                                coords="885, 160, 901, 168" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'32', 'Test Login Screen', '12/21/2010 To 12/22/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |66|32|0.00');"
                                                                coords="133, 182, 165, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40525.00');"
                                                                coords="5, 182, 21, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40526.00');"
                                                                coords="21, 182, 37, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40527.00');"
                                                                coords="37, 182, 53, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40528.00');"
                                                                coords="53, 182, 69, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40529.00');"
                                                                coords="69, 182, 85, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40530.00');"
                                                                coords="85, 182, 101, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40531.00');"
                                                                coords="101, 182, 117, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40532.00');"
                                                                coords="117, 182, 133, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40535.00');"
                                                                coords="165, 182, 181, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40536.00');"
                                                                coords="181, 182, 197, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40537.00');"
                                                                coords="197, 182, 213, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40538.00');"
                                                                coords="213, 182, 229, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40539.00');"
                                                                coords="229, 182, 245, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40540.00');"
                                                                coords="245, 182, 261, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40541.00');"
                                                                coords="261, 182, 277, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40542.00');"
                                                                coords="277, 182, 293, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40543.00');"
                                                                coords="293, 182, 309, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40544.00');"
                                                                coords="309, 182, 325, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40545.00');"
                                                                coords="325, 182, 341, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40546.00');"
                                                                coords="341, 182, 357, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40547.00');"
                                                                coords="357, 182, 373, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40548.00');"
                                                                coords="373, 182, 389, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40549.00');"
                                                                coords="389, 182, 405, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40550.00');"
                                                                coords="405, 182, 421, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40551.00');"
                                                                coords="421, 182, 437, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40552.00');"
                                                                coords="437, 182, 453, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40553.00');"
                                                                coords="453, 182, 469, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40554.00');"
                                                                coords="469, 182, 485, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40555.00');"
                                                                coords="485, 182, 501, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40556.00');"
                                                                coords="501, 182, 517, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40557.00');"
                                                                coords="517, 182, 533, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40558.00');"
                                                                coords="533, 182, 549, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40559.00');"
                                                                coords="549, 182, 565, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40560.00');"
                                                                coords="565, 182, 581, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40561.00');"
                                                                coords="581, 182, 597, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40562.00');"
                                                                coords="597, 182, 613, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40563.00');"
                                                                coords="613, 182, 629, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40564.00');"
                                                                coords="629, 182, 645, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40565.00');"
                                                                coords="645, 182, 661, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40566.00');"
                                                                coords="661, 182, 677, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40567.00');"
                                                                coords="677, 182, 693, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40568.00');"
                                                                coords="693, 182, 709, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40569.00');"
                                                                coords="709, 182, 725, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40570.00');"
                                                                coords="725, 182, 741, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40571.00');"
                                                                coords="741, 182, 757, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40572.00');"
                                                                coords="757, 182, 773, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40573.00');"
                                                                coords="773, 182, 789, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40574.00');"
                                                                coords="789, 182, 805, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40575.00');"
                                                                coords="805, 182, 821, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40576.00');"
                                                                coords="821, 182, 837, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40577.00');"
                                                                coords="837, 182, 853, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40578.00');"
                                                                coords="853, 182, 869, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40579.00');"
                                                                coords="869, 182, 885, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |66|40580.00');"
                                                                coords="885, 182, 901, 190" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'37', 'Test Report Criteria Selection Screen', '12/31/2010 To 1/6/2011');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |73|37|0.00');"
                                                                coords="293, 204, 405, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40525.00');"
                                                                coords="5, 204, 21, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40526.00');"
                                                                coords="21, 204, 37, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40527.00');"
                                                                coords="37, 204, 53, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40528.00');"
                                                                coords="53, 204, 69, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40529.00');"
                                                                coords="69, 204, 85, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40530.00');"
                                                                coords="85, 204, 101, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40531.00');"
                                                                coords="101, 204, 117, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40532.00');"
                                                                coords="117, 204, 133, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40533.00');"
                                                                coords="133, 204, 149, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40534.00');"
                                                                coords="149, 204, 165, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40535.00');"
                                                                coords="165, 204, 181, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40536.00');"
                                                                coords="181, 204, 197, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40537.00');"
                                                                coords="197, 204, 213, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40538.00');"
                                                                coords="213, 204, 229, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40539.00');"
                                                                coords="229, 204, 245, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40540.00');"
                                                                coords="245, 204, 261, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40541.00');"
                                                                coords="261, 204, 277, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40542.00');"
                                                                coords="277, 204, 293, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40550.00');"
                                                                coords="405, 204, 421, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40551.00');"
                                                                coords="421, 204, 437, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40552.00');"
                                                                coords="437, 204, 453, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40553.00');"
                                                                coords="453, 204, 469, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40554.00');"
                                                                coords="469, 204, 485, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40555.00');"
                                                                coords="485, 204, 501, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40556.00');"
                                                                coords="501, 204, 517, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40557.00');"
                                                                coords="517, 204, 533, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40558.00');"
                                                                coords="533, 204, 549, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40559.00');"
                                                                coords="549, 204, 565, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40560.00');"
                                                                coords="565, 204, 581, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40561.00');"
                                                                coords="581, 204, 597, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40562.00');"
                                                                coords="597, 204, 613, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40563.00');"
                                                                coords="613, 204, 629, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40564.00');"
                                                                coords="629, 204, 645, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40565.00');"
                                                                coords="645, 204, 661, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40566.00');"
                                                                coords="661, 204, 677, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40567.00');"
                                                                coords="677, 204, 693, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40568.00');"
                                                                coords="693, 204, 709, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40569.00');"
                                                                coords="709, 204, 725, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40570.00');"
                                                                coords="725, 204, 741, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40571.00');"
                                                                coords="741, 204, 757, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40572.00');"
                                                                coords="757, 204, 773, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40573.00');"
                                                                coords="773, 204, 789, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40574.00');"
                                                                coords="789, 204, 805, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40575.00');"
                                                                coords="805, 204, 821, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40576.00');"
                                                                coords="821, 204, 837, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40577.00');"
                                                                coords="837, 204, 853, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40578.00');"
                                                                coords="853, 204, 869, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40579.00');"
                                                                coords="869, 204, 885, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |73|40580.00');"
                                                                coords="885, 204, 901, 212" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'34', 'Use Login Screen', '12/24/2010 To 12/30/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |69|34|0.00');"
                                                                coords="181, 226, 293, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40525.00');"
                                                                coords="5, 226, 21, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40526.00');"
                                                                coords="21, 226, 37, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40527.00');"
                                                                coords="37, 226, 53, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40528.00');"
                                                                coords="53, 226, 69, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40529.00');"
                                                                coords="69, 226, 85, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40530.00');"
                                                                coords="85, 226, 101, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40531.00');"
                                                                coords="101, 226, 117, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40532.00');"
                                                                coords="117, 226, 133, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40533.00');"
                                                                coords="133, 226, 149, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40534.00');"
                                                                coords="149, 226, 165, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40535.00');"
                                                                coords="165, 226, 181, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40543.00');"
                                                                coords="293, 226, 309, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40544.00');"
                                                                coords="309, 226, 325, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40545.00');"
                                                                coords="325, 226, 341, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40546.00');"
                                                                coords="341, 226, 357, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40547.00');"
                                                                coords="357, 226, 373, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40548.00');"
                                                                coords="373, 226, 389, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40549.00');"
                                                                coords="389, 226, 405, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40550.00');"
                                                                coords="405, 226, 421, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40551.00');"
                                                                coords="421, 226, 437, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40552.00');"
                                                                coords="437, 226, 453, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40553.00');"
                                                                coords="453, 226, 469, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40554.00');"
                                                                coords="469, 226, 485, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40555.00');"
                                                                coords="485, 226, 501, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40556.00');"
                                                                coords="501, 226, 517, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40557.00');"
                                                                coords="517, 226, 533, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40558.00');"
                                                                coords="533, 226, 549, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40559.00');"
                                                                coords="549, 226, 565, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40560.00');"
                                                                coords="565, 226, 581, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40561.00');"
                                                                coords="581, 226, 597, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40562.00');"
                                                                coords="597, 226, 613, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40563.00');"
                                                                coords="613, 226, 629, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40564.00');"
                                                                coords="629, 226, 645, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40565.00');"
                                                                coords="645, 226, 661, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40566.00');"
                                                                coords="661, 226, 677, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40567.00');"
                                                                coords="677, 226, 693, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40568.00');"
                                                                coords="693, 226, 709, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40569.00');"
                                                                coords="709, 226, 725, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40570.00');"
                                                                coords="725, 226, 741, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40571.00');"
                                                                coords="741, 226, 757, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40572.00');"
                                                                coords="757, 226, 773, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40573.00');"
                                                                coords="773, 226, 789, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40574.00');"
                                                                coords="789, 226, 805, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40575.00');"
                                                                coords="805, 226, 821, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40576.00');"
                                                                coords="821, 226, 837, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40577.00');"
                                                                coords="837, 226, 853, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40578.00');"
                                                                coords="853, 226, 869, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40579.00');"
                                                                coords="869, 226, 885, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |69|40580.00');"
                                                                coords="885, 226, 901, 234" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event,'31', 'Write Login Screen', '12/15/2010 To 12/20/2010');"
                                                                target="_self" href="javascript:SchedulingElement_showAssignments('RES2                |PROJECT1            |65|31|0.00');"
                                                                coords="37, 248, 133, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40525.00');"
                                                                coords="5, 248, 21, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40526.00');"
                                                                coords="21, 248, 37, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40533.00');"
                                                                coords="133, 248, 149, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40534.00');"
                                                                coords="149, 248, 165, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40535.00');"
                                                                coords="165, 248, 181, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40536.00');"
                                                                coords="181, 248, 197, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40537.00');"
                                                                coords="197, 248, 213, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40538.00');"
                                                                coords="213, 248, 229, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40539.00');"
                                                                coords="229, 248, 245, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40540.00');"
                                                                coords="245, 248, 261, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40541.00');"
                                                                coords="261, 248, 277, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40542.00');"
                                                                coords="277, 248, 293, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40543.00');"
                                                                coords="293, 248, 309, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40544.00');"
                                                                coords="309, 248, 325, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40545.00');"
                                                                coords="325, 248, 341, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40546.00');"
                                                                coords="341, 248, 357, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40547.00');"
                                                                coords="357, 248, 373, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40548.00');"
                                                                coords="373, 248, 389, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40549.00');"
                                                                coords="389, 248, 405, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40550.00');"
                                                                coords="405, 248, 421, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40551.00');"
                                                                coords="421, 248, 437, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40552.00');"
                                                                coords="437, 248, 453, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40553.00');"
                                                                coords="453, 248, 469, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40554.00');"
                                                                coords="469, 248, 485, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40555.00');"
                                                                coords="485, 248, 501, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40556.00');"
                                                                coords="501, 248, 517, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40557.00');"
                                                                coords="517, 248, 533, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40558.00');"
                                                                coords="533, 248, 549, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40559.00');"
                                                                coords="549, 248, 565, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40560.00');"
                                                                coords="565, 248, 581, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40561.00');"
                                                                coords="581, 248, 597, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40562.00');"
                                                                coords="597, 248, 613, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40563.00');"
                                                                coords="613, 248, 629, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40564.00');"
                                                                coords="629, 248, 645, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40565.00');"
                                                                coords="645, 248, 661, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40566.00');"
                                                                coords="661, 248, 677, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40567.00');"
                                                                coords="677, 248, 693, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40568.00');"
                                                                coords="693, 248, 709, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40569.00');"
                                                                coords="709, 248, 725, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40570.00');"
                                                                coords="725, 248, 741, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40571.00');"
                                                                coords="741, 248, 757, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40572.00');"
                                                                coords="757, 248, 773, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40573.00');"
                                                                coords="773, 248, 789, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40574.00');"
                                                                coords="789, 248, 805, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40575.00');"
                                                                coords="805, 248, 821, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40576.00');"
                                                                coords="821, 248, 837, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40577.00');"
                                                                coords="837, 248, 853, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40578.00');"
                                                                coords="853, 248, 869, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40579.00');"
                                                                coords="869, 248, 885, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES2                |PROJECT1            |65|40580.00');"
                                                                coords="885, 248, 901, 256" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/13/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40525.00');"
                                                                coords="5, 270, 21, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/14/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40526.00');"
                                                                coords="21, 270, 37, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/15/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40527.00');"
                                                                coords="37, 270, 53, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/16/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40528.00');"
                                                                coords="53, 270, 69, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/17/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40529.00');"
                                                                coords="69, 270, 85, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/18/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40530.00');"
                                                                coords="85, 270, 101, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/19/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40531.00');"
                                                                coords="101, 270, 117, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/20/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40532.00');"
                                                                coords="117, 270, 133, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/21/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40533.00');"
                                                                coords="133, 270, 149, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/22/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40534.00');"
                                                                coords="149, 270, 165, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/23/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40535.00');"
                                                                coords="165, 270, 181, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/24/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40536.00');"
                                                                coords="181, 270, 197, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/25/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40537.00');"
                                                                coords="197, 270, 213, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/26/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40538.00');"
                                                                coords="213, 270, 229, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/27/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40539.00');"
                                                                coords="229, 270, 245, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/28/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40540.00');"
                                                                coords="245, 270, 261, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/29/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40541.00');"
                                                                coords="261, 270, 277, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/30/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40542.00');"
                                                                coords="277, 270, 293, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '12/31/2010', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40543.00');"
                                                                coords="293, 270, 309, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40544.00');"
                                                                coords="309, 270, 325, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40545.00');"
                                                                coords="325, 270, 341, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40546.00');"
                                                                coords="341, 270, 357, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40547.00');"
                                                                coords="357, 270, 373, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40548.00');"
                                                                coords="373, 270, 389, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40549.00');"
                                                                coords="389, 270, 405, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/7/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40550.00');"
                                                                coords="405, 270, 421, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/8/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40551.00');"
                                                                coords="421, 270, 437, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/9/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40552.00');"
                                                                coords="437, 270, 453, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/10/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40553.00');"
                                                                coords="453, 270, 469, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/11/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40554.00');"
                                                                coords="469, 270, 485, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/12/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40555.00');"
                                                                coords="485, 270, 501, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/13/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40556.00');"
                                                                coords="501, 270, 517, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/14/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40557.00');"
                                                                coords="517, 270, 533, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/15/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40558.00');"
                                                                coords="533, 270, 549, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/16/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40559.00');"
                                                                coords="549, 270, 565, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/17/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40560.00');"
                                                                coords="565, 270, 581, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/18/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40561.00');"
                                                                coords="581, 270, 597, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/19/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40562.00');"
                                                                coords="597, 270, 613, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/20/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40563.00');"
                                                                coords="613, 270, 629, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/21/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40564.00');"
                                                                coords="629, 270, 645, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/22/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40565.00');"
                                                                coords="645, 270, 661, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/23/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40566.00');"
                                                                coords="661, 270, 677, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/24/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40567.00');"
                                                                coords="677, 270, 693, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/25/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40568.00');"
                                                                coords="693, 270, 709, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/26/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40569.00');"
                                                                coords="709, 270, 725, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/27/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40570.00');"
                                                                coords="725, 270, 741, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/28/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40571.00');"
                                                                coords="741, 270, 757, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/29/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40572.00');"
                                                                coords="757, 270, 773, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/30/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40573.00');"
                                                                coords="773, 270, 789, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '1/31/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40574.00');"
                                                                coords="789, 270, 805, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/1/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40575.00');"
                                                                coords="805, 270, 821, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/2/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40576.00');"
                                                                coords="821, 270, 837, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/3/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40577.00');"
                                                                coords="837, 270, 853, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/4/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40578.00');"
                                                                coords="853, 270, 869, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/5/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40579.00');"
                                                                coords="869, 270, 885, 278" shape="rect">
                                                            <area onmouseout="SchedulingElement_hideAssignmentToolTip(event);" onmouseover="SchedulingElement_showAssignmentToolTip(event, '', '2/6/2011', 'Click to Add Assignment');"
                                                                target="_self" href="javascript:SchedulingElement_addAssignment('RES3                |                    |0|40580.00');"
                                                                coords="885, 270, 901, 278" shape="rect">
                                                        </map>
                                                    </div>
                                                    <!-- divDetail -->
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

        <script type="text/javascript">
            //&lt;![CDATA[
            var com_menulist_divIds = new Array('ctl00_hdrElement_Scheduling_mnuMenus_tblMenu0_divPopup', 'ctl00_dshElement_Scheduling_aecElementControlScheduling_ucResourceListManager_mnuListActions_tblMenu0_divPopup');
            //]]&gt;
</script>

        <script type="text/javascript">
            //&lt;![CDATA[
            m_blnIsWebFormLoaded = true; dsh_dashboardmaster_registerResizeElements('ctl00_tblMain', 1, 1); com_menulist_registerHandler(); //]]&gt;
</script>

        </form>


</asp:Content>
