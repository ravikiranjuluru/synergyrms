<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="position: absolute; left: 0px; top: 0px; z-index: 1;" id="Grid1HoverCursors">
        <div style="" align="left">
            <div class="GOPagerHover" style="position: absolute; display: none;">
            </div>
        </div>
        <div style="" align="left">
            <div style="display: none;">
                <div class="GOHoverPanelBackground GOCursorBackground" style="position: absolute;
                    top: 494px; left: 4px; height: 18px; width: 14px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBackground GOCursorBackground" style="position: absolute; top: 494px;
                    left: 18px; height: 18px; width: 447px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBackground GOCursorBackground" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBackground GOCursorBackground" style="position: absolute; top: 494px;
                    left: 959px; height: 18px; width: 460px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
            </div>
        </div>
        <div style="" align="left">
            <div style="display: none;">
                <div class="GOHoverRowBorder GOCursorBorderLeft" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBorder GOCursorBorderRight" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBorder GOCursorBorderTop" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBorder GOCursorBorderBottom" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
            </div>
        </div>
        <div style="" align="left">
            <div style="display: none;">
                <div class="GOHoverCellBorder GOCursorBorderLeft" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverCellBorder GOCursorBorderRight" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverCellBorder GOCursorBorderTop" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverCellBorder GOCursorBorderBottom" style="position: absolute; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="position: absolute; left: 0px; top: 0px; z-index: 1;" id="Grid0HoverCursors">
        <div style="" align="left">
            <div class="GOPagerHover" style="position: absolute; display: none;">
            </div>
        </div>
        <div style="" align="left">
            <div style="">
                <div class="GOHoverPanelBackground GOCursorBackground" style="position: absolute;
                    top: 317px; left: 4px; height: 18px; width: 27px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBackground GOCursorBackground" style="position: absolute; top: 317px;
                    left: 31px; height: 18px; width: 62px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBackground GOCursorBackground" style="position: absolute; top: 127px;
                    left: 355px; height: 18px; width: 1px; display: none;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBackground GOCursorBackground" style="position: absolute; top: 317px;
                    left: 355px; height: 18px; width: 1030px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
            </div>
        </div>
        <div style="" align="left">
            <div style="">
                <div class="GOHoverRowBorder GOCursorBorderLeft" style="position: absolute; height: 18px;
                    left: 4px; top: 317px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBorder GOCursorBorderRight" style="position: absolute; height: 18px;
                    left: 1385px; top: 317px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBorder GOCursorBorderTop" style="position: absolute; width: 1381px;
                    left: 4px; top: 317px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverRowBorder GOCursorBorderBottom" style="position: absolute; width: 1381px;
                    left: 4px; top: 335px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
            </div>
        </div>
        <div style="" align="left">
            <div style="">
                <div class="GOHoverCellBorder GOCursorBorderLeft" style="position: absolute; height: 22px;
                    left: 91px; top: 315px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverCellBorder GOCursorBorderRight" style="position: absolute; height: 22px;
                    left: 355px; top: 315px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverCellBorder GOCursorBorderTop" style="position: absolute; width: 264px;
                    left: 92px; top: 315px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
                <div class="GOHoverCellBorder GOCursorBorderBottom" style="position: absolute; width: 264px;
                    left: 92px; top: 335px;">
                    <div style="height: 0px; overflow: hidden;">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form name="aspnetForm" method="post" action="dashboard/custom/ProjectDashboard/ProjectDashboard.aspx?ProjectCode=&amp;ReturnTrail=%26%257e%252fags_gettingstarted.aspx%26Getting%2bStarted"
    id="aspnetForm">
    <div>
        <input name="hdnPostbackValue" id="hdnPostbackValue" value="" type="hidden">
        <input name="__EVENTTARGET" id="__EVENTTARGET" value="" type="hidden">
        <input name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" type="hidden">
        <input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE5Mzk2MzI0MjZkZB6zY2tacX59Pi33Va/nnuoADcpA"
            type="hidden">
    </div>

    <script type="text/javascript">
//<![CDATA[
    var theForm = document.forms['aspnetForm'];
    if (!theForm) {
        theForm = document.aspnetForm;
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

    <script src="../../Scripts/common/WebResorce.js" type="text/javascript"></script>

    <script src="../../Scripts/common/ProjectDashboard.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbOptionList.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbScrollableTable.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbSplitter.js" type="text/javascript"></script>

    <script type="text/javascript">
//<![CDATA[
    function ProjectDashboard_AddProject() {
        __doPostBack('__Page', 'AddProject');
    }
    function ProjectDashboard_AddChildProject() {
        __doPostBack('__Page', 'AddChildProject');
    }
    function ProjectDashboard_CloneProject() {
        __doPostBack('__Page', 'CloneProject');
    }
    function ProjectDashboard_EditProject() {
        __doPostBack('__Page', 'EditProject');
    }
    function ProjectDashboard_ViewSupply() {
        __doPostBack('__Page', 'ViewSupply');
    }
    function ProjectDashboard_RecalcActuals() {
        __doPostBack('__Page', 'RecalcActuals');
    }
    function ProjectDashboard_AddMilestone() {
        __doPostBack('__Page', 'AddDeliverable');
    }
    function ProjectDashboard_AddRisk() {
        __doPostBack('__Page', 'AddRisk');
    }
    function ProjectDashboard_AddIssue() {
        __doPostBack('__Page', 'AddIssue');
    }
    function ProjectDashboard_selectProject(projectCode) {
        document.getElementById('hdnPostbackValue').value = projectCode;
        __doPostBack('__Page', 'SelectProject');
    }
    function ProjectDashboard_DeliverableImport() {
        __doPostBack('__Page', 'DeliverableImport');
    }
    function ProjectDashboard_RiskIssueImport(riskType) {
        document.getElementById('hdnPostbackValue').value = riskType;
        __doPostBack('__Page', 'RiskIssueImport');
    }
    function ProjectDashboard_AddProfile() {
        __doPostBack('__Page', 'AddProfile');
    }
//]]>
</script>

    <script src="../../Scripts/common/dsh_dashboard.master.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_popupwindow.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_menulist.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_pickbox.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbLibrary.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_tabstripheader.js" type="text/javascript"></script>

    <script type="text/javascript">
//<![CDATA[
    var ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate = {
        getDate: function () {
            return { 'day': this.getDay(), 'month': this.getMonth(), 'year': this.getYear() };
        },
        getDay: function () {
            return this.day() ? this.day().value : null;
        },
        getMonth: function () {
            return this.month().value;
        },
        getYear: function () {
            return this.year().value;
        },
        getOADate: function () {
            return com_dateinput_getOADate('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbDayUS', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbMonth', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_txtYear');
        },
        day: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbDayUS') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbDayUS') : null;
        },
        month: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbMonth');
        },
        year: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_txtYear');
        },
        time: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_txtTime');
        },
        selectLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgSelect') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgSelect') : null;
        },
        todayLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgToday') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgToday') : null;
        },
        clearDateLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgClearDate') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgClearDate') : null;
        },
        nowLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgNow') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgNow') : null;
        },
        clearTimeLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgClearTime') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgClearTime') : null;
        },
        setDisabled: function (val) {
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
//]]>
</script>

    <script src="../../Scripts/common/com_dateinput.js" type="text/javascript"></script>

    <script type="text/javascript">
//<![CDATA[
    var ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate = {
        getDate: function () {
            return { 'day': this.getDay(), 'month': this.getMonth(), 'year': this.getYear() };
        },
        getDay: function () {
            return this.day() ? this.day().value : null;
        },
        getMonth: function () {
            return this.month().value;
        },
        getYear: function () {
            return this.year().value;
        },
        getOADate: function () {
            return com_dateinput_getOADate('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbDayUS', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbMonth', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_txtYear');
        },
        day: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbDayUS') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbDayUS') : null;
        },
        month: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbMonth');
        },
        year: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_txtYear');
        },
        time: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_txtTime');
        },
        selectLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgSelect') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgSelect') : null;
        },
        todayLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgToday') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgToday') : null;
        },
        clearDateLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgClearDate') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgClearDate') : null;
        },
        nowLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgNow') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgNow') : null;
        },
        clearTimeLink: function () {
            return document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgClearTime') ? document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgClearTime') : null;
        },
        setDisabled: function (val) {
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
//]]>
</script>

    <script src="../../Scripts/common/GridE.js" type="text/javascript"></script>

    <script type="text/javascript">
//<![CDATA[
    function TreeGridControl_OnDataReceived(d, c) { if (c && c.T) { clearTimeout(c.T); c.T = null }; c.G.AddDataFromServer(d); if (c.G.IO.Focused) TreeGridControl_Focus(c.G, c.G.IO.Focused, c.G.IO.FocusedCol); Grids.Alert = 1; if (c.G.IO.Message) { c.G.HideMessage(); alert(c.G.IO.Message); } Grids.Alert = 0; var r = c.G.IO.Result; var fn = function () { c.G.HideMessage(); if (c.f) { if (r) { c.f(r); } else { c.f(0); } } }; if (c.G.IO.Reload == 1) { c.G.Source.Data.Url = 'aecReloadData'; if (c.G.RowCount > c.G.SynchroCount) { c.G.ShowMessage('Updating...'); c.G.ReloadBody(fn); } else { c.G.ReloadBody(); fn(); } } else { fn(); } }; function TreeGridControl_Callback(d, c) { if (c && c.T) { clearTimeout(c.T); c.T = null }; if (d != '') { var fn = function () { TreeGridControl_OnDataReceived(d, c); }; setTimeout(fn, 100); } }; function TreeGridControl_Timeout(c) { Grids.Alert = 1; c.G.HideMessage(); alert('Unable to communicate with server. Timeout expired.'); Grids.Alert = 0; if (c.f) c.f(-1); }; function TreeGridControl_Focus(g, r, c) { var row = g.GetRowById(r); if (row) { var did = Get(row, 'Detail'); d = Grids[did]; if (d && (d.Loading || d.Rendering == undefined || d.Rendering)) { var fn = function () { TreeGridControl_Focus(g, r, c); }; setTimeout(fn, 100); } else { g.Focus(row, c, null, true); } } } var ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks = {}; ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.uploadChanges = function (fn) { var grd = Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks']; var d = grd.GetXmlData('Changes,Gantt,Expanded,Defaults', ''); grd.ShowMessage('Uploading...'); WebForm_DoCallback('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$tgTasks', 'aecUpload:' + d, TreeGridControl_Callback, { G: grd, f: function (result) { if (result >= 0) grd.AcceptChanges(); if (fn) fn(result); } }, null, true) }; ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.reload = function (focus) { var grd = Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks']; var fid; if (grd.FRow) fid = Get(grd.FRow, 'id'); var fcol = grd.FCol; grd.Source.Data.Url = 'aecReload'; var newg = grd.Reload(null, null, false); if (focus) { var T = this; T.Reload = 1; var fn = function (G) { TreeGridControl_Focus(G, fid, fcol); T.Reload = 0; DelEvent('OnRenderFinish', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks', fn); }; AddEvent('OnRenderFinish', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks', fn); } }; ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.reloadData = function (fn) { var grd = Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks']; grd.Source.Data.Url = 'aecReloadData'; grd.ReloadBody(fn); }; var ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments = {}; ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments.uploadChanges = function (fn) { var grd = Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments']; var d = grd.GetXmlData('Changes,Gantt,Expanded,Defaults', ''); grd.ShowMessage('Uploading...'); WebForm_DoCallback('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$tgAssignments', 'aecUpload:' + d, TreeGridControl_Callback, { G: grd, f: function (result) { if (result >= 0) grd.AcceptChanges(); if (fn) fn(result); } }, null, true) }; ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments.reload = function (focus) { var grd = Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments']; var fid; if (grd.FRow) fid = Get(grd.FRow, 'id'); var fcol = grd.FCol; grd.Source.Data.Url = 'aecReload'; var newg = grd.Reload(null, null, false); if (focus) { var T = this; T.Reload = 1; var fn = function (G) { TreeGridControl_Focus(G, fid, fcol); T.Reload = 0; DelEvent('OnRenderFinish', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments', fn); }; AddEvent('OnRenderFinish', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments', fn); } }; ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments.reloadData = function (fn) { var grd = Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments']; grd.Source.Data.Url = 'aecReloadData'; grd.ReloadBody(fn); };//]]>
