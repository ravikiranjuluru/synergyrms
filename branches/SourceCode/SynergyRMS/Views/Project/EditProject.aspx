<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        Project Documents
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
                                                                    Project:
                                                       <select name="ctl00$phFormContent$cboProjectLevel" id="Select1"
                                                            class="comboBox">
                                                            <option value="Select">Select</option>
                                                            <option value="Project1" selected="selected">Project 1</option>
                                                            <option value="Project2">Project 2</option>
                                                            <option value="Project3">Project 3</option>
                                                        </select>
                                                                </td>
                                                                <td align="left">
                                                                    &nbsp;
                                                                </td>
                                                                <td id="td1" style="white-space: nowrap;" 
                                                                    align="left">
                                                                    <div id="div1" class="tabPopupMenu" onclick="this.style.cursor='pointer'; displayHierarchyPopup(event, 'tdMyProjects','divMyProjects','ifrmMyProjects');"
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
                                                                                                        <a href="">PROJECT1 - Demonstration
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
                                                                    &nbsp;
                                                                    <img src="../../Content/images/common/space.gif" style="border-width: 0px;"
                                                                        alt="" width="3px" height="0px">
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
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
                                                                    &nbsp;
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
                            <tr><td>
                            
                            
                            
                            
                                            <asp:GridView ID="GridView1" runat="server" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                                                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                                                GridLines="Vertical">
                                                <Columns>
                                                    <asp:BoundField DataField="Project 1" HeaderText="Project Name" />
                                                    <asp:BoundField DataField="Date" HeaderText="Start Date" />
                                                    <asp:BoundField DataField="Date" HeaderText="End Date" />
                                                    <asp:BoundField DataField="Project Manager" HeaderText="Project Manager" />
                                                    <asp:BoundField DataField="Active" HeaderText="Status" />
                                                    <asp:TemplateField>
                                                       
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text="Edit" ></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                       
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text="Delete"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                            </asp:GridView>
                            
                            
                            
                            
                            </td></tr>
                        </tbody>
                    </table>
                    <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                </td>
            </tr>
        </tbody>
    </table>
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


   

   <%-- <script src="../../Scripts/common/WebResorce.js" type="text/javascript"></script>--%>

    <script src="../../Scripts/common/ProjectDashboard.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbOptionList.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbScrollableTable.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbSplitter.js" type="text/javascript"></script>

  

    <script src="../../Scripts/common/dsh_dashboard.master.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_popupwindow.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_menulist.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_pickbox.js" type="text/javascript"></script>

    <script src="../../Scripts/common/xbLibrary.js" type="text/javascript"></script>

    <script src="../../Scripts/common/com_tabstripheader.js" type="text/javascript"></script>

   

    <script src="../../Scripts/common/com_dateinput.js" type="text/javascript"></script>

  
   <%-- <script src="../../Scripts/common/GridE.js" type="text/javascript"></script>--%>



   
    
    
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
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace"
                                                width="5" height="1">
                                        </td>
                                        <td class="dashboardTabSelected" nowrap="nowrap">
                                            Tasks
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace0"
                                                width="1" height="1">
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace3"
                                                width="1" height="1">
                                        </td>
                                        <td class="dashboardTabOff" nowrap="nowrap">
                                            <a href="../Project/Docs">Documents</a>
                                        </td>
                                        <td class="dashboardTabSpace">
                                            <img src="../../Content/images/common/space.gif" id="ctl00_ucTabStrip_imgTabSpace4"
                                                width="1" height="1">
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
                        <table style="border-style: none; border-color: inherit; border-width: medium; border-collapse: collapse; margin: 0px; padding: 0px; height: 268px; width: 96%;"
                            border="0" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td style="padding: 2px; width: 100%;" colspan="1" rowspan="1" align="left" valign="top">
                                        <div id="ctl00_dsh_dashboard_divElementTask" style="padding: 0px; overflow: auto;
                                            border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237);
                                            height: 263px; width: 800px;">



                                            <link rel="stylesheet" type="text/css" href="/common/toolbar.css">
                                            <style type="text/css">
                                                .summary
                                                {
                                                    font-weight: bold;
                                                }
                                                .style2
                                                {
                                                    width: 15px;
                                                }
                                                </style>


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
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_save.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgSave"
                                                                                                onclick="Save(false);" style="vertical-align: middle; cursor: pointer;" alt="Save"
                                                                                                title="Save">
                                                                                        </td>
                                                                                        
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/menuitem_rollback.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgRollback"
                                                                                                onclick="#" style="vertical-align: middle; cursor: pointer;" alt="Rollback"
                                                                                                title="Refresh after add new task">
                                                                                        </td>

                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                            <img src="../../Content/images/common/expandTasks.gif" 
                                                                                            id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgExpandAll"
                                                                                                style="vertical-align: middle; cursor: pointer;"
                                                                                                alt="Add new Tasks" title="Enter New Tasks" onclick="lnkNewTask_onClick();">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;<img src="../../Content/images/common/menuitem_delete.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgRemoveAllTasks"
                                                                                                onclick="deleteTasks();" style="vertical-align: middle; cursor: pointer;" alt="Delete Selected Tasks"
                                                                                                title="Delete Selected Tasks"></td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;<img src="../../Content/images/common/addAssignment.gif"
                                                                                             id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgAddAssignment"
                                                                                                 style="vertical-align: middle;
                                                                                                cursor: pointer;" alt="Add Assignment" title="Add Assignment" onclick="lnkAssignTask_onClick();"></td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td style="padding-left: 1px; padding-right: 1px;" align="center" valign="middle">
                                                                                            <img src="../../Content/images/common/line_grey.gif" style="height: 18px; width: 1px;
                                                                                                vertical-align: middle;">
                                                                                        </td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;<img src="../../Content/images/common/deleteAssignment.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgDeleteAssignments"
                                                                                                onclick="deleteAssignments();" style="vertical-align: middle; cursor: pointer;"
                                                                                                alt="Delete Selected Assignments" title="Delete Selected Assignments"></td>
                                                                                        <td class="style2" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>

                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                        <td class="toolbaritem_off" 
                                                                                            align="center" valign="middle">
                                                                                            &nbsp;</td>
                                                                                      
                                                                                        <td class="toolbaritem_off" 
                                                                                            style="white-space: nowrap; padding-right: 12px;" align="center" valign="middle">
                                                                                            
                                                                                            &nbsp;



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
                                                                                            &nbsp;</td>
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
                                                type="hidden">
                                                <input id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks_Data"
                                                    name="ctl00$dshElement_Task$aecElementControlTask$ucProjectPlan$tgTasks_Data"
                                                    value="&lt;Grid&gt;&lt;Body&gt;&lt;B&gt;&lt;I Def=&quot;Task&quot; id=&quot;1&quot; Key=&quot;62&quot; Emp=&quot;0&quot; Desc=&quot;Project Kick Off&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/13/2010 08:00:00&quot; Days=&quot;0&quot; Suc=&quot;2&quot; Pc=&quot;100&quot; Conf=&quot;1&quot; WBS=&quot;1&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;2&quot; Key=&quot;63&quot; Emp=&quot;0&quot; Desc=&quot;Document Requirements&quot; From=&quot;12/13/2010 08:00:00&quot; To=&quot;12/14/2010 17:00:00&quot; Days=&quot;2&quot; Suc=&quot;3&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;2&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;2-A30&quot; Ord=&quot;2&quot; Key=&quot;30&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Document Requirements&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/13/2010 08:00:00&quot; To=&quot;12/14/2010 17:00:00&quot; Alloc=&quot;2&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;3&quot; Key=&quot;64&quot; Emp=&quot;0&quot; Desc=&quot;Analysis Stage Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/14/2010 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;4;9&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;3&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;4&quot; Key=&quot;65&quot; Emp=&quot;0&quot; Desc=&quot;Write Login Screen&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/20/2010 17:00:00&quot; Days=&quot;4&quot; Suc=&quot;5&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;4&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;4-A31&quot; Ord=&quot;4&quot; Key=&quot;31&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Write Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/20/2010 17:00:00&quot; Alloc=&quot;4&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;5&quot; Key=&quot;66&quot; Emp=&quot;0&quot; Desc=&quot;Test Login Screen&quot; From=&quot;12/21/2010 08:00:00&quot; To=&quot;12/22/2010 17:00:00&quot; Days=&quot;2&quot; Suc=&quot;6&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;5&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;5-A32&quot; Ord=&quot;5&quot; Key=&quot;32&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Test Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/21/2010 08:00:00&quot; To=&quot;12/22/2010 17:00:00&quot; Alloc=&quot;2&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;6&quot; Key=&quot;67&quot; Emp=&quot;0&quot; Desc=&quot;Install Login Screen&quot; From=&quot;12/23/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;1&quot; Suc=&quot;7&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;6&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;6-A33&quot; Ord=&quot;6&quot; Key=&quot;33&quot; ResC=&quot;PROJECTMANAGER&quot; ResD=&quot;Project Manager&quot; Desc=&quot;Install Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/23/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Alloc=&quot;1&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;7&quot; Key=&quot;68&quot; Emp=&quot;0&quot; Desc=&quot;Login Screen Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;8&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;7&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;8&quot; Key=&quot;69&quot; Emp=&quot;0&quot; Desc=&quot;Use Login Screen&quot; From=&quot;12/24/2010 08:00:00&quot; To=&quot;12/30/2010 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;12&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;8&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;8-A34&quot; Ord=&quot;8&quot; Key=&quot;34&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Use Login Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/24/2010 08:00:00&quot; To=&quot;12/30/2010 17:00:00&quot; Alloc=&quot;5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;9&quot; Key=&quot;70&quot; Emp=&quot;0&quot; Desc=&quot;Write Activity Maintenance Screen&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/16/2010 17:00:00&quot; Days=&quot;2&quot; Suc=&quot;10&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;9&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;9-A35&quot; Ord=&quot;9&quot; Key=&quot;35&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Write Activity Maintenance Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/15/2010 08:00:00&quot; To=&quot;12/16/2010 17:00:00&quot; Alloc=&quot;2&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;10&quot; Key=&quot;71&quot; Emp=&quot;0&quot; Desc=&quot;Test Activity Maintenance Screen&quot; From=&quot;12/17/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;11&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;10&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;10-A36&quot; Ord=&quot;10&quot; Key=&quot;36&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Test Activity Maintenance Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/17/2010 08:00:00&quot; To=&quot;12/23/2010 17:00:00&quot; Alloc=&quot;5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;11&quot; Key=&quot;72&quot; Emp=&quot;0&quot; Desc=&quot;Activity Screen Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;12/23/2010 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;12&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;11&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;12&quot; Key=&quot;73&quot; Emp=&quot;0&quot; Desc=&quot;Test Report Criteria Selection Screen&quot; From=&quot;12/31/2010 08:00:00&quot; To=&quot;1/6/2011 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;13&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;12&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;12-A37&quot; Ord=&quot;12&quot; Key=&quot;37&quot; ResC=&quot;RES2&quot; ResD=&quot;Janet J Bailey&quot; Desc=&quot;Test Report Criteria Selection Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/31/2010 08:00:00&quot; To=&quot;1/6/2011 17:00:00&quot; Alloc=&quot;2.5&quot; Pc=&quot;&quot; /&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;12-A38&quot; Ord=&quot;12&quot; Key=&quot;38&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Test Report Criteria Selection Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;12/31/2010 08:00:00&quot; To=&quot;1/6/2011 17:00:00&quot; Alloc=&quot;2.5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;13&quot; Key=&quot;74&quot; Emp=&quot;0&quot; Desc=&quot;Install Report Criteria Selection Screen&quot; From=&quot;1/7/2011 08:00:00&quot; To=&quot;1/13/2011 17:00:00&quot; Days=&quot;5&quot; Suc=&quot;14&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;13&quot; Typ=&quot;Task&quot;&gt;&lt;I Def=&quot;AssignF&quot; id=&quot;13-A39&quot; Ord=&quot;13&quot; Key=&quot;39&quot; ResC=&quot;RES1&quot; ResD=&quot;Alan Barnacle&quot; Desc=&quot;Install Report Criteria Selection Screen&quot; Typ=&quot;Assign&quot; Conf=&quot;1&quot; From=&quot;1/7/2011 08:00:00&quot; To=&quot;1/13/2011 17:00:00&quot; Alloc=&quot;5&quot; Pc=&quot;&quot; /&gt;&lt;/I&gt;&lt;I Def=&quot;Task&quot; id=&quot;14&quot; Key=&quot;75&quot; Emp=&quot;0&quot; Desc=&quot;Report Criteria Screen Complete&quot; Dur=&quot;0&quot; From=&quot;&quot; To=&quot;1/13/2011 17:00:00&quot; Days=&quot;0&quot; Suc=&quot;&quot; Pc=&quot;&quot; Conf=&quot;1&quot; WBS=&quot;14&quot; Typ=&quot;Task&quot; /&gt;&lt;I Def=&quot;Task&quot; id=&quot;15&quot; Key=&quot;-15&quot; Emp=&quot;1&quot; Typ=&quot;Task&quot; /&gt;&lt;/B&gt;&lt;/Body&gt;&lt;/Grid&gt;"
                                                    type="hidden">
                                                    <div id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgTasks"
                                                        style="height: 397px; width: 100%; overflow: hidden;">
                                                        <div style="height: 397px;">
                                                            <div style="height: 0px; overflow: hidden;">
                                                                <input  type="text"></div>
                                                            <div class="GORowAbove" style="display: none; width: 1379px;" >
                                                                <table cellpadding="0" cellspacing="0">
                                                                    <tbody>
                                                                        <tr style="height: 17px;">
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolCorrect GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolSave GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolReload GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolPrint GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolAdd GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolAddChild GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolCalc1 GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolExpandAll GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td
                                                                                class=" GOCellSpaceButton GOToolCollapseAll GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolZoomIn GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolZoomOut1 GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolZoomFit GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolColumns GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolCfg GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolHelp GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <span style="color: rgb(153, 153, 153);">Style:</span>
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Standard
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Light
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolHtml1 GOCellSpaceAbove">
                                                                                Office
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Modern
                                                                            </td>
                                                                            <td
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Borders
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Robust
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Plain
                                                                            </td>
                                                                            <td
                                                                                class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Colors
                                                                            </td>
                                                                            <td 
                                                                                class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <div style="overflow: hidden; width: 0px;">
                                                                                    <div dir="ltr" style="cursor: default; padding-top: 2px; padding-left: 3px; padding-right: 3px;
                                                                                        white-space: nowrap; font: 9px arial; color: rgb(119, 119, 119);">
                                                                                        <span style="cursor: pointer;" onmouseover='this.style.color="black";this.style.textDecoration="underline"'
                                                                                            onmouseout='this.style.color="#777777";this.style.textDecoration=""' title="http://www.treegrid.com/"
                                                                                            onclick='window.open("http://www.treegrid.com/");'>EJS TreeGrid v6.7</span></div>
                                                                                </div>
                                                                            </td>
                                                                            <td 
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
                                                                                        <tr 
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
                                                                                        <tr 
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
                                                                                        <tr 
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
                                                                                <div style="width: 17px; overflow: auto;" >
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
                                                                                            <tr 
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    1
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    2
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    3
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    4
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    5
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    6
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    7
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    8
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    9
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    10
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    11
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    12
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    13
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
                                                                                                style="height: 19px;">
                                                                                                <td class=" GOP11xx GOCellPanel GOEmpty GOCellBorderFF3 HideCol0Panel">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td style="background-color: rgb(244, 244, 244);" class=" GOClassReadOnly GOText GOCell GOCellBorderFF3 HideCol0id"
                                                                                                    colspan="2">
                                                                                                    14
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetailSelected"
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
                                                                                            <tr class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                            <tr class="GODataRow  GOClassDetail"
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
                                                                                            <tr  class="GODataRow  GOClassDetailSelected"
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
                                                                                                                
                                                                                                            </div>
                                                                                                          
                                                                                                        </div>
                                                                                                        <div style="margin-left: 116px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 88px; width: 23px;">
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 86px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                           
                                                                                                            
                                                                                                        </div>
                                                                                                        <div style="margin-left: 136px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                User 1</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 134px; width: 5px;">
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 108px; width: 23px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 106px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                           
                                                                                                            
                                                                                                        </div>
                                                                                                        <div style="margin-left: 144px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 116px; width: 23px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 114px; width: 12px;">
                                                                                                                
                                                                                                            </div>
                                                                                                           
                                                                                                            
                                                                                                        
                                                                                                        </div>
                                                                                                        <div style="margin-left: 220px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                User 2</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 200px; width: 15px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 198px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                           
                                                                                                           
                                                                                                            
                                                                                                        </div>
                                                                                                        <div style="margin-left: 248px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                User 3</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 228px; width: 15px;">
                                                                                                              
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 226px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                          
                                                                                                          
                                                                                                           
                                                                                                        </div>
                                                                                                        <div style="margin-left: 262px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                Project Manager</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 234px; width: 23px;">
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 232px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                           
                                                                                                           
                                                                                                            
                                                                                                        </div>
                                                                                                        <div style="margin-left: 270px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 242px; width: 23px;">
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 240px; width: 12px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            
                                                                                                           
                                                                                                          
                                                                                                        </div>
                                                                                                        <div style="margin-left: 360px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                User 3</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 116px; width: 23px;">
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 114px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                            
                                                                                                           
                                                                                                           
                                                                                                        </div>
                                                                                                        <div style="margin-left: 164px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                               User 4</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 144px; width: 15px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 142px; width: 12px;">
                                                                                                              
                                                                                                            </div>
                                                                                                          
                                                                                                            
                                                                                                            
                                                                                                        </div>
                                                                                                        <div style="margin-left: 262px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                User 4</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 234px; width: 23px;">
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 232px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                          
                                                                                                            
                                                                                                           
                                                                                                        </div>
                                                                                                        <div style="margin-left: 270px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 338px; width: 12px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 264px; width: 77px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 340px; width: 15px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 338px; width: 12px;">
                                                                                                                
                                                                                                            </div>
                                                                                                           
                                                                                                           
                                                                                                            
                                                                                                        </div>
                                                                                                        <div style="margin-left: 458px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                                User 5</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                               
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepHorzOut" style="margin-left: 438px; width: 15px;">
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 436px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                           
                                                                                                            
                                                                                                        </div>
                                                                                                        <div style="margin-left: 556px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <%--<div class="GOGanttResource">
                                                                                                                User 1</div> --%>                                                                                                               
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                                                                
                                                                                                            </div>
                                                                                                            <div class="GOGanttDepIcon" style="margin-left: 526px; width: 12px;">
                                                                                                               
                                                                                                            </div>
                                                                                                           
                                                                                                        </div>
                                                                                                        <div style="margin-left: 564px; margin-top: -500px; height: 500px; margin-bottom: 0px;
                                                                                                            overflow: hidden;">
                                                                                                            <div class="GOGanttResource">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr  class="GODataRow  GOClassDetail"
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
                                                                            <div  class="GOHScrollLeft" style="height: 17px;
                                                                                overflow: hidden; width: 56px;">
                                                                                <div class="GOHScrollHidden" style="height: 17px; overflow: auto; width: 56px;" >
                                                                                    <div style="height: 1px; overflow: hidden; width: 56px;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td colspan="1">
                                                                            <div class="GOHScrollMid" style="height: 17px;
                                                                                overflow: hidden; width: 747px;">
                                                                                <div class="GOHScrollHidden" style="height: 17px; overflow: auto; width: 747px;">
                                                                                    <div style="height: 1px; overflow: hidden; width: 747px;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td colspan="1">
                                                                            <div  class="GOHScrollRightResize"
                                                                                style="height: 17px; overflow: hidden; width: 572px;">
                                                                                <div class="" style="height: 17px; overflow: auto; width: 572px;" >
                                                                                    <div style="height: 1px; overflow: hidden; width: 666px;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="display: none;" >
                                                                            <div class="GOXScroll" style="height: 17px; width: 17px; overflow: hidden;">
                                                                                &nbsp;</div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div style="margin-right: 0px;" class="GOResizeGrid" id="Grid0Resize">
                                                            </div>
                                                            <div style="height: 0px; overflow: hidden;">
                                                                <input  type="text"></div>
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
                                          
                                                    <div id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_tgAssignments"
                                                        style="height: 50px; width: 100%; overflow: hidden;">
                                                        <div style="height: 25px;">
                                                                <input type="text"></div>
                                                            <div class="GORowAbove" style="display: none; width: 1379px;" align="left">
                                                                <table cellpadding="0" cellspacing="0">
                                                                    <tbody>
                                                                        <tr style="height: 17px;">
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolPrint GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolAdd GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolCalc1 GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolColumns GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolCfg GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHelp GOEmpty GOCellSpaceAbove">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <span style="color: rgb(153, 153, 153);">Style:</span>
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Standard
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Light
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml1 GOCellSpaceAbove">
                                                                                Office
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Modern
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Borders
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Robust
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Plain
                                                                            </td>
                                                                            <td class=" GOCellSpaceButton GOToolHtml GOCellSpaceAbove">
                                                                                Colors
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHtml GOCellSpaceAbove">
                                                                                <div style="overflow: hidden; width: 0px;">
                                                                                    <div dir="ltr" style="cursor: default; padding-top: 2px; padding-left: 3px; padding-right: 3px;
                                                                                        white-space: nowrap; font: 9px arial; color: rgb(119, 119, 119);">
                                                                                       
                                                                                            </div>
                                                                                </div>
                                                                            </td>
                                                                            <td class=" GOCellSpace GOHiddenSpace GOCellSpaceAbove">
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
                                                                                        <tr class="GOHeaderRow " style="height: 19px;">
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
                                                                                        <tr class="GOHeaderRow " style="height: 19px;">
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
                                                                                <div style="width: 17px; overflow: auto;">
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
                                                                            <div  class="GOHScrollLeft" style="height: 17px;
                                                                                overflow: hidden;">
                                                                                <div style="height: 17px; overflow: auto;">
                                                                                    <div style="height: 1px; overflow: hidden;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td colspan="1">
                                                                            <div  class="GOHScrollMid" style="height: 17px;
                                                                                overflow: hidden;">
                                                                                <div style="height: 17px; overflow: auto;" >
                                                                                    <div style="height: 1px; overflow: hidden;">
                                                                                        &nbsp;</div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="display: none;" >
                                                                            <div class="GOXScroll" style="height: 17px; width: 17px; overflow: hidden;">
                                                                                &nbsp;</div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div style="height: 0px; overflow: hidden;">
                                                                <input type="text"></div>
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
        m_blnIsWebFormLoaded = true;
        dsh_dashboardmaster_registerResizeElements('ctl00_tblMain', 1, 1);
        com_menulist_registerHandler(); com_menulist_registerHandler();
        WebForm_InitCallback(); //]]>
    </script>

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
    </form>
</asp:Content>