</script>

    <div>
        <input name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEQL4jd4/Asm/k5UGAu7iyfMBAvOS6JgMAqOtqMcOAv+aoOIKAv+kku8KAtCIxLUCAsryoIQDAoWKo5kLAtmiiJQDAqzgkMsNAujp5f4NApHGkqUGApzi/psCApW4u9QMArafrqQNMOzAteJXJDtIg0Gai4kEmfjFKtM="
            type="hidden">
    </div>

    <script type="text/javascript">

        if (window.top.siteNavigation_selectTab) {
            window.top.siteNavigation.doSelectItem('DASHBOARD-PROJECT');
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

                aecWebForm.onsubmit = function () {

                    if (m_blnIsWebFormLoaded == true && m_blnIsWebFormSubmitting == false) {
                        if (fnFormSubmit && (fnFormSubmit.call() == false)) {
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

                    for (var intIndex = 0; intIndex < colChildNodes.length; intIndex++) {
                        if (colChildNodes[intIndex].getAttribute('aecIsSelected') == '1') {
                            aintElements.push(parseInt(colChildNodes[intIndex].getAttribute('aecIndex')));
                        }
                    }

                    if (aintElements.length > 0) {
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
                            toolbarItem.childNodes[1].src = '../../Content/images/common/menuitem_dropdown_inactive.gif';

                        } else {
                            dsh_dashboardmaster_hideMenu();

                            toolbarItem.className = 'tbWrap';
                            //getParentNode(toolbarItem).className = 'tbWrap';
                            toolbarItem.childNodes[1].src = '../../Content/images/common/menuitem_dropdown_active.gif';
                        }
                    }
                }


                function dsh_dashboardmaster_showMenu(e, menu, toolbarItem) {

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
                        com_menulist_movebox(toolbarItem, menu, 'right');
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
                        getFirstChild(item).src = '../../Content../../Content/images/common/common/menuitem_blank.gif';
                        item.setAttribute('aecIsSelected', '0');
                    } else {
                        getFirstChild(item).src = '../../Content../../Content/images/common/common/menuitem_selected.gif';
                        item.setAttribute('aecIsSelected', '1');
                    }

                    getLastChild(item).value = item.getAttribute('aecIsSelected');
                    cancelEvent(oEvent);
                }


                var dashboardMaster = {

                    showPrintPreview: function (items) {


                        window.open('/dashboard/custom/ProjectDashboard/ProjectDashboard.aspx?Code=PROJECT&media=1&elements=' + urlEncode(items));

                    },

                    showExcelPreview: function (items) {


                        window.open('/dashboard/custom/ProjectDashboard/ProjectDashboard.aspx?Code=PROJECT&media=2&elements=' + urlEncode(items));

                    },

                    getElementIndex: function (code) {

                        var intReturnValue = -1;

                        switch (code) {

                            case 'Task':
                                intReturnValue = 0;
                                break;


                            case 'Risks':
                                intReturnValue = 1;
                                break;


                            case 'RisksDetail':
                                intReturnValue = 2;
                                break;


                            case 'Issues':
                                intReturnValue = 3;
                                break;


                            case 'IssuesDetail':
                                intReturnValue = 4;
                                break;


                            case 'PR6':
                                intReturnValue = 5;
                                break;


                            case 'PR4':
                                intReturnValue = 6;
                                break;


                            case 'PR5':
                                intReturnValue = 7;
                                break;


                            case 'PR2':
                                intReturnValue = 8;
                                break;


                            case 'Billing':
                                intReturnValue = 9;
                                break;


                            case 'Approval':
                                intReturnValue = 10;
                                break;


                            case 'Reports':
                                intReturnValue = 11;
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

                    while (obj.offsetParent) {
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

                    ctop += owner.offsetHeight;

                    // Handle Internet Explorer body margins,
                    // which affect normal document, but not
                    // absolute-positioned stuff.
                    if (document.body.currentStyle &&
                        document.body.currentStyle['marginTop']) {

                        ctop += parseInt(
                            document.body.currentStyle['marginTop']);

                    }

                    box.style.top = ctop + 'px';

                }

            </script>

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
                                                                    Project:
                                                                    <input name="ctl00$phToolbar$pbxProject$txtValue" id="ctl00_phToolbar_pbxProject_txtValue"
                                                                        class="textBox" maxlength="20" value="PROJECT1" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phToolbar_pbxProject_lnkSelect', 'ctl00_phToolbar_pbxProject_lnkRefresh', true);"
                                                                        type="text">
                                                                    <a id="ctl00_phToolbar_pbxProject_lnkSelect" title="Select" href="javascript:__doPostBack('ctl00$phToolbar$pbxProject$lnkSelect','')">
                                                                        <img src="../../Content/images/common/pick.gif" alt="Select" border="0"></a>&nbsp;
                                                                    <div id="ctl00_phToolbar_pbxProject_divDescription" style="display: inline;">
                                                                        | Demonstration Project</div>
                                                                    <input name="ctl00$phToolbar$pbxProject$hdnDescription" id="ctl00_phToolbar_pbxProject_hdnDescription"
                                                                        value="Demonstration Project" type="hidden">
                                                                </td>
                                                                <td align="left">
                                                                    &nbsp;
                                                                </td>
                                                                <td id="tdMyProjects" style="white-space: nowrap;" onclick="this.style.cursor='pointer'; displayHierarchyPopup(event, 'tdMyProjects','divMyProjects','ifrmMyProjects');"
                                                                    onmouseover="this.style.cursor='hand';" onmouseout="this.style.cursor='pointer';"
                                                                    align="left">
                                                                    <div id="divMyProjects" class="tabPopupMenu" onclick="this.style.cursor='pointer'; displayHierarchyPopup(event, 'tdMyProjects','divMyProjects','ifrmMyProjects');"
                                                                        style="z-index: 99; padding: 3px; overflow: auto; margin: 1em 0em 3em 3em; position: absolute;
                                                                        left: 0px; top: 0px; background-color: rgb(255, 255, 255); visibility: hidden;
                                                                        border: 1px solid rgb(153, 153, 153); width: 325px; max-height: 400px;">
                                                                        <table border="0" cellpadding="0" cellspacing="0">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <table border="0" cellpadding="2" cellspacing="0">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td class="normal" style="font-weight: bold;">
                                                                                                        <a href="Javascript:ProjectDashboard_selectProject('PROJECT1')">PROJECT1 - Demonstration
                                                                                                            Project </a>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <img src="../../Content../../Content/images/common/common/myprojects.gif" alt=""
                                                                        style="border: medium none; vertical-align: middle;" title="Click to display Projects where I am the Project Manager">
                                                                    <img src="../../Content../../Content/images/common/common/arrowdown_grey.gif" alt=""
                                                                        style="border: medium none; vertical-align: middle;" title="Click to display Projects where I am the Project Manager">
                                                                    <img src="../../Content../../Content/images/common/common/space.gif" style="border-width: 0px;"
                                                                        alt="" width="3px" height="0px">
                                                                </td>
                                                                <td>
                                                                    <input class="button" value="Edit" onclick="javascript:ProjectDashboard_EditProject()"
                                                                        type="submit">
                                                                </td>
                                                                <td>
                                                                    <input class="button" value="Add" onclick="javascript:ProjectDashboard_AddProject()"
                                                                        type="submit">
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
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
                                                                    &nbsp;<div class="toolbarDropDown" id="mnuPrintPreview" onmousedown="cancelEvent(event);"
                                                                        style="display: none; z-index: 11;">
                                                                        <ul id="ulPrintPreview">
                                                                            <li class="tbItem" aecindex="1" aecisselected="1" onmouseover="this.className='tbItemFocus'"
                                                                                onmouseout="this.className='tbItem'" onclick="dsh_dashboardmaster_toggleSelection(event, this);">
                                                                                <img class="tbIcon" src="../../Content/images/common/menuitem_selected.gif">
                                                                                <span class="tbText">Risks Summary </span>
                                                                                <input name="hdnPrintPreview" value="1" type="hidden">
                                                                            </li>
                                                                            <li class="tbItem" aecindex="2" aecisselected="1" onmouseover="this.className='tbItemFocus'"
                                                                                onmouseout="this.className='tbItem'" onclick="dsh_dashboardmaster_toggleSelection(event, this);">
                                                                                <img class="tbIcon" src="../../Content/images/common/menuitem_selected.gif">
                                                                                <span class="tbText">Risks Details </span>
                                                                                <input name="hdnPrintPreview" value="1" type="hidden">
                                                                            </li>
                                                                            <li class="tbItem" aecindex="3" aecisselected="1" onmouseover="this.className='tbItemFocus'"
                                                                                onmouseout="this.className='tbItem'" onclick="dsh_dashboardmaster_toggleSelection(event, this);">
                                                                                <img class="tbIcon" src="../../Content/images/common/menuitem_selected.gif">
                                                                                <span class="tbText">Issues Summary </span>
                                                                                <input name="hdnPrintPreview" value="1" type="hidden">
                                                                            </li>
                                                                            <li class="tbItem" aecindex="4" aecisselected="1" onmouseover="this.className='tbItemFocus'"
                                                                                onmouseout="this.className='tbItem'" onclick="dsh_dashboardmaster_toggleSelection(event, this);">
                                                                                <img class="tbIcon" src="../../Content/images/common/menuitem_selected.gif">
                                                                                <span class="tbText">Issues Details </span>
                                                                                <input name="hdnPrintPreview" value="1" type="hidden">
                                                                            </li>
                                                                            <li class="tbItem" aecindex="9" aecisselected="1" onmouseover="this.className='tbItemFocus'"
                                                                                onmouseout="this.className='tbItem'" onclick="dsh_dashboardmaster_toggleSelection(event, this);">
                                                                                <img class="tbIcon" src="../../Content/images/common/menuitem_selected.gif">
                                                                                <span class="tbText">Billing Contracts </span>
                                                                                <input name="hdnPrintPreview" value="1" type="hidden">
                                                                            </li>
                                                                            <li class="tbItem" aecindex="10" aecisselected="1" onmouseover="this.className='tbItemFocus'"
                                                                                onmouseout="this.className='tbItem'" onclick="dsh_dashboardmaster_toggleSelection(event, this);">
                                                                                <img class="tbIcon" src="../../Content/images/common/menuitem_selected.gif">
                                                                                <span class="tbText">Approval </span>
                                                                                <input name="hdnPrintPreview" value="1" type="hidden">
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td class="" style="padding-left: 2px; padding-right: 4px;" align="right" valign="middle">
                                                                    &nbsp;</td>
                                                                <td class="" style="padding-right: 10px;" align="right" valign="middle">
                                                                    &nbsp;</td>
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
                        </tbody>
                    </table>
                    <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                </td>
            </tr>
        </tbody>
    </table>
    <div style="padding: 0px;">
        <table id="tabTablectl00_ucTabStrip" style="border: medium none; width: 100%;" class="dashboardTabStrip"
            cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td id="ctl00_ucTabStrip_tdStretch" align="left">
                        <div id="ctl00_ucTabStrip_divTabContainer" style="overflow: hidden;">
                            <table id="ctl00_ucTabStrip_tabStrip" border="0" cellpadding="0" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace"
                                                width="5" height="1">
                                        </td>
                                        <td class="dashboardTabSelected" nowrap="nowrap">
                                            Tasks
                                                                              Tasks
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace0"
                                                width="1" height="1">
                                        </td>
                                        
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace1"
                                                width="1" height="1">
                                        </td>
                                        <td class="dashboardTabOff" onmouseover="this.className='dashboardTabOn';" onmouseout="this.className='dashboardTabOff';"
                                            onclick="__doPostBack('ctl00$ucTabStrip','Issues')" nowrap="nowrap">
                                            Issues
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace2"
                                                width="1" height="1">
                                        </td>
                                       
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace3"
                                                width="1" height="1">
                                        </td>
                                        <td class="dashboardTabOff" onmouseover="this.className='dashboardTabOn';" onmouseout="this.className='dashboardTabOff';"
                                            onclick="__doPostBack('ctl00$ucTabStrip','PR4')" nowrap="nowrap">
                                            Documents
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace4"
                                                width="1" height="1">
                                        </td>
                                       
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace5"
                                                width="1" height="1">
                                        </td>
                                        <td class="dashboardTabOff" onmouseover="this.className='dashboardTabOn';" onmouseout="this.className='dashboardTabOff';"
                                            onclick="__doPostBack('ctl00$ucTabStrip','PR2')" nowrap="nowrap">
                                            Status Reporting
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace6"
                                                width="1" height="1">
                                        </td>
                                       
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace7"
                                                width="1" height="1">
                                        </td>
                                      
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace8"
                                                width="1" height="1">
                                        </td>
                                        <td class="dashboardTabOff" onmouseover="this.className='dashboardTabOn';" onmouseout="this.className='dashboardTabOff';"
                                            onclick="__doPostBack('ctl00$ucTabStrip','Reports')" nowrap="nowrap">
                                            Reports
                                        </td>
                                        <td class="dashboardTabTail" align="left" valign="middle" width="100%" nowrap="nowrap">
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
            </tbody>
        </table>
        <table id="ctl00_tblMain" style="padding: 3px; border-top: 1px solid rgb(153, 153, 153);
            border-collapse: collapse;" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td style="border: medium none; margin: 0px; border-collapse: collapse;" align="left"
                        valign="top" width="100%">
                        <table style="border: medium none; border-collapse: collapse; margin: 0px; padding: 0px;"
                            border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td style="padding: 2px; width: 100%;" colspan="1" rowspan="1" align="left" valign="top">
                                        <div id="ctl00_dsh_dashboard_divElementTask" style="padding: 0px; overflow: auto;
                                            border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237);
                                            height: 263px; width: 1400px;">

                                            <script type="text/javascript">

    var blnDisplayedBefore = false

    function showImport() {
        if (ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.IsCheckedOut()) {
            if (blnDisplayedBefore == false) {
                //temp - we only ever want to run this once. 
                blnDisplayedBefore = true
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.ImportPlan();
            }
        }
    }

</script>

                                            <link rel="stylesheet" type="text/css" href="/common/toolbar.css">
                                            <style type="text/css">
                                                .summary
                                                {
                                                    font-weight: bold;
                                                }
                                            </style>

                                            <script type="text/javascript">

    var ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan = {

        Tasks: function () {
            return Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks'];
        },


        onTaskChanged: function (grid, row, col, val) {
            if (row.Def.Name == 'Task') {
                if (!Is(row, 'Emp')) {
                    if (col == 'From') {
                        if (val && Is(row, 'From')) {
                            row.aecOldFrom = Get(row, 'From');
                        } else {
                            row.aecOldFrom = null;
                        }
                    } else if (col == 'To') {
                        if (val && Is(row, 'To')) {
                            row.aecOldTo = Get(row, 'To');
                        } else {
                            row.aecOldTo = null;
                        }
                        if (!Is(row, 'From')) {
                            val = grid.RoundGanttDate(val, 9, null, 'G', 'd');
                        }
                    }
                } else {
                    if (col == 'Days' || col == 'Dur') {
                        if (val == 0) {
                            val = '';
                        }
                    }
                }
            }
            return val;
        },

        onAfterTaskChanged: function (grid, row, col, val) {

            if (row.Def.Name == 'Task') {
                if (Is(row, 'Emp')) {
                    grid.StartUpdate();
                    if (col != 'Dur') {
                        if (grid.CheckGantt(row, 'Dur', 1)) {
                            grid.SetValue(row, 'Dur', 1);
                        }
                    }
                    if (col == 'From') {
                        if (grid.CheckGantt(row, 'MinFrom', val)) {
                            grid.SetValue(row, 'MinFrom', val);
                            grid.CorrectDependencies(row, 'G');
                        }
                        row.aecOldFrom = null;
                    } else {
                        var v = grid.GetGanttBase();
                        if (grid.CheckGantt(row, 'From', v)) {
                            grid.SetValue(row, 'From', v);
                        }
                    }
                    if (col == 'To') {
                        if (grid.CheckGantt(row, 'MinTo', val)) {
                            grid.SetValue(row, 'MinTo', val);
                            grid.CorrectDependencies(row, 'G');
                        }
                        row.aecOldTo = null;
                    }
                    if (col != 'Days') {
                        grid.SetValue(row, 'Days', 0);
                    }
                    if (col != 'Pc') {
                        if (grid.CheckGantt(row, 'Pc', 0)) {
                            grid.SetValue(row, 'Pc', 0);
                        }
                    }
                    if (col == 'Pre') {
                        grid.CorrectDependencies(row, 'G');
                    }
                    grid.SetValue(row, 'Emp', 0);
                    grid.RefreshRow(row);

                    if (!grid.GetNextVisible(row)) {
                        grid.AddRow(null, null, true);
                    }
                    grid.EndUpdate();
                } else {
                    if (col == 'From') {
                        if (grid.CheckGantt(row, 'MaxFrom', null)) {
                            grid.SetValue(row, 'MaxFrom', null);
                        }
                        if (grid.CheckGantt(row, 'MinTo', null)) {
                            grid.SetValue(row, 'MinTo', null);
                        }
                        if (grid.CheckGantt(row, 'MaxTo', null)) {
                            grid.SetValue(row, 'MaxTo', null);
                        }
                        if (grid.CheckGantt(row, 'MinFrom', val)) {
                            grid.SetValue(row, 'MinFrom', val, true);
                        }
                        if (rescheduleAssignments() && row.aecOldFrom) {
                            grid.RefreshDetail();
                            val = Get(row, 'From');
                            if (val) {
                                doMoveAssignments(row, val, row.aecOldFrom);
                            }
                        }
                        grid.CorrectDependencies(row, 'G');

                        row.aecOldFrom = null;

                    } else if (col == 'To' && !Is(row, 'From')) {

                        if (grid.CheckGantt(row, 'MaxFrom', null)) {
                            grid.SetValue(row, 'MaxFrom', null);
                        }
                        if (grid.CheckGantt(row, 'MinTo', null)) {
                            grid.SetValue(row, 'MinTo', null);
                        }
                        if (grid.CheckGantt(row, 'MaxTo', null)) {
                            grid.SetValue(row, 'MaxTo', null);
                        }
                        if (grid.CheckGantt(row, 'MinFrom', val)) {
                            grid.SetValue(row, 'MinFrom', val);
                        }

                        if (rescheduleAssignments() && row.aecOldTo) {
                            grid.RefreshDetail();
                            val = Get(row, 'To');
                            if (val) {
                                doMoveAssignments(row, val, row.aecOldTo);
                            }
                        }
                        grid.CorrectDependencies(row, 'G');

                        row.aecOldTo = null;
                    } else if (col == 'Dur' && val == 0) {
                        if (Is(row, 'From') && !Is(row, 'To')) {
                            if (grid.CheckGantt(row, 'To', Get(row, 'From'))) {
                                grid.SetValue(row, 'To', Get(row, 'From'), true);
                            }
                            if (grid.CheckGantt(row, 'From', '')) {
                                grid.SetValue(row, 'From', '', true);
                            }
                        }
                    }
                }
            }
        },

        onGanttChanged: function (grid, row, col, item, new1, new2, old1, old2, action) {

            if (item == 'Main' || item == 'Milestone') {
                if (action == 'New' || action == 'Move') {
                    if (new1 != Get(row, 'MinFrom')) {
                        if (grid.CheckGantt(row, 'MaxFrom', null)) {
                            grid.SetValue(row, 'MaxFrom', null);
                        }
                        if (grid.CheckGantt(row, 'MinTo', null)) {
                            grid.SetValue(row, 'MinTo', null);
                        }
                        if (grid.CheckGantt(row, 'MaxTo', null)) {
                            grid.SetValue(row, 'MaxTo', null);
                        }
                        var val;
                        if (Is(row, 'To') && !Is(row, 'From')) {
                            val = grid.RoundGanttDate(new1, 9, null, col, 'd');
                            if (grid.CheckGantt(row, 'MinFrom', val)) {
                                grid.SetValue(row, 'MinFrom', val);
                            }
                            if (grid.CheckGantt(row, 'To', val)) {
                                grid.SetValue(row, 'To', val);
                            }
                        } else {
                            val = new1;
                            if (grid.CheckGantt(row, 'MinFrom', val)) {
                                grid.SetValue(row, 'MinFrom', val);
                            }
                        }
                        if (rescheduleAssignments()) {
                            doMoveAssignments(row, val, old1);
                        }
                        grid.CorrectDependencies(row, 'G')
                        grid.RefreshRow(row);
                    }
                }
                if (action == 'New') {
                    if (row.Def.Name == 'Task' && Get(row, 'Emp')) {
                        grid.StartUpdate();
                        if (grid.CheckGantt(row, 'Pc', 0)) {
                            grid.SetValue(row, 'Pc', 0);
                        }
                        grid.SetValue(row, 'Emp', 0);
                        grid.RefreshRow(row);
                        grid.EndUpdate();
                    }
                } else if (action == 'Correct') {
                    if (Is(row, 'To') && !Is(row, 'From')) {
                        var minFrom = Get(row, 'MinFrom');
                        var maxTo = Get(row, 'MaxTo');
                        var base = grid.GetGanttBase();
                        if (minFrom && (new2 < minFrom)) {
                            if (grid.CheckGantt(row, 'To', minFrom)) {
                                grid.SetValue(row, 'To', minFrom, true);
                                new1 = minFrom;
                            }
                        }
                        else if (maxTo && (new2 > maxTo)) {
                            if (grid.CheckGantt(row, 'To', maxTo)) {
                                grid.SetValue(row, 'To', maxTo, true);
                                new1 = maxTo;
                            }
                        }
                        else if (base && (new2 < base)) {
                            if (grid.CheckGantt(row, 'To', base)) {
                                grid.SetValue(row, 'To', base, true);
                                new1 = base; ;
                            }
                        }
                    }

                    if (rescheduleAssignments()) {
                        doMoveAssignments(row, new1, old1);
                    }
                }
            }

        },


        onCheckDependencies: function (grid, row, col, val) {

            return true;
        },


        onReady: function (grid) {

            var id = ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditTaskID;
            if (id) {
                var row = grid.GetRowById(id);
                if (row) grid.CorrectDependencies(row, 'G');
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditTaskID = null;
            } else if (ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.CorrectAll) {
                grid.ActionCorrectAllDependencies();
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.CorrectAll = null;
            }
            ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.GanttBase = grid.GetGanttBase();


            if (!ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.onReady_Complete) {
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.onReady_Complete = 1;

            }

        },

        onAssignmentChanged: function (grid, row, col, val) {
            var trow = Tasks().GetRowById(row.id);
            var c = Tasks().Cols['G'].GanttCheckExclude;
            Tasks().Cols['G'].GanttCheckExclude = 0;
            if (col == 'ResC') {
                return val.toUpperCase();
            } else if (col == 'Dur') {
                if (Tasks().CheckGantt(trow, 'Dur', val)) {
                    Tasks().SetValue(trow, 'Dur', val)
                }
                val = Get(trow, 'Dur');
            } else if (col == 'From') {
                if (Tasks().CheckGantt(trow, 'From', val)) {
                    Tasks().SetValue(trow, 'From', val)
                }
                val = Get(trow, 'From');
            } else if (col == 'To') {

                if (Tasks().CheckGantt(trow, 'To', val)) {
                    Tasks().SetValue(trow, 'To', val)
                }
                val = Get(trow, 'To');
            }
            Tasks().Cols['G'].GanttCheckExclude = c;
            return val;
        },

        onAfterAssignmentChanged: function (grid, row, col, val) {

            if (col == 'ResC') {
                updateResDescription(row);
            }
        },

        onStartDrag: function (grid, row, col, more) {
            if (Get(row, 'Emp')) {
                return true;
            }
        },

        onCanDrop: function (grid, row, togrid, torow, type, copy) {
            if (Get(row, 'Emp') || (Get(torow, 'Emp') && type == 2)) {
                return 0;
            } else if (Get(torow, 'Expanded') && type == 2) {
                return 0;
            } else if (Get(torow, 'Expanded') && type == 3) {
                if (row.parentNode == torow) {
                    return 0;
                } else {
                    return type;
                }
            } else {
                return type;
            }
        },

        onEndDrag: function (grid, row, target, torow, type) {
            var result = type;
            if (torow && (type != 0)) {
                var oldParent = GetParent(row);
                var oldNext = row.nextSibling;
                if (type == 2) {
                    if (makeChild(torow, row)) {
                        result = 0;
                    } else {
                        return 0;
                    }
                } else if (type == 1) {
                    grid.StartUpdate();
                    Tasks().MoveRows(row, torow, 1);
                    grid.EndUpdate()
                    result = 0;
                } else if (type == 3) {
                    grid.StartUpdate();
                    if (Get(torow, 'Expanded')) {
                        Tasks().MoveRow(row, torow, torow.firstChild, true);
                    } else {
                        Tasks().MoveRows(row, torow, 3);
                    }
                    grid.EndUpdate();
                    result = 0;
                }
                if (oldParent) {
                    if (!GetFirstChild(oldParent)) {
                        grid.StartUpdate();
                        Tasks().ChangeDef(oldParent, 'Task', 1, 0);
                        Tasks().SetValue(oldParent, 'Typ', 'Task', true);
                        //Tasks().SetValue(oldParent,'Pc',0,true);                      
                        var parent = oldParent
                        var row = oldParent.firstChild;
                        while (row) {
                            Tasks().MoveRows(row, parent, 3);
                            parent = row;
                            row = oldParent.firstChild;
                        }
                        grid.EndUpdate();
                    }
                    grid.CorrectDependencies(oldParent, 'G');
                }
                grid.CorrectDependencies(row, 'G');
            }
            return result;
        },


        onShowContextMenu: function (grid, row, col, menu) {

            if (Get(row, 'id') == 'ID') return 'Choose Columns...';
            if ((grid.GetSelRows().length < 2) || !grid.FRow) {
                grid.ActionFocusRow();
            }

            if (Get(row, 'Typ') == 'Summary' || grid.GetSelRows().length > 1) {
                menu = menu.replace("Name:'AddAssign',", "Name:'AddAssign',Disabled:1,");
            }
            return menu;


        },


        onContextMenu: function (grid, row, col, result) {
            if (result == 'Choose Columns...') {
                grid.ActionShowColumns();
            } else if (result == 'Scroll To Task') {
                GoToTask();
            }
        },


        onShowGanttMenu: function (grid, row, col, menu) {

            if (Get(row, 'id') == 'ID') return true;
            if ((grid.GetSelRows().length < 2) || !grid.FRow) {
                grid.ActionFocusRow();
            }

            menu.Items.length = 13;
            if (Get(row, 'Typ') == 'Summary' || grid.GetSelRows().length > 1) {
                menu.Items[8].Disabled = 1;
            }


        },

        onFocus: function (grid, row, col, orow, ocol) {

            if (row) {
                grid.ActionClearSelection();
                if (Get(row, 'Typ') == 'Summary') {
                    grid.RefreshDetail(null, true);
                }
            }

        },

        onSelect: function (grid, row, deselect) {
            if (!deselect) {
                if (grid.GetSelRows().length == 0) {
                    grid.ActionFocusRow();
                }
            } else {
                if (row == grid.FRow) {
                    if (grid.GetSelRows().length > 1) {
                        grid.FRow = null;
                    }
                }
            }
        },

        onRightEdit: function (grid, e) {
        },


        onLeftEdit: function (grid, e) {
        },

        onCanRowAdd: function (grid, parent, next) {
            return (!Is(parent, 'Emp') && Get(parent, 'Typ') != 'Task');
        },

        onRowAdd: function (grid, row) {

            if (grid.Loading) return;
            if (row.parentNode && Get(row.parentNode, 'Typ') == 'Task') {
                var task = row.parentNode;

                grid.SetValue(row, 'Ord', Get(task, 'id'));
                grid.SetValue(row, 'Desc', Get(task, 'Desc'));

                var dur = grid.GetValue(task, 'Dur');
                var from = grid.GetValue(task, 'From');
                var to = grid.GetValue(task, 'To');

                grid.SetValue(row, 'Dur', dur);
                grid.SetValue(row, 'From', from);
                grid.SetValue(row, 'To', to);

                var days = dur;
                var effort = grid.GetValue(task, 'Days') - 0;
                var allocated = grid.GetValue(task, 'Alloc') - 0;

                if ((effort) > 0) {
                    grid.SetValue(row, 'Alloc', Math.min(days, (Math.max(effort - allocated, 0))));
                } else {
                    grid.SetValue(row, 'Alloc', days);
                }

                grid.SetValue(row, 'Conf', grid.GetValue(task, 'Conf'));
            }
        },

        onGenerateId: function (grid, row, newid) {

            if (row.parentNode && Get(row.parentNode, 'Typ') == 'Task') {
                grid.SetValue(row, 'Key', (newid * -1));
                newid = row.parentNode.id + '-A' + (newid * -1);
            }
            return newid;

        },

        onGetInputValue: function (grid, row, col, val) {
            return val;
        },

        onRowDelete: function (grid, row, type) {
            if ((type == 1) && (Get(row, 'Typ') != 'Assign')) {
                if (row.Level > 0 && grid.GetFirstVisible(row.parentNode) == grid.GetLastVisible(row.parentNode)) {
                    grid.ChangeDef(row.parentNode, 'Task', 1, 0);
                    grid.SetValue(row.parentNode, 'Typ', 'Task', true);
                    //grid.SetValue(row.parentNode,'Pc',0,true);                
                }
            }

        },

        getWorkingDays: function (from, to) {

            var grid = Tasks();
            if (from && to) {
                days = grid.DiffGanttDate(from, to, 'ms') / grid.Cols['G'].GanttDataUnits;
            } else {
                days = 0;
            }
            return days;

        },


        openPopup: function (operation, id, akey, width, height, callback, context) {
            if (Grids.Alert) return false;
            Grids.Alert = 1;
            var tUrl;
            if (operation == 'PickAssignmentResource') {
                tUrl = '/ags_contextselect.aspx?Mode=DataType&DataType=ResourceRole&DataTypePermission=TaskPlanningMaintain&PageTitle=Select+Assignment+Resource';
            } else if (operation == 'printPlan') {
                tUrl = '/planning/controls/pln_projectplan_print.aspx?Instance=831168091&Zoom=' + Tasks().Cols["G"].GanttZoom.substr(0, Tasks().Cols["G"].GanttZoom.length - 1) + '&From=' + ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate.getOADate() + '&To=' + ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate.getOADate();
            } else if (operation == 'promptCheckout') {
                tUrl = '/planning/controls/pln_projectplan_checkout.aspx?Instance=831168091';
            } else {
                tUrl = '/planning/controls/pln_projectplan_popup.aspx?Instance=831168091&Op=' + operation + '&Id=' + id + '&AKey=' + akey;
            }
            var oWnd = AECWinPopup.open(tUrl, width, height, callback, context, true);
            oWnd.onClose = function () { Grids.Alert = 0; };
        },

        popupEditCallback: function (context, returnValue) {
            if (returnValue) {
                if (context) ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditTaskID = context;
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.reloadData();
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 1;
            }
        },


        reviewCallback: function (context, returnValue) {
            if (returnValue == 2) {
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 0;
                __doPostBack('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'Refresh');
            }
            else if (returnValue) {
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.reloadData();
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 0;
            }
        },


        configCallback: function (context, returnValue) {
            if (returnValue) {
                __doPostBack('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'UpdateConfig');
            }
        },

        exportCallback: function (context, returnValue) {
            if (returnValue) {
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.reloadData();
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 0;
            }
        },

        importCallback: function (context, returnValue) {

            if (returnValue) {
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.reload(true);
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 1;
            }

        },


        promptCheckoutCallback: function (context, returnValue) {
            if (returnValue) {
                CheckOut();
            }

        },


        UploadChanges: function (fn) {
            if (this.HasChanges()) {
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks.uploadChanges(fn);
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 1;
            } else {
                if (fn) fn(0);
            }

        },

        EditOperation: function (operation, taskid, assignmentkey, callback, context) {
            var T = this;
            if (T.Upload) return false;
            T.Upload = 1;
            this.UploadChanges(function (result) { T.Upload = 0; if (result >= 0) T.DoEditOperation(operation, taskid, assignmentkey, callback, context); });
        },

        DoEditOperation: function (operation, taskid, assignmentkey, callback, context) {
            var size = GetWindowSize();
            callback = callback || this.popupEditCallback;
            this.openPopup(operation, taskid, assignmentkey, size[0] - 40, size[1] - 40, callback, context);
        },

        EditTask: function (task, col) {
            if (task && task.id && task.Kind == 'Data') {
                var id = Get(task, 'id');
                var suffix = (col == 'Pre') ? ':Predecessors' : '';

                this.EditOperation('editTask' + suffix, id, 0, null, id);

            }
        },

        EditAssignment: function (assignment) {
            if (assignment && assignment.id && assignment.Kind == 'Data') {
                var tid = Tasks().GetValue(assignment, 'Ord');
                var key = Tasks().GetValue(assignment, 'Key');

                this.EditOperation('editAssignment', tid, key);

            }
        },

        CalculateResEffort: function (assignment) {
            if (assignment) {
                if (Tasks().EditMode) {
                    if (!Tasks().ActionAcceptEdit()) {
                        return false;
                    }
                }
                if (Assignments().EditMode) {
                    if (!Assignments().ActionAcceptEdit()) {
                        return false;
                    }
                }
                var T = this;
                var tid = Tasks().GetValue(assignment, 'Ord');
                var key = Tasks().GetValue(assignment, 'Key');
                var task = Tasks().Rows[tid];
                if (task) {
                    var params = encodeURIComponent(Tasks().GetValue(assignment, 'ResC'));
                    params += '&' + encodeURIComponent(Tasks().GetValue(assignment, 'From'));
                    params += '&' + encodeURIComponent(Tasks().GetValue(assignment, 'To'));
                    params += '&' + encodeURIComponent(Tasks().GetValue(assignment, 'Alloc'));
                    params += '&' + encodeURIComponent(Tasks().GetValue(task, 'Days'));
                    params += '&' + encodeURIComponent(Tasks().GetValue(task, 'Alloc'));
                    WebForm_DoCallback('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'aecGetResEffort:' + params, T.CalculateResEffortCallback, assignment, null, true);
                }
            }
        },

        CalculateResEffortCallback: function (value, row) {

            Assignments().SetValue(row, 'Alloc', value, true);

        },


        SplitAssignment: function (assignment) {
            var T = this;
            var tid = Tasks().GetValue(assignment, 'Ord');
            var key = Tasks().GetValue(assignment, 'Key');
            this.EditOperation('splitAssignment', tid, key);
        },


        MapAssignments: function () {
            this.EditOperation('mapAssignments', 0, 0);
        },

        ImportAGS: function () {
            this.EditOperation('import', 0, 0, this.importCallback);
        },

        ImportPlan: function () {
            this.EditOperation('importPlan', 0, 0, this.importCallback);
        },

        ExportPlan: function () {
            if (this.IsDirty()) {
                alert('The plan must be saved before it can be exported');
            } else {
                this.EditOperation('exportPlan', 0, 0, this.exportCallback);
            }
        },

        ReviewPlan: function () {
            if (this.IsDirty()) {
                alert('The plan must be saved before it can be reviewed');
            } else {
                this.EditOperation('reviewPlan', 0, 0, this.reviewCallback);
            }
        },

        ConfigPlan: function () {

            this.EditOperation('configPlanEdit', 0, 0, this.configCallback);

        },


        PrintPlan: function () {
            if (isNaN(ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate.getOADate())) {
                alert('The Print From date is not valid');
                return false;
            }
            if (isNaN(ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate.getOADate())) {
                alert('The Print To date is not valid');
                return false;
            }
            this.EditOperation('printPlan', 0, 0);
        },


        PromptCheckout: function () {
            this.openPopup('promptCheckout', 0, 0, 600, 300, this.promptCheckoutCallback, null);
        },


        PickAssignmentResource: function (assignment) {
            var size = GetWindowSize();
            this.openPopup('PickAssignmentResource', 0, 0, size[0] - 100, size[1] - 100, this.pickAssignmentResourceCallback, assignment);
        },

        SearchAssignmentResource: function (assignment) {
            var T = this;
            this.UploadChanges(function (result) { if (result >= 0) T.DoSearchAssignmentResource(assignment); });
        },

        DoSearchAssignmentResource: function (assignment) {
            var tid = Assignments().GetValue(assignment, 'Ord');
            var key = Assignments().GetValue(assignment, 'Key');
            var size = GetWindowSize();
            this.openPopup('searchAssignmentResource', tid, key, size[0] - 100, size[1] - 100, this.pickAssignmentResourceCallback, Assignments().FRow);
        },

        pickAssignmentResourceCallback: function (context, returnValue) {
            var assign = context;
            if (assign) {
                if (Assignments().EditMode) {
                    if (Assignments().EndEdit(true) == -1) {
                        Assignments().EndEdit(false);
                    }
                }
                Assignments().SetValue(assign, 'ResC', returnValue, true);
                updateResDescription(assign);
                Assignments().Focus(assign, 'ResC');

            }
        },


        RescheduleAssignments: false,

        RescheduleAssignmentsClass: function () {
            if (this.RescheduleAssignments) {
                return 'toolbaritem_selected';
            } else {
                return 'toolbaritem_off';
            }
        },


        GetParent: function (row) {

            if (row.Level > 0) {
                var level = row.Level - 1;
                row = Tasks().GetPrevVisible(row);
                while (row) {
                    if (row.Level == level && !Is(row, 'Emp') && !row.Deleted) {
                        return row;
                    }
                    row = Tasks().GetPrevVisible(row);
                }
            }
            return null;

        },

        GetFirstChild: function (row) {

            if (Tasks().GetFirstVisible(row)) {
                var level = row.Level + 1;
                row = Tasks().GetFirstVisible(row);
                while (row) {
                    if (row.Level == level && !Is(row, 'Emp') && !row.Deleted) {
                        return row;
                    }
                    row = row.nextSibling;
                }
            }
            return null;
        },

        GetPreviousSibling: function (row) {

            var level = row.Level;
            row = row.previousSibling;
            while (row) {
                if (!Is(row, 'Emp') && !row.Deleted) {
                    return row;
                }
                row = row.previousSibling;
            }
            return null;

        },


        GetNextSibling: function (row) {

            var level = row.Level;
            row = row.nextSibling;
            while (row) {
                if (!Is(row, 'Emp') && !row.Deleted) {
                    return row;
                }
                row = row.nextSibling;
            }
            return null;

        },


        HasChanges: function () {

            return (Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks'].HasChanges() & 1) || (Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks'].GetGanttBase() != this.GanttBase);

        },

        IsDirty: function () {

            return (((document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value - 0) + this.HasChanges()) > 0);

        },

        IsCheckedOut: function () {

            return true;

        }

    }

    function Tasks() {
        return Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks'];
    }

    function Assignments() {
        return Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments'];
    }


    function GetParent(row) {

        return ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.GetParent(row);

    }

    function GetFirstChild(row) {

        return ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.GetFirstChild(row);

    }

    function onSubmit() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.submitting = true;
        return true;
    }

    function showError(message, id, col) {

        if (id) {
            Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks'].Focus(Grids['ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks'].GetRowById(id), col, null, true);
        }
        Grids.Alert = 1;
        alert(message);
        Grids.Alert = 0;
    }




    function getDependencyIDs(val) {

        var GanttDepIdRegExp = /(ss|sf|fs|ff)?([\+\-]\d+[^\!]*)?(\!\d*.*)?$/i;
        val = (val + "").split(';');
        var ids = []

        for (var i = 0; i < val.length; i++) {
            var p = val[i].search(GanttDepIdRegExp);
            ids[i] = [];
            ids[i][0] = val[i].slice(0, p);
            ids[i][1] = val[i];
        }

        return ids;

    }

    function removeDependency(val, id) {

        var ids = getDependencyIDs(val);
        var dep = []
        var n = 0;

        for (var i = 0; i < ids.length; i++) {
            if (ids[i][0] != id) {
                dep[n] = ids[i][1];
                n++;
            }
        }
        return dep.join(';');

    }


    function makeSummary(row) {

        if (row.Def.Name == 'Task') {
            var assign = row.firstChild;
            while (assign && assign.Deleted) {
                assign = assign.nextSibling;
            }
            if (assign) {
                Grids.Alert = 1;
                if (!confirm('This will cause {0} to become a Summary Task, all its Assignments will be lost.\n\nDo you want to continue?'.replace('{0}', Get(row, 'Name')))) {
                    Grids.Alert = 0;
                    return false;
                }
                Grids.Alert = 0;
                Tasks().RefreshDetail(null, true);
                var delAssign;
                Tasks().StartUpdate();
                while (assign) {
                    delAssign = assign;
                    assign = assign.nextSibling;
                    Tasks().DeleteRow(delAssign, 2);
                }
                Tasks().EndUpdate();
            }
            Tasks().StartUpdate();
            Tasks().ChangeDef(row, 'Summary', 1, 0);
            Tasks().SetValue(row, 'MinFrom', null);
            Tasks().SetValue(row, 'MaxFrom', null);
            Tasks().SetValue(row, 'MinTo', null);
            Tasks().SetValue(row, 'MaxTo', null);
            Tasks().SetValue(row, 'Typ', 'Summary');
            Tasks().RefreshRow(row);
            Tasks().EndUpdate();
        }
        return true;

    }


    function removeParentDependencies(parent, child) {

        var pre = removeDependency(Get(child, 'Pre'), parent.id);
        var suc = removeDependency(Get(child, 'Suc'), parent.id);

        var recalcDep = false;
        if (pre != Get(child, 'Pre') || suc != Get(child, 'Suc')) {
            if (pre != Get(child, 'Pre')) {
                if (Tasks().CheckGantt(child, 'Pre', pre)) {
                    Tasks().SetValue(child, 'Pre', pre, true);
                }
            }
            if (suc != Get(child, 'Suc')) {
                if (Tasks().CheckGantt(child, 'Suc', suc)) {
                    Tasks().SetValue(child, 'Suc', suc, true);
                }
            }
            recalcDep = true;
        }
        return recalcDep;

    }

    function makeChild(parent, child) {
        var recalcDep = false;
        if (parent.Def.Name == 'Task') {
            if (makeSummary(parent)) {
                recalcDep = removeParentDependencies(parent, child);
                Tasks().StartUpdate();
                Tasks().MoveRow(child, parent, null, true);
                Tasks().Collapse(parent);
                Tasks().Expand(parent);
                Tasks().EndUpdate();
            } else {
                return false;
            }
        }
        else {
            Tasks().StartUpdate();
            recalcDep = removeParentDependencies(parent, child);
            Tasks().MoveRow(child, parent, null, true);
            Tasks().EndUpdate();
        }
        Tasks().RefreshDetail();
        return true;
    }

    function deleteSelected(grid) {

        if (grid.GetSelRows().length > 0) {
            grid.ActionDeleteSelected();
        } else {
            grid.StartUpdate();
            if (grid.ActionDeleteRow(1)) {
                grid.EndUpdate();
            } else {
                grid.EndUpdate(grid.FRow);
            }
        }
    }

    function deleteTasks() {

        if (Tasks().GetSelRows().length >= Tasks().RowCount) {
            deleteAllTasks();
        } else {
            deleteSelected(Tasks());
        }
    }

    function deleteAllTasks() {
        if (confirm('Are you sure you want to delete all tasks?')) {
            if (onSubmit()) {
                __doPostBack('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'DeleteAll');
            }
        }
    }

    function deleteAssignments() {
        deleteSelected(Assignments());
    }

    function AddRowBelow() {

        var row = Tasks().FRow;
        if (row) {
            if (Get(row, 'Typ') == 'Summary' && Get(row, 'Expanded')) {
                Tasks().ActionAddChild(1);
            } else {
                Tasks().ActionAddRowBelow(1);
            }
        }

    }

    function GoToTask() {

        if (Tasks().Cols['G'].Visible) {
            var row = Tasks().FRow;
            if (row) {
                var dtStart;
                var dtEnd;
                if (Is(row, 'From')) {
                    dtStart = Get(row, 'From');
                    if (Is(row, 'To')) {
                        dtEnd = Get(row, 'To');
                    }
                    else {
                        dtEnd = Get(row, 'From');
                    }
                } else if (Is(row, 'To')) {
                    dtStart = Get(row, 'To');
                    dtEnd = Get(row, 'To');
                }
                if (dtStart) {
                    var xStart = Tasks().GetGanttPos(dtStart, 'G');
                    var xEnd = Tasks().GetGanttPos(dtEnd, 'G');
                    if (xStart < 0 || xEnd > Tasks().Cols['G'].MaxWidth) {
                        dtStart = new Date(dtStart);
                        dtEnd = new Date(Tasks().GetGanttDate(xStart + Tasks().Cols['G'].MaxWidth, 'G'));
                        Tasks().ZoomTo(dtStart, dtEnd, Tasks().Cols['G'].MaxWidth);
                    }
                    xStart = (Tasks().GetGanttPos(dtStart, 'G') - Tasks().Cols['G'].GanttWidth) + Tasks().GetColLeft('G');
                    Tasks().SetScrollLeft(xStart, 2);
                }
            }
        }
    }

    function EditTask() {

        var row = Tasks().FRow;
        if (row) {
            ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditTask(row);
        }
    }

    function EditAssignment() {

        var row = Assignments().FRow;
        if (row) {
            ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditAssignment(row);
        }

    }


    function indent() {

        var row;
        var rows = Tasks().GetSelRows();
        if (rows.length > 0) {
            var crows = [];
            Tasks().StartUpdate();
            var c = true;
            for (var i = 0; i < rows.length; i++) {
                row = rows[i];
                c = doIndent(row);
                if (c == false) break;
                if (c) {
                    crows[crows.length] = row;
                }
            }
            Tasks().EndUpdate();
            for (var i = 0; i < crows.length; i++) {
                Tasks().CorrectDependencies(crows[i], 'G');
            }
        } else {
            row = Tasks().FRow;
            if (doIndent(row)) {
                Tasks().CorrectDependencies(row, 'G');
            }
        }
    }


    function doIndent(row) {

        if (row && Get(row, 'Typ') != 'Assign' && !Get(row, 'Emp')) {
            var parent = ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.GetPreviousSibling(row);
            if (parent) {
                var nextSibling = parent.nextSibling;
                while (nextSibling && nextSibling != row) {
                    if (!makeChild(parent, nextSibling)) {
                        return false;
                    }
                    nextSibling = parent.nextSibling;
                }
                if (!makeChild(parent, row)) {
                    return false;
                }
                return true;
            }
        }
    }


    function outdent() {

        var row;
        var c;
        var rows = Tasks().GetSelRows();
        if (rows.length > 0) {
            var crows = [];
            Tasks().StartUpdate();
            for (var i = rows.length - 1; i >= 0; i--) {
                row = rows[i];
                c = doOutdent(row);
                if (c == false) break;
                if (c) {
                    crows[crows.length] = row;
                    crows[crows.length] = c;
                }
            }
            Tasks().EndUpdate();
            for (var i = 0; i < crows.length; i++) {
                Tasks().CorrectDependencies(crows[i], 'G');
            }

        } else {
            row = Tasks().FRow;
            c = doOutdent(row);
            if (c) {
                Tasks().RefreshDetail();
                Tasks().CorrectDependencies(row, 'G');
                Tasks().CorrectDependencies(c, 'G');
            }
        }

    }

    function doOutdent(row) {

        if (row && (row.Level > 0) && Get(row, 'Typ') != 'Assign' && !Get(row, 'Emp')) {
            var nextSibling = ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.GetNextSibling(row);
            if (nextSibling) {
                if (makeSummary(row)) {
                    while (row.nextSibling) {
                        Tasks().MoveRow(row.nextSibling, row, null, true);
                    }
                } else {
                    return false;
                }
            }
            Tasks().StartUpdate();
            var parent = row.parentNode;
            var oldParent = parent;
            if (!ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.GetPreviousSibling(row)) {
                Tasks().ChangeDef(parent, 'Task', 1, 0);
                Tasks().SetValue(parent, 'Typ', 'Task', true);
                //Tasks().SetValue(parent,'Pc',0,true);                
                while (row.previousSibling) {
                    row = row.previousSibling;
                }
            }
            while (row) {
                nextSibling = row.nextSibling;
                Tasks().MoveRows(row, parent, 3);
                parent = row;
                row = nextSibling;
            }
            Tasks().EndUpdate();
            return oldParent;
        }
    }

    function fixAssignments() {

        var tasks = Tasks().GetSelRows();
        if (tasks.length > 0) {
            for (var i = 0; i < tasks.length; i++) {
                doFixAssignments(tasks[i]);
            }
        } else {
            doFixAssignments(Tasks().FRow);
        }
        Tasks().RefreshDetail();

    }


    function doMoveAssignments(task, newval, oldval) {


        if ((task && task.Def.Name == 'Task') && (!Get(task, 'Emp'))) {
            var assign = task.firstChild;
            if (assign) {
                Tasks().StartUpdate();

                var offset = Tasks().DiffGanttDate(newval, oldval, 'ms');
                if (newval < oldval) {
                    offset = offset * -1;
                }

                while (assign) {
                    if (!assign.Deleted) {
                        if (Is(assign, 'From')) {
                            var from = Tasks().IncGanttDate(Get(assign, 'From'), offset, 'ms', true);
                            if (Tasks().CheckGantt(assign, 'From', from)) {
                                Tasks().SetValue(assign, 'From', from, true);
                            }
                        } else if (Is(assign, 'To')) {
                            var to = Tasks().IncGanttDate(Get(assign, 'To'), offset, 'ms', false);
                            if (Tasks().CheckGantt(assign, 'To', to)) {
                                Tasks().SetValue(assign, 'To', to, false);
                            }
                        }
                    }
                    assign = assign.nextSibling;
                }
                Tasks().EndUpdate(task);
            }
        }

    }

    function doFixAssignments(task) {

        if ((task && task.Def.Name == 'Task') && (!Get(task, 'Emp'))) {
            var from = Tasks().GetValue(task, 'From');
            var to = Tasks().GetValue(task, 'To');
            var dif;
            var newFrom;
            var assign = task.firstChild;
            if (assign) {
                while (assign) {
                    if (!Is(task, 'From') || !Is(task, 'To')) {
                        Tasks().SetValue(assign, 'From', from, true);
                        Tasks().SetValue(assign, 'To', to, true);
                    } else {
                        if ((Get(assign, 'From') < from) && (Get(assign, 'To') > to)) {
                            if (Tasks().CheckGantt(assign, 'To', to)) {
                                Tasks().SetValue(assign, 'To', to, true);
                            }
                            if (Tasks().CheckGantt(assign, 'From', from)) {
                                Tasks().SetValue(assign, 'From', from, true);
                            }
                        } else {
                            if (Get(assign, 'To') > to) {
                                dif = Get(assign, 'To') - to;
                                newFrom = Tasks().RoundGanttDate(Get(assign, 'From') - dif, 8, null, 'G');
                                if (newFrom != Get(assign, 'From') - dif) {
                                    newFrom = Tasks().RoundGanttDate(Get(assign, 'From') - dif, 20, null, 'G');
                                    newFrom = Tasks().RoundGanttDate(newFrom, 8, null, 'G');
                                }
                                if (newFrom < from) {
                                    newFrom = from;
                                }
                                if (Tasks().CheckGantt(assign, 'From', newFrom)) {
                                    Tasks().SetValue(assign, 'From', newFrom, true);
                                }
                            }
                            if (Get(assign, 'From') < from) {
                                if (Tasks().CheckGantt(assign, 'From', from)) {
                                    Tasks().SetValue(assign, 'From', from, true);
                                }
                            }
                            if (Get(assign, 'To') > to) {
                                if (Tasks().CheckGantt(assign, 'To', to)) {
                                    Tasks().SetValue(assign, 'To', to, true);
                                }
                            }
                        }
                    }
                    assign = assign.nextSibling;
                }
            }
        }
    }

    function addAssignment() {

        var task = Tasks().FRow;
        if ((task && task.Def.Name == 'Task') && (!Get(task, 'Emp'))) {
            if (Tasks().EditMode) {
                if (!Tasks().ActionAcceptEdit()) {
                    return false;
                }
            }
            var row = Tasks().AddRow(task, null);
            ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.onRowAdd(Tasks(), row);
            Tasks().ShowRow(row, false);

            Tasks().ActionRefreshDetail(1);
            row = Assignments().GetRowById(row.id);
            Assignments().Focus(row, 'ResC', null, true);

        }
        return true;
    }

    function splitAssignment(row) {
        row = row ? row : Assignments().FRow;
        if (row) {
            ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.SplitAssignment(row);
        }
    }

    function mapAssignments() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.MapAssignments();
    }


    function importAGS() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.ImportAGS();
    }

    function importPlan() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.ImportPlan();
    }


    function exportPlan() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.ExportPlan();
    }

    function reviewPlan() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.ReviewPlan();
    }

    function configPlan() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.ConfigPlan();
    }


    function printPlan() {
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.PrintPlan();
    }

    function changeAssignmentResources() {
        if ((Assignments().GetSelRows().length > 0) || (Assignments().FRow)) {
            var size = GetWindowSize();
            ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.openPopup('PickAssignmentResource', 0, 0, size[0] - 100, size[1] - 100, changeAssignmentResourcesCallback);
        }
    }

    function changeAssignmentResourcesCallback(context, returnValue) {
        var assigns = Assignments().GetSelRows();
        if ((assigns.length == 0) && Assignments().FRow) {
            assigns[0] = Assignments().FRow;
        }
        for (var i = 0; i < assigns.length; i++) {
            Assignments().SetValue(assigns[i], 'ResC', returnValue, true);
            updateResDescription(assigns[i]);
        }
    }

    function updateResDescription(row) {

        WebForm_DoCallback('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'aecGetResDesc:' + Get(row, 'ResC'), updateResDescriptionCallback, row, null, true);

    }

    function updateResDescriptionCallback(value, row) {

        row = Tasks().Rows[row.id];
        if (row) {
            Tasks().SetValue(row, 'ResD', value, true);
        }

    }


    function rescheduleAssignments() {
        return ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.RescheduleAssignments;
    }

    function toggleLockAssignments() {

        var val = !ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.RescheduleAssignments;
        ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.RescheduleAssignments = val;
        document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tdMoveAssignments').className = ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.RescheduleAssignmentsClass();
        WebForm_DoCallback('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'aecMoveAssignments:' + val, toggleLockAssignmentsCallback, null, null, false);

    }

    function toggleLockAssignmentsCallback() {

    }

    function Save(checkIn) {

        var T = ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan;
        if (T.Upload) return false;
        T.Upload = 1;

        var ci = checkIn;
        var fn = function (grid, result, auto) {
            if (result > 0) {
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 0;
                ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.GanttBase = grid.GetGanttBase();
                if (ci) {
                    CheckIn();
                }
            } else {
                document.getElementById('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty').value = 1;
            }
            DelEvent('OnAfterSave', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks', fn);
            T.Upload = 0;
        }
        AddEvent('OnAfterSave', 'ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks', fn);
        Tasks().ActionSave();

    }




    function ConfirmCheckIn() {

        if (Tasks().Editing) {
            Tasks().ActionAcceptEdit();
        }
        if (ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.IsDirty()) {
            var val = confirm('Do you want to save your changes?');
            if (val) {
                //Save changes
                Save(true);
                return false;
            } else {
                return true;
            }
        } else {
            //Not changed
            return onSubmit();
        }
        return false;
    }

    function CheckIn() {
        if (ConfirmCheckIn()) {
            __doPostBack('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'CheckIn');
        }
    }

    function CheckOut() {
        __doPostBack('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'CheckOut');
    }


    function ConfirmRollback() {

        if (Tasks().Editing) {
            Tasks().ActionAcceptEdit();
        }
        if (ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.IsDirty()) {
            var val = confirm('Are you sure you want to rollback to the previously saved plan?');
            if (val) {
                return onSubmit();
            } else {
                return false;
            }
        } else {
            alert('The plan has not been changed');
        }
        return false;
    }

    function Rollback() {
        if (ConfirmRollback()) {
            __doPostBack('ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan', 'Rollback');
        }
    }

                         
</script>

                                            <table style="border-width: 1px; border-style: solid; border-color: rgb(153, 153, 153) white;"
                                                cellpadding="0" cellspacing="0" width="100%">
                                                <tbody>
                                                    <tr>
                                                        <td class="toolbar">
                                                            <table class="toolbarInner" border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="left" valign="middle">
                                                                            <table id="tblToolbar" border="0" cellpadding="0" cellspacing="1">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_checkin.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgCheckIn"
                                                                                                onclick="CheckIn();" style="vertical-align: middle; cursor: pointer;" alt="Check In"
                                                                                                title="Check In">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_save.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgSave"
                                                                                                onclick="Save(false);" style="vertical-align: middle; cursor: pointer;" alt="Save"
                                                                                                title="Save">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_rollback.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgRollback"
                                                                                                onclick="Rollback();" style="vertical-align: middle; cursor: pointer;" alt="Rollback"
                                                                                                title="Rollback">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_import.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgImport"
                                                                                                onclick="importAGS();" alt="Copy Plan from another Project" title="Copy Plan from another Project"
                                                                                                style="vertical-align: middle; cursor: pointer;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_mspimport.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgImportPlan"
                                                                                                onclick="importPlan();" style="vertical-align: middle; cursor: pointer;" alt="Import Plan from MS Project"
                                                                                                title="Import Plan from MS Project">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_mspexport.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgExportPlan"
                                                                                                onclick="exportPlan();" style="vertical-align: middle; cursor: pointer;" alt="Export Plan To MS Project"
                                                                                                title="Export Plan To MS Project">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/expandTasks.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgExpandAll"
                                                                                                onclick="Tasks().ActionExpandAll();" style="vertical-align: middle; cursor: pointer;"
                                                                                                alt="Expand All Tasks" title="Expand All Tasks">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/collapseTasks.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgCollapseAll"
                                                                                                onclick="Tasks().FRow=null;Tasks().ActionCollapseAll();" style="vertical-align: middle;
                                                                                                cursor: pointer;" alt="Collapse All Tasks" title="Collapse All Tasks">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_addrow.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgAddRow"
                                                                                                onclick="setTimeout(function(){Tasks().ActionAddRowEndGrid();},100)" style="vertical-align: middle;
                                                                                                cursor: pointer;" alt="Add Row" title="Add Row">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_insertrowabove.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgInsertRowBefore"
                                                                                                onclick="setTimeout(function(){Tasks().ActionAddRow(1);},100)" style="vertical-align: middle;
                                                                                                cursor: pointer;" alt="Insert Row Above" title="Insert Row Above">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_insertrowbelow.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgInsertRowAfter"
                                                                                                onclick="setTimeout(function(){AddRowBelow();},100)" style="vertical-align: middle;
                                                                                                cursor: pointer;" alt="Insert Row Below" title="Insert Row Below">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_delete.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgRemoveAllTasks"
                                                                                                onclick="deleteTasks();" style="vertical-align: middle; cursor: pointer;" alt="Delete Selected Tasks"
                                                                                                title="Delete Selected Tasks">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_outdent.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgOutdent"
                                                                                                onclick="outdent();" style="vertical-align: middle; cursor: pointer;" alt="Outdent"
                                                                                                title="Outdent">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_indent.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgIndent"
                                                                                                onclick="indent();" style="vertical-align: middle; cursor: pointer;" alt="Indent"
                                                                                                title="Indent">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/addAssignment.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgAddAssignment"
                                                                                                onclick="setTimeout(function(){addAssignment();},100)" style="vertical-align: middle;
                                                                                                cursor: pointer;" alt="Add Assignment" title="Add Assignment">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/meniitem_mapassignments.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgChangeAssignRes"
                                                                                                onclick="changeAssignmentResources();" alt="Change Selected Assignments Resource"
                                                                                                style="vertical-align: middle; cursor: pointer;" title="Change Selected Assignments Resource">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_mapassignments.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgMapAssignments"
                                                                                                onclick="mapAssignments();" style="vertical-align: middle; cursor: pointer;"
                                                                                                title="Map Role Assignments">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/deleteAssignment.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgDeleteAssignments"
                                                                                                onclick="deleteAssignments();" style="vertical-align: middle; cursor: pointer;"
                                                                                                alt="Delete Selected Assignments" title="Delete Selected Assignments">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_zoomin.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgZoomIn"
                                                                                                onclick="Tasks().ActionZoomIn();" style="vertical-align: middle; cursor: pointer;"
                                                                                                alt="Zoom In" title="Zoom In">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_zoomout.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgZoomOut"
                                                                                                onclick="Tasks().ActionZoomOut();" style="vertical-align: middle; cursor: pointer;"
                                                                                                alt="Zoom Out" title="Zoom Out">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="this.className = 'toolbaritem_on';" onmouseout="this.className = 'toolbaritem_off';"
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_windowconfig.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgConfig"
                                                                                                onclick="configPlan();" style="vertical-align: middle; cursor: pointer;" alt="Plan Configuration"
                                                                                                title="Plan Configuration">
                                                                                        </td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" onmouseover="if (this.className != 'toolbaritem_dropdown') this.className = 'toolbaritem_on', document.getElementById('imgPrintDropDown').src = '../../Content/images/common/menuitem_dropdown_active.gif';"
                                                                                            onmouseout="if (this.className != 'toolbaritem_dropdown') this.className = 'toolbaritem_off', document.getElementById('imgPrintDropDown').src = '../../Content/images/common/menuitem_dropdown_inactive.gif';"
                                                                                            style="white-space: nowrap; padding-right: 12px;" align="center" valign="middle">
                                                                                            <div id="divPrintMenu" class="toolbar_dropdown" rtl="1" onmousedown="cancelBubble(event);"
                                                                                                style="display: none;">
                                                                                                <table border="0" cellpadding="4" cellspacing="0">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td style="white-space: nowrap;" align="left" valign="middle">
                                                                                                                From:
                                                                                                            </td>
                                                                                                            <td style="white-space: nowrap;" align="left" valign="middle">
                                                                                                                <select name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintFromDate$cmbMonth"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbMonth"
                                                                                                                    class="comboBox">
                                                                                                                    <option value=""></option>
                                                                                                                    <option value="1">Jan</option>
                                                                                                                    <option value="2">Feb</option>
                                                                                                                    <option value="3">Mar</option>
                                                                                                                    <option value="4">Apr</option>
                                                                                                                    <option value="5">May</option>
                                                                                                                    <option value="6">Jun</option>
                                                                                                                    <option value="7">Jul</option>
                                                                                                                    <option value="8">Aug</option>
                                                                                                                    <option value="9">Sep</option>
                                                                                                                    <option selected="selected" value="10">Oct</option>
                                                                                                                    <option value="11">Nov</option>
                                                                                                                    <option value="12">Dec</option>
                                                                                                                </select>
                                                                                                                <select name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintFromDate$cmbDayUS"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbDayUS"
                                                                                                                    class="comboBox">
                                                                                                                    <option value=""></option>
                                                                                                                    <option value="1">1</option>
                                                                                                                    <option value="2">2</option>
                                                                                                                    <option value="3">3</option>
                                                                                                                    <option value="4">4</option>
                                                                                                                    <option value="5">5</option>
                                                                                                                    <option value="6">6</option>
                                                                                                                    <option value="7">7</option>
                                                                                                                    <option value="8">8</option>
                                                                                                                    <option value="9">9</option>
                                                                                                                    <option value="10">10</option>
                                                                                                                    <option value="11">11</option>
                                                                                                                    <option value="12">12</option>
                                                                                                                    <option value="13">13</option>
                                                                                                                    <option value="14">14</option>
                                                                                                                    <option value="15">15</option>
                                                                                                                    <option value="16">16</option>
                                                                                                                    <option value="17">17</option>
                                                                                                                    <option value="18">18</option>
                                                                                                                    <option value="19">19</option>
                                                                                                                    <option value="20">20</option>
                                                                                                                    <option value="21">21</option>
                                                                                                                    <option value="22">22</option>
                                                                                                                    <option value="23">23</option>
                                                                                                                    <option value="24">24</option>
                                                                                                                    <option selected="selected" value="25">25</option>
                                                                                                                    <option value="26">26</option>
                                                                                                                    <option value="27">27</option>
                                                                                                                    <option value="28">28</option>
                                                                                                                    <option value="29">29</option>
                                                                                                                    <option value="30">30</option>
                                                                                                                    <option value="31">31</option>
                                                                                                                </select>
                                                                                                                <input name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintFromDate$txtYear"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_txtYear"
                                                                                                                    class="textBox" size="6" maxlength="4" value="2010" type="text">
                                                                                                                <img src="../../Content/images/common/pick.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgSelect"
                                                                                                                    style="vertical-align: middle; cursor: pointer;" alt="Select" title="Select"
                                                                                                                    onclick="com_dateinput_showDatePick('/common/com_calendar.aspx?CalendarMode=','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbDayUS','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbMonth','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_txtYear');"
                                                                                                                    border="0">
                                                                                                                <input name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintFromDate$hdnDate"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_hdnDate"
                                                                                                                    class="textBox" type="hidden">
                                                                                                                <img src="../../Content/images/common/currentperiod.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgToday"
                                                                                                                    style="vertical-align: middle; cursor: pointer;" alt="Today" onclick="com_dateinput_today('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbDayUS','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbMonth','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_txtYear');"
                                                                                                                    title="Today" border="0">
                                                                                                                <img src="../../Content/images/common/delete.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_imgClearDate"
                                                                                                                    style="vertical-align: middle; cursor: pointer;" alt="Clear" title="Clear" onclick="com_dateinput_clearDate('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbDayUS','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_cmbMonth','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintFromDate_txtYear');"
                                                                                                                    border="0">
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td style="white-space: nowrap;" align="left" valign="middle">
                                                                                                                To:
                                                                                                            </td>
                                                                                                            <td style="white-space: nowrap;" align="left" valign="middle">
                                                                                                                <select name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintToDate$cmbMonth"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbMonth"
                                                                                                                    class="comboBox">
                                                                                                                    <option value=""></option>
                                                                                                                    <option value="1">Jan</option>
                                                                                                                    <option value="2">Feb</option>
                                                                                                                    <option value="3">Mar</option>
                                                                                                                    <option value="4">Apr</option>
                                                                                                                    <option value="5">May</option>
                                                                                                                    <option value="6">Jun</option>
                                                                                                                    <option value="7">Jul</option>
                                                                                                                    <option value="8">Aug</option>
                                                                                                                    <option value="9">Sep</option>
                                                                                                                    <option value="10">Oct</option>
                                                                                                                    <option value="11">Nov</option>
                                                                                                                    <option selected="selected" value="12">Dec</option>
                                                                                                                </select>
                                                                                                                <select name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintToDate$cmbDayUS"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbDayUS"
                                                                                                                    class="comboBox">
                                                                                                                    <option value=""></option>
                                                                                                                    <option value="1">1</option>
                                                                                                                    <option value="2">2</option>
                                                                                                                    <option value="3">3</option>
                                                                                                                    <option value="4">4</option>
                                                                                                                    <option value="5">5</option>
                                                                                                                    <option value="6">6</option>
                                                                                                                    <option value="7">7</option>
                                                                                                                    <option value="8">8</option>
                                                                                                                    <option value="9">9</option>
                                                                                                                    <option value="10">10</option>
                                                                                                                    <option value="11">11</option>
                                                                                                                    <option value="12">12</option>
                                                                                                                    <option value="13">13</option>
                                                                                                                    <option value="14">14</option>
                                                                                                                    <option value="15">15</option>
                                                                                                                    <option value="16">16</option>
                                                                                                                    <option value="17">17</option>
                                                                                                                    <option value="18">18</option>
                                                                                                                    <option selected="selected" value="19">19</option>
                                                                                                                    <option value="20">20</option>
                                                                                                                    <option value="21">21</option>
                                                                                                                    <option value="22">22</option>
                                                                                                                    <option value="23">23</option>
                                                                                                                    <option value="24">24</option>
                                                                                                                    <option value="25">25</option>
                                                                                                                    <option value="26">26</option>
                                                                                                                    <option value="27">27</option>
                                                                                                                    <option value="28">28</option>
                                                                                                                    <option value="29">29</option>
                                                                                                                    <option value="30">30</option>
                                                                                                                    <option value="31">31</option>
                                                                                                                </select>
                                                                                                                <input name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintToDate$txtYear"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_txtYear"
                                                                                                                    class="textBox" size="6" maxlength="4" value="2010" type="text">
                                                                                                                <img src="../../Content/images/common/pick.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgSelect"
                                                                                                                    style="vertical-align: middle; cursor: pointer;" alt="Select" title="Select"
                                                                                                                    onclick="com_dateinput_showDatePick('/common/com_calendar.aspx?CalendarMode=','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbDayUS','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbMonth','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_txtYear');"
                                                                                                                    border="0">
                                                                                                                <input name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$ucPrintToDate$hdnDate"
                                                                                                                    id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_hdnDate"
                                                                                                                    class="textBox" type="hidden">
                                                                                                                <img src="../../Content/images/common/currentperiod.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgToday"
                                                                                                                    style="vertical-align: middle; cursor: pointer;" alt="Today" onclick="com_dateinput_today('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbDayUS','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbMonth','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_txtYear');"
                                                                                                                    title="Today" border="0">
                                                                                                                <img src="../../Content/images/common/delete.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_imgClearDate"
                                                                                                                    style="vertical-align: middle; cursor: pointer;" alt="Clear" title="Clear" onclick="com_dateinput_clearDate('ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbDayUS','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_cmbMonth','ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_ucPrintToDate_txtYear');"
                                                                                                                    border="0">
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </div>
                                                                                            <img src="../../Content/images/common/menuitem_print.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgPrint"
                                                                                                onclick="printPlan();" style="vertical-align: middle; cursor: pointer; padding-left: 1px;"
                                                                                                title="Print Plan" alt="Print Plan">
                                                                                            <img id="imgPrintDropDown" src="../../Content/images/common/menuitem_dropdown_inactive.gif"
                                                                                                    alt="" onmousedown="toggleToolbarMenu(event, document.getElementById('divPrintMenu')); this.src = '../../Content/images/common/menuitem_dropdown_inactive.gif';"
                                                                                                    style="position: absolute; float: right;">

                                                                                            <script type="text/javascript">

                                function toggleToolbarMenu(e, menu) {

                                    var oEvent = e || window.event;

                                    if (menu) {
                                        if (menu.style.display == 'none') {
                                            showToolbarMenu(oEvent, menu);
                                        } else {
                                            hideToolbarMenu(oEvent);
                                        }
                                    }
                                }


                                function showToolbarMenu(e, menu) {

                                    var oEvent = e || window.event;
                                    var oToolbarItem = menu.parentNode;
                                    var blnContinue = true;

                                    if (window.activeMenu) {
                                        if (window.activeMenu == menu) {
                                            blnContinue == false
                                        } else {
                                            hideToolbarMenu(oEvent);
                                        }
                                    }

                                    if (blnContinue == true) {
                                        Grids.Alert = 1;
                                        menu.parentNode.className = 'toolbaritem_dropdown';

                                        menu.style.display = '';
                                        menu.style.marginTop = menu.parentNode.offsetHeight - 2 + 'px';
                                        menu.style.marginLeft = (menu.getAttribute('rtl') == '1') ? (((menu.offsetWidth - menu.parentNode.offsetWidth) + 1) * -1) + 'px' : '-1px';

                                        window.activeMenu = menu;
                                        cancelBubble(oEvent);
                                        addEvent(document, 'mousedown', hideToolbarMenu);
                                    }
                                }


                                function hideToolbarMenu(e) {

                                    var oEvent = e || window.event;

                                    Grids.Alert = 0;
                                    if (window.activeMenu) {
                                        window.activeMenu.parentNode.className = 'toolbaritem_off';
                                        window.activeMenu.style.display = 'none';
                                        window.activeMenu = null;
                                    }
                                }

                            </script>

                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td align="right">
                                                                            <table id="tblToolbarRight" border="0" cellpadding="0" cellspacing="1">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td align="center" valign="middle">
                                                                                            <input name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$btnReview"
                                                                                                id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_btnReview" class="button"
                                                                                                onclick="reviewPlan();" value="Review" title="Review Progress" type="button">
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
                                            <input id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks_Layout"
                                                value="&lt;Grid&gt;&lt;Lang&gt;&lt;Alert DelSelected=&quot;Are you sure you want to delete %d selected Tasks and any associated children?&quot; /&gt;&lt;Gantt GanttRunEdit=&quot;&quot; /&gt;&lt;/Lang&gt;&lt;Cfg id=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks&quot; Code=&quot;GTACRYZKGPJXGB&quot; SuppressCfg=&quot;4&quot; Cookie=&quot;+akXjIAqqFaNm]-b1z-bIuSbJc0idd9oNmapRNmbpOrdcpEmpdyAlrt]ecmAlrtA]fmAlrtC]gpTyphpKeyipPosjyDesc]kHhxDurlKgyFrom]mAc5TonlmMinFrom]omMaxFrom]pmMinTo]qmMaxTo]ruDays]s0ciAlloc]tkiConf]ut6PrevklSucwpdWBSxmResC]ymResD]zgPc5xpPcC6ZGaTs+&quot; TipStart=&quot;100&quot; GanttLap=&quot;1&quot; Pasting=&quot;0&quot; NumberId=&quot;1&quot; IdChars=&quot;0123456789&quot; ShowDeleted=&quot;0&quot; Sorting=&quot;0&quot; StaticCursor=&quot;1&quot; CalcOrder=&quot;*&quot; MainCol=&quot;Desc&quot; NoTreeLines=&quot;1&quot; Style=&quot;Office&quot; ResizingMain=&quot;1&quot; ConstHeight=&quot;1&quot; MaxWidth=&quot;1&quot; MidWidth=&quot;787&quot; MinMidWidth=&quot;0&quot; NameCol=&quot;RNm&quot; /&gt;&lt;DefCols&gt;&lt;D Name=&quot;Mnu&quot; Type=&quot;Text&quot; Menu=&quot;{Items:[{Name:'GoTo',Text:'Scroll To Task',Icon:'../../Content/images/common/menuitem_blank.gif',IconWidth:0,OnClick:function(){GoToTask();}},{Name:'-'},{Name:'Add',Text:'Add Row',Icon:'../../Content/images/common/menuitem_addrow.gif',IconWidth:0,OnClick:function(){Tasks().ActionAddRowEndGrid();}},{Name:'InsertAbove',Text:'Insert Row Above',Icon:'../../Content/images/common/menuitem_insertrowabove.gif',IconWidth:0,OnClick:function(){Tasks().ActionAddRow(1);}},{Name:'InsertBelow',Text:'Insert Row Below',Icon:'../../Content/images/common/menuitem_insertrowbelow.gif',IconWidth:0,OnClick:function(){AddRowBelow();}},{Name:'Delete',Text:'Delete Selected Tasks',Icon:'../../Content/images/common/menuitem_delete.gif',IconWidth:0,OnClick:function(){deleteTasks();}},{Name:'-'},{Name:'Outdent',Text:'Outdent',Icon:'../../Content/images/common/menuitem_outdent.gif',IconWidth:0,OnClick:function(){outdent();}},{Name:'Indent',Text:'Indent',Icon:'../../Content/images/common/menuitem_indent.gif',IconWidth:0,OnClick:function(){indent();}},{Name:'-'},{Name:'AddAssign',Text:'Add Assignment',Icon:'../../Content/images/common/addAssignment.gif',IconWidth:0,OnClick:function(){addAssignment();}},{Name:'-'},{Name:'Edit',Text:'Edit...',Icon:'../../Content/images/common/menuitem_blank.gif',IconWidth:0,OnClick:function(){EditTask();}}],ExpandTime:0,ShowCursor:0}&quot; /&gt;&lt;/DefCols&gt;&lt;Root CDef=&quot;Task&quot; /&gt;&lt;Def&gt;&lt;D Name=&quot;R&quot; Recalc=&quot;3&quot; Emp=&quot;1&quot; Conf=&quot;1&quot; /&gt;&lt;D Name=&quot;Summary&quot; CDef=&quot;Task&quot; DefEmpty=&quot;Task&quot; AcceptDef=&quot;Summary,Task&quot; NoColorState=&quot;1&quot; RNmFormula=&quot;Nm + ' ' + id + ' and its children'&quot; DescClass=&quot;summary&quot; DurCanEdit=&quot;0&quot; DurClass=&quot;summary&quot; DurFormula=&quot;ganttduration()&quot; FromClass=&quot;summary&quot; FromOnEnter=&quot;1&quot; FromOnCtrlDown=&quot;1&quot; ToClass=&quot;summary&quot; ToOnEnter=&quot;1&quot; ToOnCtrlDown=&quot;1&quot; AllocFormula=&quot;sum('Alloc')&quot; ConfEnum=&quot;&amp;#x1F;Yes&amp;#x1F;No&quot; ConfEnumKeys=&quot;&amp;#x1F;1&amp;#x1F;2&quot; PcCFormula=&quot;100&quot; GGanttEdit=&quot;Dependency&quot; GGanttSummary=&quot;1&quot; GGanttClass=&quot;GanttG&quot; GGanttIcons=&quot;1&quot; Calculated=&quot;1&quot; CalcOrder=&quot;RNm,Pos,WBS,*,AlrtA,AlrtC,Alrt,From,To,Dur,Days,Alloc,Conf,PcC,G&quot; Nm=&quot;Task ID&quot; Typ=&quot;Summary&quot; /&gt;&lt;D Name=&quot;Task&quot; CDef=&quot;AssignF&quot; AcceptDef=&quot;Summary,Task&quot; Detail=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments&quot; CanExpand=&quot;0&quot; NoColorState=&quot;1&quot; Expanded=&quot;0&quot; AlrtAFormula=&quot;Grid.HasChildren(Row)&amp;amp;&amp;amp;(minimum(min('From'),min('To'))&amp;lt;From)||(maximum(max('From'),max('To'))&amp;gt;To)&quot; AlrtAFormat=&quot;g&quot; AlrtAEditFormat=&quot;g&quot; DurCopyTo=&quot;Children_AssignF,Dur&quot; FromCopyTo=&quot;Children_AssignF,From&quot; ToCopyTo=&quot;Children_AssignF,To&quot; AllocFormula=&quot;sum('Alloc')&quot; ResDFormula=&quot;(!Grid.HasChildren(Row))?'':calc('(Result==0)?ResD:(Result.indexOf(ResD)&amp;gt;=0)?Result:Result+\';\'+ResD')&quot; GGanttEdit=&quot;Main,Dependency,Constraints&quot; GGanttSummary=&quot;0&quot; Calculated=&quot;1&quot; CalcOrder=&quot;RNm,Pos,WBS,AlrtA,AlrtC,Alrt,Alloc,PcC,ResD,G&quot; Nm=&quot;Task ID&quot; Typ=&quot;Task&quot; /&gt;&lt;D Name=&quot;Assign&quot; PosFormat=&quot;g&quot; PosEditFormat=&quot;g&quot; CalcOrder=&quot;RNm,Pos,WBS,G&quot; Nm=&quot;Assignment&quot; Typ=&quot;Assign&quot; /&gt;&lt;D Name=&quot;AssignR&quot; Def=&quot;Assign&quot; /&gt;&lt;D Name=&quot;AssignF&quot; Def=&quot;Assign&quot; DurCanEdit=&quot;0&quot; FromCanEdit=&quot;0&quot; ToCanEdit=&quot;0&quot; /&gt;&lt;/Def&gt;&lt;Panel VisibleLap=&quot;1&quot; CanHide=&quot;0&quot; Move=&quot;1&quot; Delete=&quot;0&quot; /&gt;&lt;LeftCols&gt;&lt;C Name=&quot;id&quot; Type=&quot;Text&quot; CanFilter=&quot;0&quot; CanEdit=&quot;0&quot; CanHide=&quot;0&quot; Def=&quot;Mnu&quot; Width=&quot;30&quot; /&gt;&lt;/LeftCols&gt;&lt;Cols&gt;&lt;C Name=&quot;Nm&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;RNm&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Formula=&quot;Nm + ' ' + id&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;Ord&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;Emp&quot; Type=&quot;Int&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;Alrt&quot; Type=&quot;Panel&quot; Align=&quot;Left&quot; CanEdit=&quot;0&quot; CanHide=&quot;0&quot; Def=&quot;Mnu&quot; Formula=&quot;Get(Row,'AlrtC')?'Complete'+(Get(Row,'AlrtA')?',Assign':''):Get(Row,'AlrtA')?'Assign':''&quot; Width=&quot;32&quot; Buttons=&quot;,,&quot; Select=&quot;0&quot; Delete=&quot;0&quot; Add=&quot;0&quot; Role=&quot;../../Content/images/common/roleassignment.gif&quot; PanelRoleTip=&quot;This task has Role based Assignments&quot; Assign=&quot;../../Content/images/common/warning_greyborder.gif&quot; PanelAssignTip=&quot;The task has assignments outside its date range&quot; Complete=&quot;../../Content/images/common/complete.gif&quot; PanelCompleteTip=&quot;The task is complete&quot; /&gt;&lt;C Name=&quot;AlrtA&quot; Type=&quot;Int&quot; CanHide=&quot;0&quot; Formula=&quot;''&quot; Visible=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;AlrtC&quot; Type=&quot;Int&quot; CanHide=&quot;0&quot; Formula=&quot;Pc==100&quot; Visible=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;Typ&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;Key&quot; Type=&quot;Int&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;Pos&quot; Type=&quot;Int&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;Desc&quot; Type=&quot;Text&quot; Def=&quot;Mnu&quot; Width=&quot;250&quot; /&gt;&lt;C Name=&quot;Dur&quot; Type=&quot;Float&quot; CanFilter=&quot;0&quot; Align=&quot;Right&quot; Def=&quot;Mnu&quot; Width=&quot;60&quot; Format=&quot;0.####&quot; EditFormat=&quot;0.####&quot; CanEmpty=&quot;1&quot; /&gt;&lt;C Name=&quot;From&quot; Type=&quot;Date&quot; Def=&quot;Mnu&quot; Width=&quot;125&quot; Format=&quot;ddd, d MMM yyyy&quot; EditFormat=&quot;d&quot; CancelUnchanged=&quot;1&quot; CanEmpty=&quot;1&quot; DefaultDate=&quot;12/21/2010 08:00:00&quot; /&gt;&lt;C Name=&quot;To&quot; Type=&quot;Date&quot; Def=&quot;Mnu&quot; Width=&quot;125&quot; Format=&quot;ddd, d MMM yyyy&quot; EditFormat=&quot;d&quot; CancelUnchanged=&quot;1&quot; CanEmpty=&quot;1&quot; DefaultDate=&quot;12/21/2010 17:00:00&quot; /&gt;&lt;C Name=&quot;MinFrom&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;MaxFrom&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;MinTo&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;MaxTo&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;Days&quot; Type=&quot;Float&quot; Align=&quot;Right&quot; Def=&quot;Mnu&quot; Width=&quot;50&quot; Format=&quot;0.##&quot; EditFormat=&quot;0.####&quot; CanEmpty=&quot;1&quot; /&gt;&lt;C Name=&quot;Alloc&quot; Type=&quot;Float&quot; Align=&quot;Right&quot; Def=&quot;Mnu&quot; Width=&quot;75&quot; Format=&quot;0.##&quot; CanEmpty=&quot;1&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;Conf&quot; Type=&quot;Enum&quot; Def=&quot;Mnu&quot; Width=&quot;75&quot; Enum=&quot;&amp;#x1F;Yes&amp;#x1F;No&quot; EnumKeys=&quot;&amp;#x1F;1&amp;#x1F;2&quot; IconAlign=&quot;Right&quot; /&gt;&lt;C Name=&quot;Pre&quot; Type=&quot;Text&quot; Range=&quot;1&quot; Def=&quot;Mnu&quot; Width=&quot;100&quot; /&gt;&lt;C Name=&quot;Suc&quot; Type=&quot;Text&quot; Range=&quot;1&quot; CanHide=&quot;1&quot; Def=&quot;Mnu&quot; Visible=&quot;0&quot; Width=&quot;100&quot; /&gt;&lt;C Name=&quot;WBS&quot; Type=&quot;Text&quot; CanEdit=&quot;0&quot; CanHide=&quot;1&quot; Def=&quot;Mnu&quot; Visible=&quot;1&quot; Width=&quot;100&quot; /&gt;&lt;C Name=&quot;ResC&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;ResD&quot; Type=&quot;Text&quot; Range=&quot;1&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;Pc&quot; Type=&quot;Float&quot; Range=&quot;0&quot; CanHide=&quot;1&quot; Visible=&quot;0&quot; CanEmpty=&quot;1&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;PcC&quot; Type=&quot;Float&quot; Range=&quot;0&quot; CanHide=&quot;0&quot; Formula=&quot;Pc?Pc:0&quot; Visible=&quot;0&quot; CanEmpty=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;/Cols&gt;&lt;RightCols&gt;&lt;C Name=&quot;G&quot; Type=&quot;Gantt&quot; MaxWidth=&quot;10000&quot; Menu=&quot;{Items:[{Name:'GoTo',Text:'Scroll To Task',Icon:'../../Content/images/common/menuitem_blank.gif',IconWidth:0,OnClick:function(){GoToTask();}},{Name:'-'},{Name:'Add',Text:'Add Row',Icon:'../../Content/images/common/menuitem_addrow.gif',IconWidth:0,OnClick:function(){Tasks().ActionAddRowEndGrid();}},{Name:'InsertAbove',Text:'Insert Row Above',Icon:'../../Content/images/common/menuitem_insertrowabove.gif',IconWidth:0,OnClick:function(){Tasks().ActionAddRow(1);}},{Name:'InsertBelow',Text:'Insert Row Below',Icon:'../../Content/images/common/menuitem_insertrowbelow.gif',IconWidth:0,OnClick:function(){Tasks().ActionAddRowBelow(1);}},{Name:'Delete',Text:'Delete Selected Tasks',Icon:'../../Content/images/common/menuitem_delete.gif',IconWidth:0,OnClick:function(){deleteTasks();}},{Name:'-'},{Name:'Outdent',Text:'Outdent',Icon:'../../Content/images/common/menuitem_outdent.gif',IconWidth:0,OnClick:function(){outdent();}},{Name:'Indent',Text:'Indent',Icon:'../../Content/images/common/menuitem_indent.gif',IconWidth:0,OnClick:function(){indent();}},{Name:'-'},{Name:'AddAssign',Text:'Add Assignment',Icon:'../../Content/images/common/addAssignment.gif',IconWidth:0,OnClick:function(){addAssignment();}},{Name:'-'},{Name:'Edit',Text:'Edit...',Icon:'../../Content/images/common/menuitem_blank.gif',IconWidth:0,OnClick:function(){EditTask();}}],ExpandTime:0,ShowCursor:0}&quot; GanttChartMinStart=&quot;12/28/2009 00:00:00&quot; GanttChartMaxStart=&quot;12/6/2010 00:00:00&quot; GanttChartMinEnd=&quot;1/20/2011 00:00:00&quot; GanttChartMaxEnd=&quot;1/4/2016 00:00:00&quot; GanttBase=&quot;12/13/2010 08:00:00&quot; GanttDataUnits=&quot;28800000&quot; GanttDataModifiers=&quot;m:0.00208333333333333,mn:0.00208333333333333,min:0.00208333333333333,mins:0.00208333333333333,h:0.125,hr:0.125,hrs:0.125,hour:0.125,hours:0.125,d:1,dy:1,dys:1,day:1,days:1,w:5,wk:5,wks:5,week:5,weeks:5&quot; GanttWidth=&quot;14&quot; GanttZoom=&quot;Days&quot; GanttZoomList=&quot;[{ Name:'Months',GanttUnits:'w',GanttWidth:7,GanttChartRound:'M3',GanttHeader1:'M3#yyyy MMMMM',GanttHeader2:'M#MMM' }, { Name:'Weeks',GanttUnits:'d',GanttWidth:5,GanttChartRound:'M',GanttHeader1:'M#MMM yyyy',GanttHeader2:'w1#dd' }, { Name:'Days',GanttUnits:'d',GanttWidth:14,GanttChartRound:'w',GanttHeader1:'w1#d',GanttHeader2:'d#ddddd' }]&quot; GanttSmoothZoom=&quot;0&quot; GanttAdding=&quot;0&quot; GanttDeleting=&quot;0&quot; GanttResizeDelete=&quot;0&quot; GanttEndLast=&quot;0&quot; GanttExclude=&quot;w#12/19/2010~12/20/2010;w#12/25/2010~12/26/2010;d#00:00~08:00;d#12:00~13:00;d#17:00~24:00;&quot; GanttInclude=&quot;&quot; GanttBackground=&quot;w#12/20/2010;w#12/19/2010~12/20/2010;w#12/25/2010~12/26/2010;&quot; GanttMark=&quot;12/21/2010 00:00:00&quot; GanttShowBounds=&quot;1&quot; GanttCorrectDependencies=&quot;1&quot; GanttStrict=&quot;1&quot; GanttIncorrectDependencies=&quot;1&quot; GanttCheckDependencies=&quot;3&quot; GanttDeleteDependencies=&quot;1&quot; GanttCheckExclude=&quot;2&quot; GanttEdit=&quot;0&quot; GanttStart=&quot;From&quot; GanttEnd=&quot;To&quot; GanttDuration=&quot;Dur&quot; GanttComplete=&quot;PcC&quot; GanttMinStart=&quot;MinFrom&quot; GanttMaxStart=&quot;MaxFrom&quot; GanttMinEnd=&quot;MinTo&quot; GanttMaxEnd=&quot;MaxTo&quot; GanttResources=&quot;ResD&quot; GanttAncestors=&quot;Pre&quot; GanttDescendants=&quot;Suc&quot; OnDblClickGantt=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditTask(Grid.ARow);return true;&quot; /&gt;&lt;/RightCols&gt;&lt;Header id=&quot;ID&quot; Nm=&quot;&quot; RNm=&quot;&quot; Ord=&quot;&quot; Emp=&quot;&quot; Alrt=&quot;&quot; AlrtA=&quot;&quot; AlrtC=&quot;&quot; Typ=&quot;&quot; Key=&quot;&quot; Pos=&quot;&quot; Desc=&quot;Task Name&quot; Dur=&quot;Duration&quot; From=&quot;Start&quot; To=&quot;Finish&quot; MinFrom=&quot;&quot; MaxFrom=&quot;&quot; MinTo=&quot;&quot; MaxTo=&quot;&quot; Days=&quot;Effort&quot; Alloc=&quot;Allocated&quot; Conf=&quot;Confirmed&quot; Pre=&quot;Predecessors&quot; Suc=&quot;Successors&quot; WBS=&quot;Outline&quot; ResC=&quot;&quot; ResD=&quot;Resource Names&quot; Pc=&quot;% Complete&quot; PcC=&quot;&quot; G=&quot;&quot; /&gt;&lt;Toolbar Visible=&quot;0&quot; Space=&quot;-1&quot; /&gt;&lt;Actions OnDblClickRow=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditTask(Row,Col);return true;&quot; /&gt;&lt;Head /&gt;&lt;Foot /&gt;&lt;/Grid&gt;"
                                                type="hidden"><input id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks_Data"
                                                    name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$tgTasks_Data"
                                                    value="&lt;Grid&gt;&lt;Body&gt;&lt;B&gt;&lt;I Def=&quot;Task&quot; id=&quot;1&quot; Key=&quot;62&quot; Emp=&quot;0&quot; Desc=&quot;Project Kick Off&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/13/2010 08:00:00&quot; Days=&quot;0&quot; Suc=&quot;2&quot; Pc=&quot;100&quot; Conf=&quot;1&quot; WBS=&quot;1&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;2&quot; Key=&quot;63&quot; Emp=&quot;0&quot; Desc=&quot;Document Requirements&quot; From=&quot;12/13/2010 08:00:00&quot; To=&quot;12/14/2010 17:00:00&quot; Days=&quot;2&quot; Suc=&quot;3&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;2&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;2-A30&quot; Ord=&quot;2&quot; Key=&quot;30&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Document Requirements&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/13/2010 08:00:00&quot; To=&quot;12/14/2010 17:00:00&quot; Alloc=&quot;2&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;3&quot; Key=&quot;64&quot; Emp=&quot;0&quot; Desc=&quot;Analysis Stage Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/14/2010 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;4;9&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;3&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;4&quot; Key=&quot;65&quot; Emp=&quot;0&quot; Desc=&quot;Write Login Screen&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/20/2010 17:00:00&quot; Days=&quot;4&quot; Suc=&quot;5&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;4&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;4-A31&quot; Ord=&quot;4&quot; Key=&quot;31&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Write Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/20/2010 17:00:00&quot; Alloc=&quot;4&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;5&quot; Key=&quot;66&quot; Emp=&quot;0&quot; Desc=&quot;Test Login Screen&quot; From=&quot;12/21/2010 08:00:00&quot; To=&quot;12/22/2010 17:00:00&quot; Days=&quot;2&quot; Suc=&quot;6&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;5&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;5-A32&quot; Ord=&quot;5&quot; Key=&quot;32&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Test Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/21/2010 08:00:00&quot; To=&quot;12/22/2010 17:00:00&quot; Alloc=&quot;2&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;6&quot; Key=&quot;67&quot; Emp=&quot;0&quot; Desc=&quot;Install Login Screen&quot; From=&quot;12/23/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;1&quot; Suc=&quot;7&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;6&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;6-A33&quot; Ord=&quot;6&quot; Key=&quot;33&quot; ResC=&quot;PROJECTMANAGER&quot; ResD=&quot;Project Manager&quot; Desc=&quot;Install Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/23/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Alloc=&quot;1&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;7&quot; Key=&quot;68&quot; Emp=&quot;0&quot; Desc=&quot;Login Screen Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;8&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;7&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;8&quot; Key=&quot;69&quot; Emp=&quot;0&quot; Desc=&quot;Use Login Screen&quot; From=&quot;12/24/2010 08:00:00&quot; To=&quot;12/30/2010 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;12&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;8&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;8-A34&quot; Ord=&quot;8&quot; Key=&quot;34&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Use Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/24/2010 08:00:00&quot; To=&quot;12/30/2010 17:00:00&quot; Alloc=&quot;5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;9&quot; Key=&quot;70&quot; Emp=&quot;0&quot; Desc=&quot;Write Activity Maintenance Screen&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/16/2010 17:00:00&quot; Days=&quot;2&quot; Suc=&quot;10&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;9&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;9-A35&quot; Ord=&quot;9&quot; Key=&quot;35&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Write Activity Maintenance Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/16/2010 17:00:00&quot; Alloc=&quot;2&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;10&quot; Key=&quot;71&quot; Emp=&quot;0&quot; Desc=&quot;Test Activity Maintenance Screen&quot; From=&quot;12/17/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;11&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;10&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;10-A36&quot; Ord=&quot;10&quot; Key=&quot;36&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Test Activity Maintenance Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/17/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Alloc=&quot;5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;11&quot; Key=&quot;72&quot; Emp=&quot;0&quot; Desc=&quot;Activity Screen Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;12&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;11&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;12&quot; Key=&quot;73&quot; Emp=&quot;0&quot; Desc=&quot;Test Report Criteria Selection Screen&quot; From=&quot;12/31/2010 08:00:00&quot; To=&quot;1/6/2011 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;13&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;12&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;12-A37&quot; Ord=&quot;12&quot; Key=&quot;37&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Test Report Criteria Selection Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/31/2010 08:00:00&quot; To=&quot;1/6/2011 17:00:00&quot; Alloc=&quot;2.5&quot; Pc=&quot;&quot; /&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;12-A38&quot; Ord=&quot;12&quot; Key=&quot;38&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Test Report Criteria Selection Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/31/2010 08:00:00&quot; To=&quot;1/6/2011 17:00:00&quot; Alloc=&quot;2.5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;13&quot; Key=&quot;74&quot; Emp=&quot;0&quot; Desc=&quot;Install Report Criteria Selection Screen&quot; From=&quot;1/7/2011 08:00:00&quot; To=&quot;1/13/2011 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;14&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;13&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;13-A39&quot; Ord=&quot;13&quot; Key=&quot;39&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Install Report Criteria Selection Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;1/7/2011 08:00:00&quot; To=&quot;1/13/2011 17:00:00&quot; Alloc=&quot;5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;14&quot; Key=&quot;75&quot; Emp=&quot;0&quot; Desc=&quot;Report Criteria Screen Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;1/13/2011 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;14&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;15&quot; Key=&quot;-15&quot; Emp=&quot;1&quot; Typ=&quot;Task&quot; /&gt;&lt;/B&gt;&lt;/Body&gt;&lt;/Grid&gt;"
                                                    type="hidden"><div id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks"
                                                        style="height: 397px; width: 100%; overflow: hidden;">
                                                        <div style="height: 397px;" onclick="return Grids[0].GridClick(event)" onmousemove="return Grids[0].GridMouseMove(event)"
                                                            onmouseover="return Grids[0].GridMouseOver(event)" onmousedown="return Grids[0].GridMouseDown(event)"
                                                            onmouseup="return Grids[0].GridMouseUp(event)" ondblclick="return Grids[0].GridDblClick(event)"
                                                            oncontextmenu="return Grids[0].GridRightClick(event)">
                                                            <div style="height: 0px; overflow: hidden;">
                                                                <input onfocus="Grids[0].ActionTabRight();" type="text"></div>
                                                            <div class="GORowAbove" style="display: none; width: 1379px;" onmousemove="Grids[0].SpaceMouseMove(event,1);"
                                                                align="left">
                                                                <table cellpadding="0" cellspacing="0">
                                                                    <tbody>
                                                                        <tr style="height: 17px;">
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Correct";' onmousedown='Grids[0].TmpSpaceCol="Correct";'
                                                                                class=" GOCellSpaceButton GOToolCorrect GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Save";' onmousedown='Grids[0].TmpSpaceCol="Save";'
                                                                                class=" GOCellSpaceButton GOToolSave GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Reload";' onmousedown='Grids[0].TmpSpaceCol="Reload";'
                                                                                class=" GOCellSpaceButton GOToolReload GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Repaint";' onmousedown='Grids[0].TmpSpaceCol="Repaint";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Print";' onmousedown='Grids[0].TmpSpaceCol="Print";'
                                                                                class=" GOCellSpaceButton GOToolPrint GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="ExportPDF";' onmousedown='Grids[0].TmpSpaceCol="ExportPDF";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Export";' onmousedown='Grids[0].TmpSpaceCol="Export";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Undo";' onmousedown='Grids[0].TmpSpaceCol="Undo";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Redo";' onmousedown='Grids[0].TmpSpaceCol="Redo";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Add";' onmousedown='Grids[0].TmpSpaceCol="Add";'
                                                                                class=" GOCellSpaceButton GOToolAdd GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="AddChild";' onmousedown='Grids[0].TmpSpaceCol="AddChild";'
                                                                                class=" GOCellSpaceButton GOToolAddChild GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Sort";' onmousedown='Grids[0].TmpSpaceCol="Sort";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Calc";' onmousedown='Grids[0].TmpSpaceCol="Calc";'
                                                                                class=" GOCellSpaceButton GOToolCalc1 GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="ExpandAll";' onmousedown='Grids[0].TmpSpaceCol="ExpandAll";'
                                                                                class=" GOCellSpaceButton GOToolExpandAll GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="CollapseAll";' onmousedown='Grids[0].TmpSpaceCol="CollapseAll";'
                                                                                class=" GOCellSpaceButton GOToolCollapseAll GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="ZoomIn";' onmousedown='Grids[0].TmpSpaceCol="ZoomIn";'
                                                                                class=" GOCellSpaceButton GOToolZoomIn GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="ZoomOut";' onmousedown='Grids[0].TmpSpaceCol="ZoomOut";'
                                                                                class=" GOCellSpaceButton GOToolZoomOut1 GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="ZoomFit";' onmousedown='Grids[0].TmpSpaceCol="ZoomFit";'
                                                                                class=" GOCellSpaceButton GOToolZoomFit GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Columns";' onmousedown='Grids[0].TmpSpaceCol="Columns";'
                                                                                class=" GOCellSpaceButton GOToolColumns GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Cfg";' onmousedown='Grids[0].TmpSpaceCol="Cfg";'
                                                                                class=" GOCellSpaceButton GOToolCfg GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Help";' onmousedown='Grids[0].TmpSpaceCol="Help";'
                                                                                class=" GOCellSpaceButton GOToolHelp GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Debug";' onmousedown='Grids[0].TmpSpaceCol="Debug";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleTitle";' onmousedown='Grids[0].TmpSpaceCol="StyleTitle";'
                                                                                class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <span style="color: rgb(153, 153, 153);">Style:</span>
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleStandard";' onmousedown='Grids[0].TmpSpaceCol="StyleStandard";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Standard
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleLight";' onmousedown='Grids[0].TmpSpaceCol="StyleLight";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Light
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleOffice";' onmousedown='Grids[0].TmpSpaceCol="StyleOffice";'
                                                                                class=" GOCellSpaceButton GOToolHtml1 GOCellSpaceAbove">
                                                                                Office
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleModern";' onmousedown='Grids[0].TmpSpaceCol="StyleModern";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Modern
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleBorders";' onmousedown='Grids[0].TmpSpaceCol="StyleBorders";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Borders
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleRobust";' onmousedown='Grids[0].TmpSpaceCol="StyleRobust";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Robust
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StylePlain";' onmousedown='Grids[0].TmpSpaceCol="StylePlain";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Plain
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="StyleColors";' onmousedown='Grids[0].TmpSpaceCol="StyleColors";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Colors
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Empty";' onmousedown='Grids[0].TmpSpaceCol="Empty";'
                                                                                class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <div style="overflow: hidden; width: 0px;">
                                                                                    <div dir="ltr" style="cursor: default; padding-top: 2px; padding-left: 3px; padding-right: 3px;
                                                                                        white-space: nowrap; font: 9px arial; color: rgb(119, 119, 119);">
                                                                                        <span style="cursor: pointer;" onmouseover='this.style.color="black";this.style.textDecoration="underline"'
                                                                                            onmouseout='this.style.color="#777777";this.style.textDecoration=""' title="http://www.treegrid.com/"
                                                                                            onclick='window.open("http://www.treegrid.com/");'>EJS TreeGrid v6.7</span></div>
                                                                                </div>
                                                                            </td>
                                                                            <td onmousemove='Grids[0].TmpSpaceCol="Resize";' onmousedown='Grids[0].TmpSpaceCol="Resize";'
                                                                                class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <div style="overflow: hidden; width: 7px;">
                                                                                    &nbsp;</div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <table class="GOMainTable" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks"
                                                                cellpadding="0" cellspacing="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOHeadLeft" style="overflow: hidden; width: 56px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 27px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 10px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                        <tr onmousemove='Grids[0].ARow=Grids[0].Rows["ID"];Grids[0].ASec=0;' onmousedown='Grids[0].ARow=Grids[0].Rows["ID"];Grids[0].ASec=0;'
                                                                                            class="GOHeaderRow " style="height: 29px;">
                                                                                            <td class=" GOWrap0 GOCellHeaderPanel GOCellBorderFF3 HideCol0Panel">
                                                                                                <u class="GOPanelMoveOff GOImage"></u><u class="GOPanelSelect GOImage"></u>
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol0id" colspan="2">
                                                                                                ID
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOHeadMid" style="overflow: hidden; width: 747px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 12px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 0px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 243px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 41px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 105px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 116px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 26px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 65px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                        <tr onmousemove='Grids[0].ARow=Grids[0].Rows["ID"];Grids[0].ASec=0;' onmousedown='Grids[0].ARow=Grids[0].Rows["ID"];Grids[0].ASec=0;'
                                                                                            class="GOHeaderRow " style="height: 29px;">
                                                                                            <td class=" GOWrap0 GOCellHeaderPanel GOCellBorderFF3 HideCol0Alrt" colspan="2">
                                                                                                <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                    class=" GOPanelEmpty"></u>
                                                                                            </td>
                                                                                            <td class=" GOCellBorderFF3 GOCell GONoRight GOEmpty">
                                                                                                &nbsp;
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GONoLeft GOCellBorderFF3 HideCol0Desc"
                                                                                                colspan="2">
                                                                                                Task Name
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol0Dur" colspan="2">
                                                                                                Duration
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol0From" colspan="2">
                                                                                                Start
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol0To" colspan="2">
                                                                                                Finish
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol0Days" colspan="2">
                                                                                                Effort
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                Predecessors
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOHeadRight" style="overflow: hidden; width: 576px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 672px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                        <tr onmousemove='Grids[0].ARow=Grids[0].Rows["ID"];Grids[0].ASec=0;' onmousedown='Grids[0].ARow=Grids[0].Rows["ID"];Grids[0].ASec=0;'
                                                                                            class="GOHeaderRow " style="height: 29px;">
                                                                                            <td style="" class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol0G">
                                                                                                <div class="GOGanttHeader">
                                                                                                    <table class="GOGanttHeaderTable" cellpadding="0" cellspacing="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 98px;">
                                                                                                                        <div class="GOGanttHeader1">
                                                                                                                            12/6/2010</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 98px;">
                                                                                                                        <div class="GOGanttHeader1">
                                                                                                                            12/13/2010</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 98px;">
                                                                                                                        <div class="GOGanttHeader1">
                                                                                                                            12/20/2010</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 98px;">
                                                                                                                        <div class="GOGanttHeader1">
                                                                                                                            12/27/2010</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 98px;">
                                                                                                                        <div class="GOGanttHeader1">
                                                                                                                            1/3/2011</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 98px;">
                                                                                                                        <div class="GOGanttHeader1">
                                                                                                                            1/10/2011</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 84px;">
                                                                                                                        <div class="GOGanttHeader1">
                                                                                                                            1/17/2011 ...</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                    <table class="GOGanttHeaderTable" cellpadding="0" cellspacing="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            M</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            W</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            F</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            M</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            W</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            F</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            M</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            W</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            F</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            M</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            W</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            F</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            M</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            W</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            F</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            M</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            W</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            F</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            M</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            W</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            T</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            F</div>
                                                                                                                    </div>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <div style="overflow: hidden; white-space: nowrap; width: 14px;">
                                                                                                                        <div class="GOGanttHeader2">
                                                                                                                            S</div>
                                                                                                                    </div>
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
                                                                        </td>
                                                                        <td dir="ltr" rowspan="3" valign="top">
                                                                            <div class="GOVScroll" style="width: 17px; display: none;">
                                                                                <div style="width: 17px; overflow: auto;" onscroll="Grids[0].Scrolled();" onmousemove="Grids[0].ARow=null;Grids[0].ASec=-1;">
                                                                                    <div style="width: 1px; overflow: hidden;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td rowspan="4" style="display: none;">
                                                                            <div>
                                                                                &nbsp;</div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOBodyLeft" style="overflow: hidden; width: 56px; height: 285px;">
                                                                                <table cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 27px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 30px;">
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                                <div style="margin-top: -1000020px; height: 21px; overflow: hidden;">
                                                                                </div>
                                                                                <div class="GOPageOne">
                                                                                    <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <th style="height: 0px; width: 27px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 10px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["1"];Grids[0].ASec=0;' class="GODataRow  GOClassDetailSelected"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    1
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["2"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    2
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["3"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    3
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["4"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    4
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["5"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    5
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["6"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    6
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["7"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    7
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["8"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    8
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["9"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    9
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["10"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    10
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["11"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    11
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["12"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    12
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["13"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    13
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["14"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    14
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["15"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    15
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div style="height: 0px; overflow: hidden;">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOBodyMid" style="overflow: hidden; width: 747px; height: 285px;">
                                                                                <table cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 51px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 69px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 8px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 14px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 32px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 14px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 14px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 34px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 26px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 14px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 263px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 61px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 125px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 136px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 27px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 27px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 27px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 27px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 46px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 56px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 75px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 85px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 100px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 100px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 8px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 163px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 77px;">
                                                                                                </div>
                                                                                            </td>
                                                                                            <td style="display: none;">
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 28px;">
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                                <div style="margin-top: -1000020px; height: 21px; overflow: hidden;">
                                                                                </div>
                                                                                <div class="GOPageOne">
                                                                                    <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <th style="height: 0px; width: 12px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 26px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 217px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 41px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 105px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 116px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 26px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 65px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["1"];Grids[0].ASec=0;' class="GODataRow  GOClassDetailSelected"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="background-image: url(&quot;../../Content/images/common/complete.gif&quot;);"
                                                                                                        class=" GOPanelImage GOImage"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOClassFocusedCell GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOClassFocusedCell GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc"
                                                                                                    colspan="2">
                                                                                                    Project Kick Off
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOEmpty GOCellBorderFF3 HideCol0From">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Mon, 13 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOEmpty GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["2"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Document Requirements
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    2
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Mon, 13 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Tue, 14 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    2
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    1
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["3"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Analysis Stage Complete
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOEmpty GOCellBorderFF3 HideCol0From">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Tue, 14 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    2
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["4"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Write Login Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    4
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Wed, 15 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Mon, 20 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    4
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    3
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["5"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Test Login Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    2
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Tue, 21 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Wed, 22 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    2
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    4
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["6"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Install Login Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    1
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Thu, 23 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 23 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    1
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    5
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["7"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Login Screen Complete
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOEmpty GOCellBorderFF3 HideCol0From">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 23 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    6
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["8"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Use Login Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Fri, 24 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 30 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    7
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["9"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Write Activity Maintenance Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    2
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Wed, 15 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 16 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    2
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    3
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["10"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Test Activity Maintenance Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Fri, 17 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 23 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    9
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["11"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px; cursor: text;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Activity Screen Complete
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOEmpty GOCellBorderFF3 HideCol0From">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 23 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    10
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["12"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Test Report Criteria Selection Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Fri, 31 Dec 2010
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 6 Jan 2011
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    8;11
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["13"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Install Report Criteria Selection Screen
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0From">
                                                                                                    Fri, 7 Jan 2011
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 13 Jan 2011
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    5
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    12
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["14"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    Report Criteria Screen Complete
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOEmpty GOCellBorderFF3 HideCol0From">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOCellBorderFF3 HideCol0To">
                                                                                                    Thu, 13 Jan 2011
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    0
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    13
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["15"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOAlignLeft GOCellPanel GOCellBorderFF3 HideCol0Alrt" colspan="2" align="Left">
                                                                                                    <u style="" class=" GOPanelEmpty"></u><u style="" class=" GOPanelEmpty"></u><u style=""
                                                                                                        class=" GOPanelEmpty"></u>
                                                                                                </td>
                                                                                                <td class=" GOCellBorderFF3 GOCell GONoRight GONoTreeLines1">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GONoLeft GOEmpty GOCellBorderFF3 HideCol0Desc" colspan="2">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOEmpty GOCellBorderFF3 HideCol0Dur" colspan="2"
                                                                                                    align="Right">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOEmpty GOCellBorderFF3 HideCol0From">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODate GOCell GONoRight GOEmpty GOCellBorderFF3 HideCol0To">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GODateRight GOEmpty GOCell GONoLeft GOCellBorderFF3">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOAlignRight GOFloat GOCell GOEmpty GOCellBorderFF3 HideCol0Days" colspan="2"
                                                                                                    align="Right">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td class=" GOText GOCell GOEmpty GOCellBorderFF3 HideCol0Pre" colspan="2">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div style="height: 0px; overflow: hidden;">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOBodyRight" style="overflow: hidden; width: 576px; height: 285px;">
                                                                                <table cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div style="overflow: hidden; height: 1000000px; width: 672px;">
                                                                                                    <div style="height: 1000000px;" class="GOGanttBack">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: -32px; width: 37px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 7px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 10px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 21px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 24px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 35px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 38px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 49px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 52px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 63px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 66px; width: 37px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 105px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 108px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 119px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 122px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 133px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 136px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 147px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 150px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 161px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 164px; width: 37px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 203px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 206px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 217px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 220px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 231px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 234px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 245px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 248px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 259px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 262px; width: 37px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 301px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 304px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 315px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 318px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 329px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 332px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 343px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 346px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 357px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 360px; width: 37px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 399px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 402px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 413px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 416px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 427px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 430px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 441px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 444px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 455px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 458px; width: 37px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 497px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 500px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 511px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 514px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 525px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 528px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 539px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 542px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 553px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 556px; width: 37px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 595px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 598px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 609px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 612px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 623px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 626px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 637px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 640px; width: 9px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 651px; width: 1px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 654px; width: 19px;"
                                                                                                        class="GOGanttExclude">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 0px; width: 1px;"
                                                                                                        class="GOGanttBack1">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 98px; width: 1px;"
                                                                                                        class="GOGanttBack1">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 196px; width: 1px;"
                                                                                                        class="GOGanttBack1">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 294px; width: 1px;"
                                                                                                        class="GOGanttBack1">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 392px; width: 1px;"
                                                                                                        class="GOGanttBack1">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 490px; width: 1px;"
                                                                                                        class="GOGanttBack1">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 588px; width: 1px;"
                                                                                                        class="GOGanttBack1">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 84px; width: 14px;"
                                                                                                        class="GOGanttBack2">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 182px; width: 14px;"
                                                                                                        class="GOGanttBack2">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 280px; width: 14px;"
                                                                                                        class="GOGanttBack2">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 378px; width: 14px;"
                                                                                                        class="GOGanttBack2">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 476px; width: 14px;"
                                                                                                        class="GOGanttBack2">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 574px; width: 14px;"
                                                                                                        class="GOGanttBack2">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 70px; width: 14px;"
                                                                                                        class="GOGanttBack3">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 168px; width: 14px;"
                                                                                                        class="GOGanttBack3">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 266px; width: 14px;"
                                                                                                        class="GOGanttBack3">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 364px; width: 14px;"
                                                                                                        class="GOGanttBack3">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 462px; width: 14px;"
                                                                                                        class="GOGanttBack3">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 560px; width: 14px;"
                                                                                                        class="GOGanttBack3">
                                                                                                    </div>
                                                                                                    <div style="height: 1000000px; margin-top: -1000000px; margin-left: 658px; width: 14px;"
                                                                                                        class="GOGanttBack3">
                                                                                                    </div>
                                                                                                    <div style="cursor: e-resize; height: 1000000px; margin-top: -1000000px; margin-left: 98px;"
                                                                                                        id="Gctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasksLineGBase"
                                                                                                        class="GOGanttBase">
                                                                                                    </div>
                                                                                                    <div style="cursor: e-resize; height: 1000000px; margin-top: -1000000px; margin-left: 546px;"
                                                                                                        id="Gctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasksLineGFinish"
                                                                                                        class="GOGanttFinishAuto">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                                <div style="margin-top: -1000020px; height: 21px; overflow: hidden;">
                                                                                </div>
                                                                                <div class="GOPageOne">
                                                                                    <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <th style="height: 0px; width: 672px;">
                                                                                                </th>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["1"];Grids[0].ASec=0;' class="GODataRow  GOClassDetailSelected"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div class="GOGanttMilestone100" style="margin-left: 90px; margin-top: 0px; height: 500px;
                                                                                                            margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 106px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 109px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 116px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["2"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 98px; width: 28px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 126px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 88px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 86px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 129px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 87px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 136px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Alan Barnacle</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["3"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div class="GOGanttMilestone0" style="margin-left: 118px; margin-top: 0px; height: 500px;
                                                                                                            margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 134px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 134px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 108px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 106px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 137px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 137px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 107px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 144px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["4"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 126px; width: 84px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 210px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 116px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 114px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 213px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 115px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 137px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 220px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Janet J Bailey</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["5"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 210px; width: 28px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 238px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 200px; width: 15px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 198px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 241px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 199px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 137px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 248px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Janet J Bailey</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["6"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 238px; width: 14px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 252px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 228px; width: 15px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 226px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 255px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 227px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 137px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 262px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Project Manager</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["7"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div class="GOGanttMilestone0" style="margin-left: 244px; margin-top: 0px; height: 500px;
                                                                                                            margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 260px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 234px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 232px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 263px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 233px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 137px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 270px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["8"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 252px; width: 98px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 350px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 242px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 240px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 353px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 241px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 137px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 360px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Janet J Bailey</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["9"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 126px; width: 28px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 154px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 116px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 114px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 157px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 115px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 353px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 164px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Alan Barnacle</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["10"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 154px; width: 98px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 252px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 144px; width: 15px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 142px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 255px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 143px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 353px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 262px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Alan Barnacle</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["11"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div class="GOGanttMilestone0" style="margin-left: 244px; margin-top: 0px; height: 500px;
                                                                                                            margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 260px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 234px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 232px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 263px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 233px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVert" style="margin-left: 353px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 270px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["12"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td style="" class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 350px; width: 98px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 448px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 338px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 264px; width: 77px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 340px; width: 15px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 338px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 451px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop" style="margin-left: 263px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 339px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 458px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Janet J Bailey;Alan Barnacle</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["13"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div style="margin-left: 448px; width: 98px; margin-top: 0px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGantt0Out">
                                                                                                                <div class="GOGantt0In">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 546px; width: 5px;">
                                                                                                                <div class="GOGanttDepHorzIn">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 438px; width: 15px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 436px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertBottom" style="margin-left: 549px;">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 437px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 556px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Alan Barnacle</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["14"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div class="GOGanttMilestone0" style="margin-left: 538px; margin-top: 0px; height: 500px;
                                                                                                            margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: -500px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                            <div class="GOGanttDepFirst">
                                                                                                                &nbsp;</div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 528px; width: 23px;">
                                                                                                                <div class="GOGanttDepHorzTop">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 526px; width: 12px;">
                                                                                                                <div class="GOGanttDepArrowRight">
                                                                                                                    &nbsp;</div>
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepVertTop2" style="margin-left: 527px;">
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div style="margin-left: 564px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr onmousemove='Grids[0].ARow=Grids[0].Rows["15"];Grids[0].ASec=0;' class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOGantt GOCell GOCellBorderFF3 HideCol0G">
                                                                                                    <div style="overflow: hidden; height: 19px;">
                                                                                                        <div class="GOGanttMark" style="margin-left: 210px; width: 1px; margin-top: 0px;
                                                                                                            height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                        <div style="margin-top: -500px; height: 500px; margin-bottom: 0px; overflow: hidden;">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div style="height: 0px; overflow: hidden;">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="3">
                                                                            <div style="width: 1381px; overflow: hidden; height: 58px;" class="GOFillRow">
                                                                                <table cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr style="height: 17px;">
                                                                                            <td>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOFootLeft GONone" style="overflow: hidden; width: 56px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 27px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 10px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOFootMid GONone" style="overflow: hidden; width: 747px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 12px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 0px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 243px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 41px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 105px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 116px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 26px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 65px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOFootRight GONone" style="overflow: hidden; width: 576px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 672px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="1">
                                                                            <div onmousemove="Grids[0].ARow=null;Grids[0].ASec=-2;" class="GOHScrollLeft" style="height: 17px;
                                                                                overflow: hidden; width: 56px;">
                                                                                <div class="GOHScrollHidden" style="height: 17px; overflow: auto; width: 56px;" onscroll="Grids[0].Scrolled();"
                                                                                    onmousemove="Grids[0].ARow=null;Grids[0].ASec=-2;">
                                                                                    <div style="height: 1px; overflow: hidden; width: 56px;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td colspan="1">
                                                                            <div onmousemove="Grids[0].ARow=null;Grids[0].ASec=-3;" class="GOHScrollMid" style="height: 17px;
                                                                                overflow: hidden; width: 747px;">
                                                                                <div class="GOHScrollHidden" style="height: 17px; overflow: auto; width: 747px;"
                                                                                    onscroll="Grids[0].Scrolled();" onmousemove="Grids[0].ARow=null;Grids[0].ASec=-3;">
                                                                                    <div style="height: 1px; overflow: hidden; width: 747px;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td colspan="1">
                                                                            <div onmousemove="Grids[0].ARow=null;Grids[0].ASec=-4;" class="GOHScrollRightResize"
                                                                                style="height: 17px; overflow: hidden; width: 572px;">
                                                                                <div class="" style="height: 17px; overflow: auto; width: 572px;" onscroll="Grids[0].Scrolled();"
                                                                                    onmousemove="Grids[0].ARow=null;Grids[0].ASec=-4;">
                                                                                    <div style="height: 1px; overflow: hidden; width: 666px;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="display: none;" onmousemove="Grids[0].ARow=null;Grids[0].ASec=-5;">
                                                                            <div class="GOXScroll" style="height: 17px; width: 17px; overflow: hidden;">
                                                                                &nbsp;</div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div style="margin-right: 0px;" class="GOResizeGrid" id="Grid0Resize">
                                                            </div>
                                                            <div style="height: 0px; overflow: hidden;">
                                                                <input onfocus="Grids[0].ActionTabLeft();" type="text"></div>
                                                            <div style="margin-top: -100000px;" id="Grid0FocusCursors">
                                                                <div style="height: 1000px;" align="left">
                                                                    <div class="GOEditCellInput" style="display: none;">
                                                                    </div>
                                                                </div>
                                                                <div style="height: 1000px;" align="left">
                                                                    <div class="GOPagerFocus" style="display: none;">
                                                                    </div>
                                                                </div>
                                                                <div style="height: 4000px;" align="left">
                                                                    <div style="">
                                                                        <div class="GOFocusPanelBackground GOCursorBackground" style="top: 97638px; left: 1px;
                                                                            height: 18px; width: 27px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBackground GOCursorBackground" style="top: 97620px; left: 28px;
                                                                            height: 18px; width: 62px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBackground GOCursorBackground" style="top: 97602px; left: 352px;
                                                                            height: 18px; width: 1px; display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBackground GOCursorBackground" style="top: 97602px; left: 352px;
                                                                            height: 18px; width: 1030px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div style="height: 4000px;" align="left">
                                                                    <div style="">
                                                                        <div class="GOFocusRowBorder GOCursorBorderLeft" style="height: 20px; left: 0px;
                                                                            top: 93637px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBorder GOCursorBorderRight" style="height: 20px; left: 1382px;
                                                                            top: 93617px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBorder GOCursorBorderTop" style="width: 1381px; left: 1px;
                                                                            top: 93597px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBorder GOCursorBorderBottom" style="width: 1381px; left: 1px;
                                                                            top: 93615px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div style="height: 4000px;" align="left">
                                                                    <div style="">
                                                                        <div class="GOFocusCellBorder GOCursorBorderLeft" style="height: 20px; left: 89px;
                                                                            top: 89637px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusCellBorder GOCursorBorderRight" style="height: 20px; left: 352px;
                                                                            top: 89617px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusCellBorder GOCursorBorderTop" style="width: 262px; left: 90px;
                                                                            top: 89597px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusCellBorder GOCursorBorderBottom" style="width: 262px; left: 90px;
                                                                            top: 89615px;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                            <input id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments_Layout"
                                                value="&lt;Grid&gt;&lt;Lang&gt;&lt;Alert DelSelected=&quot;Are you sure you want to delete %d selected Assignments?&quot; /&gt;&lt;Gantt GanttRunEdit=&quot;&quot; /&gt;&lt;/Lang&gt;&lt;Cfg id=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments&quot; Code=&quot;GTACRYZKGPJXGB&quot; SuppressCfg=&quot;4&quot; TipStart=&quot;100&quot; GanttLap=&quot;1&quot; Pasting=&quot;0&quot; IdChars=&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot; Detail=&quot;1&quot; ShowDeleted=&quot;0&quot; Sorting=&quot;0&quot; Dragging=&quot;0&quot; Dropping=&quot;0&quot; StaticCursor=&quot;1&quot; CalcOrder=&quot;*&quot; Style=&quot;Office&quot; MinTagHeight=&quot;50&quot; MaxHeight=&quot;1&quot; MaxWidth=&quot;1&quot; NameCol=&quot;RNm&quot; /&gt;&lt;DefCols&gt;&lt;D Name=&quot;Mnu&quot; Type=&quot;Text&quot; Menu=&quot;{Items:[{Name:'Add',Text:'Add Assignment',Icon:'../../Content/images/common/addAssignment.gif',IconWidth:0,OnClick:function(){addAssignment();}},{Name:'Split',Text:'Split Assignment',Icon:'../../Content/images/common/splitAssignment.gif',IconWidth:0,Hidden:1,OnClick:function(){splitAssignment();}},{Name:'ChangeRes',Text:'Change Selected Assignments Resource',Icon:'../../Content/images/common/meniitem_mapassignments.gif',IconWidth:0,OnClick:function(){changeAssignmentResources();}},{Name:'DeleteSelected',Text:'Delete Selected Assignments',Icon:'../../Content/images/common/deleteAssignment.gif',IconWidth:0,OnClick:function(){deleteAssignments();}},{Name:'-'},{Name:'Edit',Text:'Edit...',Icon:'../../Content/images/common/menuitem_blank.gif',IconWidth:0,OnClick:function(){EditAssignment();}}],ExpandTime:0,ShowCursor:0}&quot; /&gt;&lt;/DefCols&gt;&lt;Root CDef=&quot;AssignF&quot; /&gt;&lt;Def&gt;&lt;D Name=&quot;R&quot; Recalc=&quot;3&quot; /&gt;&lt;D Name=&quot;Assign&quot; CalcOrder=&quot;RNm&quot; /&gt;&lt;D Name=&quot;AssignR&quot; Def=&quot;Assign&quot; MinFromCanEdit=&quot;0&quot; MaxToCanEdit=&quot;0&quot; /&gt;&lt;D Name=&quot;AssignF&quot; Def=&quot;Assign&quot; DurCanEdit=&quot;0&quot; FromCanEdit=&quot;0&quot; ToCanEdit=&quot;0&quot; /&gt;&lt;/Def&gt;&lt;Panel VisibleLap=&quot;1&quot; CanHide=&quot;0&quot; Move=&quot;1&quot; Delete=&quot;0&quot; /&gt;&lt;LeftCols&gt;&lt;C Name=&quot;Ord&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Def=&quot;Mnu&quot; Visible=&quot;0&quot; /&gt;&lt;/LeftCols&gt;&lt;Cols&gt;&lt;C Name=&quot;id&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;Nm&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;RNm&quot; Type=&quot;Text&quot; CanHide=&quot;0&quot; Formula=&quot;Nm + ' ' + Desc&quot; Visible=&quot;0&quot; /&gt;&lt;C Name=&quot;Key&quot; Type=&quot;Int&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;ResC&quot; Type=&quot;Text&quot; Def=&quot;Mnu&quot; Width=&quot;200&quot; WidthPad=&quot;16&quot; Button=&quot;../../Content/images/common/gridSearch.gif&quot; OnClickSideButton=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.SearchAssignmentResource(Row);&quot; SideButtonTip=&quot;Search for Assignment Resource&quot; Icon=&quot;../../Content/images/common/button_pickbox.gif&quot; IconWidth=&quot;16&quot; IconAlign=&quot;Right&quot; OnClickSideIcon=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.PickAssignmentResource(Row);&quot; SideIconTip=&quot;Select Assignment Resource&quot; /&gt;&lt;C Name=&quot;ResD&quot; Type=&quot;Text&quot; CanEdit=&quot;0&quot; Def=&quot;Mnu&quot; RelWidth=&quot;1&quot; /&gt;&lt;C Name=&quot;Desc&quot; Type=&quot;Text&quot; Def=&quot;Mnu&quot; RelWidth=&quot;2&quot; Width=&quot;250&quot; /&gt;&lt;C Name=&quot;Dur&quot; Type=&quot;Float&quot; Align=&quot;Right&quot; Def=&quot;Mnu&quot; Visible=&quot;1&quot; Width=&quot;60&quot; Format=&quot;0.####&quot; EditFormat=&quot;0.####&quot; CanEmpty=&quot;1&quot; /&gt;&lt;C Name=&quot;From&quot; Type=&quot;Date&quot; Def=&quot;Mnu&quot; Width=&quot;125&quot; Format=&quot;ddd, d MMM yyyy&quot; EditFormat=&quot;g&quot; CanEmpty=&quot;1&quot; DefaultDate=&quot;12/21/2010 08:00:00&quot; /&gt;&lt;C Name=&quot;To&quot; Type=&quot;Date&quot; Def=&quot;Mnu&quot; Width=&quot;125&quot; Format=&quot;ddd, d MMM yyyy&quot; EditFormat=&quot;g&quot; CanEmpty=&quot;1&quot; DefaultDate=&quot;12/21/2010 17:00:00&quot; /&gt;&lt;C Name=&quot;MinFrom&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Width=&quot;80&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;MaxFrom&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Width=&quot;80&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;MinTo&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Width=&quot;80&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;MaxTo&quot; Type=&quot;Date&quot; CanHide=&quot;0&quot; Visible=&quot;0&quot; Width=&quot;80&quot; CanEmpty=&quot;1&quot; Format=&quot;d&quot; EditFormat=&quot;d&quot; /&gt;&lt;C Name=&quot;Days&quot; Type=&quot;Float&quot; CanHide=&quot;0&quot; Def=&quot;Mnu&quot; Visible=&quot;0&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;C Name=&quot;Alloc&quot; Type=&quot;Float&quot; Align=&quot;Right&quot; Def=&quot;Mnu&quot; Width=&quot;75&quot; Format=&quot;0.##&quot; EditFormat=&quot;0.##&quot; Button=&quot;../../Content/images/common/calculator.gif&quot; OnClickSideButton=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.CalculateResEffort(Row);&quot; SideButtonTip=&quot;Calculate Assignment Effort&quot; CanEmpty=&quot;1&quot; /&gt;&lt;C Name=&quot;Conf&quot; Type=&quot;Enum&quot; Def=&quot;Mnu&quot; Width=&quot;75&quot; Enum=&quot;&amp;#x1F;Yes&amp;#x1F;No&quot; EnumKeys=&quot;&amp;#x1F;1&amp;#x1F;2&quot; IconAlign=&quot;Right&quot; /&gt;&lt;C Name=&quot;Pc&quot; Type=&quot;Float&quot; Range=&quot;0&quot; CanHide=&quot;1&quot; Visible=&quot;0&quot; Width=&quot;100&quot; Format=&quot;g&quot; EditFormat=&quot;g&quot; /&gt;&lt;/Cols&gt;&lt;Header id=&quot;ID&quot; Nm=&quot;&quot; RNm=&quot;&quot; Ord=&quot;&quot; Key=&quot;&quot; ResC=&quot;Resource&quot; ResD=&quot;Description&quot; Desc=&quot;Assignment&quot; Dur=&quot;Duration&quot; From=&quot;Start&quot; To=&quot;Finish&quot; MinFrom=&quot;&quot; MaxFrom=&quot;&quot; MinTo=&quot;&quot; MaxTo=&quot;&quot; Days=&quot;&quot; Alloc=&quot;Effort&quot; Conf=&quot;Confirmed&quot; Pc=&quot;% Complete&quot; /&gt;&lt;Toolbar Visible=&quot;0&quot; Space=&quot;-1&quot; /&gt;&lt;Actions OnDblClickRow=&quot;ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan.EditAssignment(Row);return true;&quot; /&gt;&lt;Head /&gt;&lt;Body&gt;&lt;B /&gt;&lt;/Body&gt;&lt;Foot /&gt;&lt;/Grid&gt;"
                                                type="hidden"><input id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments_Data"
                                                    name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$tgAssignments_Data"
                                                    value="&lt;Grid&gt;&lt;Body&gt;&lt;B /&gt;&lt;/Body&gt;&lt;/Grid&gt;" type="hidden"><div
                                                        id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments"
                                                        style="height: 50px; width: 100%; overflow: hidden;">
                                                        <div style="height: 25px;" onclick="return Grids[1].GridClick(event)" onmousemove="return Grids[1].GridMouseMove(event)"
                                                            onmouseover="return Grids[1].GridMouseOver(event)" onmousedown="return Grids[1].GridMouseDown(event)"
                                                            onmouseup="return Grids[1].GridMouseUp(event)" ondblclick="return Grids[1].GridDblClick(event)"
                                                            oncontextmenu="return Grids[1].GridRightClick(event)">
                                                            <div style="height: 0px; overflow: hidden;">
                                                                <input onfocus="Grids[1].ActionTabRight();" type="text"></div>
                                                            <div class="GORowAbove" style="display: none; width: 1379px;" onmousemove="Grids[1].SpaceMouseMove(event,0);"
                                                                align="left">
                                                                <table cellpadding="0" cellspacing="0">
                                                                    <tbody>
                                                                        <tr style="height: 17px;">
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Correct";' onmousedown='Grids[1].TmpSpaceCol="Correct";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Save";' onmousedown='Grids[1].TmpSpaceCol="Save";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Reload";' onmousedown='Grids[1].TmpSpaceCol="Reload";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Repaint";' onmousedown='Grids[1].TmpSpaceCol="Repaint";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Print";' onmousedown='Grids[1].TmpSpaceCol="Print";'
                                                                                class=" GOCellSpaceButton GOToolPrint GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="ExportPDF";' onmousedown='Grids[1].TmpSpaceCol="ExportPDF";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Export";' onmousedown='Grids[1].TmpSpaceCol="Export";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Undo";' onmousedown='Grids[1].TmpSpaceCol="Undo";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Redo";' onmousedown='Grids[1].TmpSpaceCol="Redo";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Add";' onmousedown='Grids[1].TmpSpaceCol="Add";'
                                                                                class=" GOCellSpaceButton GOToolAdd GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="AddChild";' onmousedown='Grids[1].TmpSpaceCol="AddChild";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Sort";' onmousedown='Grids[1].TmpSpaceCol="Sort";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Calc";' onmousedown='Grids[1].TmpSpaceCol="Calc";'
                                                                                class=" GOCellSpaceButton GOToolCalc1 GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="ExpandAll";' onmousedown='Grids[1].TmpSpaceCol="ExpandAll";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="CollapseAll";' onmousedown='Grids[1].TmpSpaceCol="CollapseAll";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="ZoomIn";' onmousedown='Grids[1].TmpSpaceCol="ZoomIn";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="ZoomOut";' onmousedown='Grids[1].TmpSpaceCol="ZoomOut";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="ZoomFit";' onmousedown='Grids[1].TmpSpaceCol="ZoomFit";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Columns";' onmousedown='Grids[1].TmpSpaceCol="Columns";'
                                                                                class=" GOCellSpaceButton GOToolColumns GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Cfg";' onmousedown='Grids[1].TmpSpaceCol="Cfg";'
                                                                                class=" GOCellSpaceButton GOToolCfg GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Help";' onmousedown='Grids[1].TmpSpaceCol="Help";'
                                                                                class=" GOCellSpaceButton GOToolHelp GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Debug";' onmousedown='Grids[1].TmpSpaceCol="Debug";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleTitle";' onmousedown='Grids[1].TmpSpaceCol="StyleTitle";'
                                                                                class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <span style="color: rgb(153, 153, 153);">Style:</span>
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleStandard";' onmousedown='Grids[1].TmpSpaceCol="StyleStandard";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Standard
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleLight";' onmousedown='Grids[1].TmpSpaceCol="StyleLight";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Light
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleOffice";' onmousedown='Grids[1].TmpSpaceCol="StyleOffice";'
                                                                                class=" GOCellSpaceButton GOToolHtml1 GOCellSpaceAbove">
                                                                                Office
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleModern";' onmousedown='Grids[1].TmpSpaceCol="StyleModern";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Modern
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleBorders";' onmousedown='Grids[1].TmpSpaceCol="StyleBorders";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Borders
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleRobust";' onmousedown='Grids[1].TmpSpaceCol="StyleRobust";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Robust
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StylePlain";' onmousedown='Grids[1].TmpSpaceCol="StylePlain";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Plain
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="StyleColors";' onmousedown='Grids[1].TmpSpaceCol="StyleColors";'
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Colors
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Empty";' onmousedown='Grids[1].TmpSpaceCol="Empty";'
                                                                                class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <div style="overflow: hidden; width: 0px;">
                                                                                    <div dir="ltr" style="cursor: default; padding-top: 2px; padding-left: 3px; padding-right: 3px;
                                                                                        white-space: nowrap; font: 9px arial; color: rgb(119, 119, 119);">
                                                                                        <span style="cursor: pointer;" onmouseover='this.style.color="black";this.style.textDecoration="underline"'
                                                                                            onmouseout='this.style.color="#777777";this.style.textDecoration=""' title="http://www.treegrid.com/"
                                                                                            onclick='window.open("http://www.treegrid.com/");'>EJS TreeGrid v6.7</span></div>
                                                                                </div>
                                                                            </td>
                                                                            <td onmousemove='Grids[1].TmpSpaceCol="Resize";' onmousedown='Grids[1].TmpSpaceCol="Resize";'
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <table class="GOMainTable" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments"
                                                                cellpadding="0" cellspacing="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOHeadLeft" style="overflow: hidden; width: 13px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 14px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                        <tr onmousemove='Grids[1].ARow=Grids[1].Rows["ID"];Grids[1].ASec=0;' onmousedown='Grids[1].ARow=Grids[1].Rows["ID"];Grids[1].ASec=0;'
                                                                                            class="GOHeaderRow " style="height: 19px;">
                                                                                            <td class=" GOWrap0 GOCellHeaderPanel GOCellBorderFF3 HideCol1Panel">
                                                                                                <u class="GOPanelSelect GOImage"></u>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOHeadMid" style="overflow: hidden; width: 1367px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 184px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 16px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 216px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 452px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 40px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 105px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 105px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 55px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 55px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                        <tr onmousemove='Grids[1].ARow=Grids[1].Rows["ID"];Grids[1].ASec=0;' onmousedown='Grids[1].ARow=Grids[1].Rows["ID"];Grids[1].ASec=0;'
                                                                                            class="GOHeaderRow " style="height: 19px;">
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1ResC" colspan="2">
                                                                                                Resource
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1ResD" colspan="2">
                                                                                                Description
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1Desc" colspan="2">
                                                                                                Assignment
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1Dur" colspan="2">
                                                                                                Duration
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1From" colspan="2">
                                                                                                Start
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1To" colspan="2">
                                                                                                Finish
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1Alloc" colspan="2">
                                                                                                Effort
                                                                                            </td>
                                                                                            <td class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1Conf" colspan="2">
                                                                                                Confirmed
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td dir="ltr" rowspan="2" valign="top">
                                                                            <div class="GOVScroll" style="width: 17px; display: none;">
                                                                                <div style="width: 17px; overflow: auto;" onscroll="Grids[1].Scrolled();" onmousemove="Grids[1].ARow=null;Grids[1].ASec=-1;">
                                                                                    <div style="width: 1px; overflow: hidden;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td rowspan="3" style="display: none;">
                                                                            <div>
                                                                                &nbsp;</div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOBodyLeft" style="overflow: hidden; display: none; width: 13px;">
                                                                                <div class="GOPageOne">
                                                                                    <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <th style="height: 0px; width: 14px;">
                                                                                                </th>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div style="height: 0px; overflow: hidden;">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOBodyMid" style="overflow: hidden; display: none; width: 1367px;">
                                                                                <div class="GOPageOne">
                                                                                    <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <th style="height: 0px; width: 184px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 16px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 216px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 452px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 40px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 105px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 105px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 55px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 55px;">
                                                                                                </th>
                                                                                                <th style="height: 0px; width: 20px;">
                                                                                                </th>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div style="height: 0px; overflow: hidden;">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOFootLeft GONone" style="overflow: hidden; width: 13px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 14px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td style="overflow: hidden;">
                                                                            <div class="GOFootMid GONone" style="overflow: hidden; width: 1367px;">
                                                                                <table class="GOSectionFF3" cellpadding="0" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th style="height: 0px; width: 184px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 16px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 216px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 452px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 40px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 105px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 105px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 55px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 55px;">
                                                                                            </th>
                                                                                            <th style="height: 0px; width: 20px;">
                                                                                            </th>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td colspan="1">
                                                                            <div onmousemove="Grids[1].ARow=null;Grids[1].ASec=-2;" class="GOHScrollLeft" style="height: 17px;
                                                                                overflow: hidden;">
                                                                                <div style="height: 17px; overflow: auto;" onscroll="Grids[1].Scrolled();" onmousemove="Grids[1].ARow=null;Grids[1].ASec=-2;">
                                                                                    <div style="height: 1px; overflow: hidden;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td colspan="1">
                                                                            <div onmousemove="Grids[1].ARow=null;Grids[1].ASec=-3;" class="GOHScrollMid" style="height: 17px;
                                                                                overflow: hidden;">
                                                                                <div style="height: 17px; overflow: auto;" onscroll="Grids[1].Scrolled();" onmousemove="Grids[1].ARow=null;Grids[1].ASec=-3;">
                                                                                    <div style="height: 1px; overflow: hidden;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="display: none;" onmousemove="Grids[1].ARow=null;Grids[1].ASec=-5;">
                                                                            <div class="GOXScroll" style="height: 17px; width: 17px; overflow: hidden;">
                                                                                &nbsp;</div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div style="height: 0px; overflow: hidden;">
                                                                <input onfocus="Grids[1].ActionTabLeft();" type="text"></div>
                                                            <div style="margin-top: -100000px;" id="Grid1FocusCursors">
                                                                <div style="height: 1000px;" align="left">
                                                                    <div class="GOEditCellInput" style="display: none;">
                                                                    </div>
                                                                </div>
                                                                <div style="height: 1000px;" align="left">
                                                                    <div class="GOPagerFocus" style="display: none;">
                                                                    </div>
                                                                </div>
                                                                <div style="height: 4000px;" align="left">
                                                                    <div style="display: none;">
                                                                        <div class="GOFocusPanelBackground GOCursorBackground" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBackground GOCursorBackground" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBackground GOCursorBackground" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBackground GOCursorBackground" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div style="height: 4000px;" align="left">
                                                                    <div style="display: none;">
                                                                        <div class="GOFocusRowBorder GOCursorBorderLeft" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBorder GOCursorBorderRight" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBorder GOCursorBorderTop" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusRowBorder GOCursorBorderBottom" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div style="height: 4000px;" align="left">
                                                                    <div style="display: none;">
                                                                        <div class="GOFocusCellBorder GOCursorBorderLeft" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusCellBorder GOCursorBorderRight" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusCellBorder GOCursorBorderTop" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="GOFocusCellBorder GOCursorBorderBottom" style="display: none;">
                                                                            <div style="height: 0px; overflow: hidden;">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                            <input name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$hdnDirty"
                                                id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnDirty" value="0"
                                                type="hidden">
                                            <input name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$hdnPrint"
                                                id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_hdnPrint" value="0"
                                                type="hidden">

                                            <script type="text/javascript">
            var T = ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan;
            var ppc_fnEvent = function (e) {
                e = e || window.event;
                if ((!T.submitting) && T.IsDirty()) {
                    T.unloading = true;
                    e.returnValue = 'The plan has changed. These changes will be lost.';
                }
            };
            addEvent(window, 'beforeunload', ppc_fnEvent);
            var ppc_aecForm = document.getElementById('aspnetForm');
            var ppc_fnSubmit = ppc_aecForm.onsubmit;
            ppc_aecForm.onsubmit = function () {
                var s;
                if (T.unloading) {
                    T.unloading = false;
                    s = onSubmit();
                }
                if ((!T.submitting) && T.IsDirty()) {
                    if (confirm('The plan has changed. These changes will be lost.\n\nDo you want to continue?')) {
                        s = onSubmit();
                    } else {
                        s = false;
                    }
                } else {
                    s = true;
                }
                if (s) {
                    if (ppc_fnSubmit && !ppc_fnSubmit()) return false;
                }
                return s;
            }

</script>

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
//<![CDATA[
    var com_menulist_divIds = new Array('divHierarchy', 'divMyProjects', 'divProjectList');
//]]>
</script>

    <script type="text/javascript">
//<![CDATA[
    m_blnIsWebFormLoaded = true; dsh_dashboardmaster_registerResizeElements('ctl00_tblMain', 1, 1); com_menulist_registerHandler(); com_menulist_registerHandler();
    WebForm_InitCallback();//]]>
</script>

    </form>
    <div style="position: absolute; left: 3px; top: 95px; width: 1400px; height: 397px;
        display: none;" class="GODisabled">
        &nbsp;
    </div>
    <div style="position: absolute; left: 630px; top: 276px; width: 162px; height: 34px;
        visibility: visible; display: none;" class="GOMessageShadow">
        &nbsp;
    </div>
    <div style="position: absolute; left: 630px; top: 276px; width: 140px; visibility: visible;
        display: none;" class="GOMessage">
        Rendering ...
    </div>
    <div style="position: absolute; left: 3px; top: 492px; width: 1417px; height: 130px;
        display: none;" class="GODisabled">
        &nbsp;
    </div>
    <div style="position: absolute; left: 630px; top: 540px; width: 162px; height: 34px;
        visibility: visible; display: none;" class="GOMessageShadow">
        &nbsp;
    </div>
    <div style="position: absolute; left: 630px; top: 540px; width: 140px; visibility: visible;
        display: none;" class="GOMessage">
        Rendering ...
    </div>
    <div style="position: absolute; visibility: hidden; left: 10px; top: -100px; white-space: nowrap;">
        <div class="GOGanttResource">
        </div>
    </div>
    <div class=" GOText GOCell GONoLeft GOCellBorderFF3 HideCol0Desc" style="position: absolute;
        top: -10000px; left: 0px; visibility: hidden; overflow: hidden; border: medium none;
        padding: 0px; width: 237px;">
        Activity Screen Complete
    </div>
    <div class=" GOWrap0 GOHeaderText GOCellHeader GOCellBorderFF3 HideCol1Desc" style="position: absolute;
        top: -10000px; left: 0px; visibility: hidden; overflow: hidden; border: medium none;
        padding: 0px; width: 495px;">
        Assignment
    </div>
</asp:Content>
