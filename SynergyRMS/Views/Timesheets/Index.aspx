<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
                                                                        Timesheet</td>
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

<div style="display: block;" id="divContent">
            <div id="divContent_Toolbar">
                
<table width="100%" cellspacing="0" cellpadding="0" border="0" class="toolbarOuter">
    <tbody><tr>
        <td class="toolbar">
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" class="toolbarInner">
                        <tbody><tr>
                            <td valign="middle" align="left">                        
                                <table cellspacing="1" cellpadding="0" border="0">
                                    <tbody><tr>
                                    
                                            <td valign="middle" align="left" title="Show Reports" onmouseout="this.className = 'toolbaritem_off';" onmouseover="this.className = 'toolbaritem_on';" class="toolbaritem_off" style="padding: 2px; white-space: nowrap;">
                                                
    <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
        <tbody><tr>
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="mnuContextReportMenuList_tblMenu0" style="white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">                                
                    
                            <table cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
                                <tbody><tr id="trMenuIcons">
                                    
                                    <!-- Padding Removed as making Title bar too big on dashboards -->
                                    <td valign="middle" align="center" onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'mnuContextReportMenuList_tblMenu0_divPopup', 'left', 'transparent', '#F9F9F9', '#666666');" style="padding: 0px; border: 1px solid rgb(236, 236, 237);">
                                              
                                    </td>
                                    
                                        <td onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'mnuContextReportMenuList_tblMenu0_divPopup', 'left', 'transparent', '#F9F9F9', '#666666');" style="border: 1px solid rgb(236, 236, 237);">
                                            &nbsp;</td>
                                    
                                </tr>
                            </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 1000;" id="mnuContextReportMenuList_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="var newWindow = window.open('/reporting/rep_contextreport.aspx?Key=10','','toolbar=no,location=no,status=yes,menubar=yes,scrollbars=yes,resizable=yes');newWindow.focus();" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                    
                                        <img alt="" src="../../Content/images/icon/menu_print.gif">
                                    
                                </td>
                                <td onclick="var newWindow = window.open('/reporting/rep_contextreport.aspx?Key=10','','toolbar=no,location=no,status=yes,menubar=yes,scrollbars=yes,resizable=yes');newWindow.focus();" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Print My Weekly Timesheet
                                </td>
                            </tr>
                    
            </tbody></table>
        </div>
                                            </td>
                                            <td valign="middle" align="center" style="padding-left: 1px; padding-right: 5px;">  
                                                <img alt="" style="height: 18px; width: 1px; vertical-align: middle;" src="../../Content/images/icon/line_grey.gif">
                                            </td>
                                    
                                            <td valign="middle" align="center" onmouseout="this.className = 'toolbaritem_off';" onmouseover="this.className = 'toolbaritem_on';" class="toolbaritem_off">  
                                                <a href="javascript:__doPostBack('lnkSave','')" title="Save" onclick="return lnkSave_onClick();" id="lnkSave">
                                                    <img alt="Save" style="vertical-align: middle;" src="../../Content/images/icon/menuitem_save_colour.gif">
                                                </a>
                                            </td>
                                            <td valign="middle" align="center" style="padding-left: 1px; padding-right: 1px;">  
                                                <img alt="" style="height: 18px; width: 1px; vertical-align: middle;" src="../../Content/images/icon/line_grey.gif">
                                            </td>
                                            <td valign="middle" align="center" onmouseout="this.className = 'toolbaritem_off';" onmouseover="this.className = 'toolbaritem_on';" class="toolbaritem_off">
                                                <a href="javascript:__doPostBack('lnkAddRow','')" title="Add Row" onclick="return lnkAddRow_onClick();" id="lnkAddRow">
                                                    <img alt="Add Row" src="../../Content/images/icon/menuitem_addrow_colour.gif">
                                                </a>
                                            </td>
                                            <td valign="middle" align="center" onmouseout="this.className = 'toolbaritem_off';" onmouseover="this.className = 'toolbaritem_on';" class="toolbaritem_off">
                                                <a href="javascript:__doPostBack('lnkImport','')" title="Import from previous week" onclick="return lnkImport_onClick();" id="lnkImport">
                                                    <img alt="Import from previous week" style="vertical-align: middle;" src="../../Content/images/icon/menuitem_import.gif">
                                                </a>
                                            </td> 
                                            
                                            
                                                    <td valign="middle" align="center" onmouseout="this.className = 'toolbaritem_off';" onmouseover="this.className = 'toolbaritem_on';" class="toolbaritem_off">
                                                        <a href="javascript:__doPostBack('lnkImportFromTaskPlanning','')" title="Import from Task Planning" onclick="return lnkImportFromTaskPlanning_onClick();" id="lnkImportFromTaskPlanning">
                                                            <img alt="Import from Task Planning" style="vertical-align: middle;" src="../../Content/images/icon/menuitem_importtaskplanning.gif">
                                                        </a>
                                                    </td>
                                                
                                            
                                        <td valign="middle" align="center" style="padding-left: 1px; padding-right: 1px;">  
                                            <img alt="" style="height: 18px; width: 1px; vertical-align: middle;" src="../../Content/images/icon/line_grey.gif">
                                        </td>
                                        <td valign="middle" align="center" onmouseout="this.className = 'toolbaritem_off';" onmouseover="this.className = 'toolbaritem_on';" class="toolbaritem_off">
                                            <a title="Configuration" onclick="mnuConfig_onClick();" href="#">
                                                <img src="../../Content/images/icon/menuitem_config_colour.gif">
                                            </a>
                                        </td>
                                    </tr>
                                </tbody></table>                            
                            </td>
                            <td valign="middle" align="right">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr>
                                        <td valign="middle" align="right" style="white-space: nowrap; padding-left: 20px;">
                                            <a onclick="lnkFromDate_onClick(40539);" href="#" id="lnkFromDate">
                                            12/27/2010
                                            </a>
                                        </td>

                                        

                                        <td valign="middle" align="right" style="white-space: nowrap; padding-left: 8px;">
                                            <input type="image" id="imgBack" name="imgBack" src="../../Content/images/icon/chevron_left.gif">
                                        </td>

                                        <td valign="middle" align="right" style="white-space: nowrap; padding-left: 5px;">
                                            <select onchange="cmbPeriod_onChange();" readonly="readonly" id="cmbPeriod" name="cmbPeriod" class="comboBox">
                                                <option selected="selected" value="1">1 Week</option>
                                                <option value="4">4 Weeks</option>
                                                
                                            </select>
                                        </td>

                                        <td valign="middle" align="right" style="white-space: nowrap; padding-left: 5px;">
                                            <input type="image" id="imgForward" name="imgForward" src="../../Content/images/icon/chevron_right.gif">
                                        </td>
                                    </tr>
                                </tbody></table>
                            </td>
                        </tr>
                    </tbody></table>
                
    	</td>
    </tr>
</tbody></table>
            </div>
        
            <div id="divContent_OperationsBar">    
                <table class="operationsBarOuter">
                    <tbody><tr>
                        <td valign="middle" align="left" class="operationsBar">
                            <table cellspacing="0" cellpadding="0" border="0">
                                <tbody><tr>
                                    <td valign="middle" align="left" style="white-space: nowrap;">
                                    
                                            <a onclick="lnkSelectResource_onClick();" href="#" id="lnkSelectResource">
                                            Resource:
                                            </a>
                                    
                                    </td>
                                    <td valign="middle" align="left" style="white-space: nowrap; padding-left: 3px;">
                                    RES1
                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                        
                        
                            <td valign="middle" align="right" class="operationsBar">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr>
                                        <td valign="middle" align="right" style="white-space: nowrap;">
                                            <a onclick="lnkGoBack_onClick();" href="#" id="lnkGoBack">Return to Getting Started</a>
                                        </td>                                        
                                    </tr>
                                </tbody></table>
                            </td>
                        
                    </tr>
                </tbody></table>   
            </div>   

            

            <div style="padding: 10px;" id="divContent_Results"> 
                <input type="hidden" value="0" id="hdnIsDirty" name="hdnIsDirty">        
                <input type="hidden" value="13:1" id="hdnActiveCell" name="hdnActiveCell"> 
               
                <table width="100%" cellspacing="0" cellpadding="0" border="0" class="tableDirectEntryGrid" id="tblMain">
                    <colgroup>
                    
                        
                        <col id="colProject">
                        <col id="colActivity">
                        
                        
                                <col id="colTask">
                            
                            <col width="60" id="colOvertime">
                                                
                            <col width="60" id="colChargeable">
                    

                        <col width="60" id="colDay1">
                        <col width="60" id="colDay2">
                        <col width="60" id="colDay3">
                        <col width="60" id="colDay4">
                        <col width="60" id="colDay5">
                        <col width="60" id="colDay6">
                        <col width="60" id="colDay7">
                        
                        
                            <col width="21" id="colClone">
                            <col width="21" id="colDelete">
                        
                    </colgroup>
                
                    <thead>
                        <tr>
                        
                        
                            <td valign="middle" align="left" style="">
                                Project
                            </td>

                            <td valign="middle" align="left" id="thActivity">
                                Activity
                            </td>
                            
                        
                                    <td valign="middle" align="left">
                                    Task / Assignment
                                    </td>
                                
                                <td valign="middle" align="left" style="width: 60px;">
                                    Overtime
                                </td>
                                
                                

                                <td valign="middle" align="left" style="width: 60px;">
                                    Chargeable
                                </td>
                                       
                                <td valign="middle" align="center" style="width: 60px;">
                                    Mon<br>12/27
                                </td>
                                
                                           
                                <td valign="middle" align="center" style="width: 60px;">
                                    Tue<br>12/28
                                </td>
                                
                                           
                                <td valign="middle" align="center" style="width: 60px;">
                                    Wed<br>12/29
                                </td>
                                
                                           
                                <td valign="middle" align="center" style="width: 60px;">
                                    Thu<br>12/30
                                </td>
                                
                                           
                                <td valign="middle" align="center" style="width: 60px;">
                                    Fri<br>12/31
                                </td>
                                
                                           
                                <td valign="middle" align="center" style="width: 60px;">
                                    Sat<br>1/1
                                </td>
                                
                                           
                                <td valign="middle" align="center" style="width: 60px;">
                                    Sun<br>1/2
                                </td>
                                
                                
                            
                            <td valign="middle" align="right" style="width: 60px;">                 
                                Total Hours 
                            </td>
                            
                            
                                <td valign="middle" align="right" style="width: 21px;">                 
                                    &nbsp;
                                </td>
                                <td valign="middle" align="right" style="width: 21px;">                 
                                    &nbsp;
                                </td>
                                
                                
                        </tr>
                    </thead>
                    
                    <tfoot>
                    
                            
                            <tr>
                                <td valign="middle" align="left" colspan="5">
                                    Total Standard Hours 
                                </td>
                                
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalStandard_40539">
                                            8.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalStandard_40540">
                                            10.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalStandard_40541">
                                            12.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalStandard_40542">
                                            9.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalStandard_40543">
                                            14.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalStandard_40544">
                                            0.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalStandard_40545">
                                            0.00
                                        </span>
                                    </td>
                                
                                
                                <td valign="middle" align="right" style="white-space: nowrap;">
                                    <span style="" id="lblColumnTotalStandard_Total">
                                        53.00
                                    </span>
                                </td>
                                
                                
                                    <td valign="middle" align="right">                 
                                        &nbsp;
                                    </td>
                                    <td valign="middle" align="right">                 
                                        &nbsp;
                                    </td>
                                
                            </tr>
                            <tr>
                                <td valign="middle" align="left" colspan="5">
                                    Total Overtime Hours 
                                </td>
                                
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalOvertime_40539">
                                            0.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalOvertime_40540">
                                            0.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalOvertime_40541">
                                            0.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalOvertime_40542">
                                            0.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalOvertime_40543">
                                            0.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalOvertime_40544">
                                            0.00
                                        </span>
                                    </td>
                                
                                    <td valign="middle" align="right" style="white-space: nowrap;">
                                        <span style="" id="lblColumnTotalOvertime_40545">
                                            0.00
                                        </span>
                                    </td>
                                
                                
                                <td valign="middle" align="right" style="white-space: nowrap;">
                                    <span style="" id="lblColumnTotalOvertime_Total">
                                        0.00
                                    </span>
                                </td>
                                
                                
                                    <td valign="middle" align="right">                 
                                        &nbsp;
                                    </td>
                                    <td valign="middle" align="right">                 
                                        &nbsp;
                                    </td>
                                
                            </tr>
                               
                    </tfoot>
                    
                    <tbody>
                                    
                            <tr>
                            

                                <td valign="middle" align="left" title="PROJECT1" aecislocked="0">

                                    <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Demonstration Project</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">Add...</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="2" readonly="false">ABSENCE | Staff Absence</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="3" readonly="false">NONPROJECT | Non Project Work</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="4" readonly="false">PROJECT1 | Demonstration Project</div></div><select onchange="cmbProject_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbProject_0" name="cmbProject_0" class="comboBox" aectype="aecOptionList">

                                        <option value=""></option>
                                    
                                            <option value="Add">
                                            Add...
                                            </option>
                                    

                                                <option aecselectedtext="Staff Absence" aecrestrictdates="0" value="ABSENCE">
                                                ABSENCE | Staff Absence
                                                </option>
                                        

                                                <option aecselectedtext="Non Project Work" aecrestrictdates="0" value="NONPROJECT">
                                                NONPROJECT | Non Project Work
                                                </option>
                                        

                                                <option aecselectedtext="Demonstration Project" selected="selected" aecrestrictdates="0" value="PROJECT1">
                                                PROJECT1 | Demonstration Project
                                                </option>
                                        

                                    </select>
                                    
                                    <script type="text/javascript">
                                        //xbOptionList.initialise(document.getElementById('cmbProject_0'), '/images/dropdownarrow.gif');
                                    </script>
                                    
                                    
                                </td>

                            

                                <td valign="middle" align="left" title="PROJECTWORK" aecislocked="0">

                                    <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Project Work</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">PROJECTWORK | Project Work</div></div><select onchange="cmbActivity_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbActivity_0" name="cmbActivity_0" class="comboBox" aectype="aecOptionList">
                                                                    
                                            <option value="">
                                            </option>

                                        
                                                
                                                <option aecselectedtext="Project Work" selected="selected" value="PROJECTWORK">
                                                PROJECTWORK | Project Work
                                                </option>
                                        
                                    </select>
                                    
                                    <script type="text/javascript">
                                        //xbOptionList.initialise(document.getElementById('cmbActivity_0'), '/images/dropdownarrow.gif');
                                    </script>
                                    
                                    
                                </td>
                                
                                
                                        <td valign="middle" align="left" style="" aecislocked="0">
                                            <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Document Requirements</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">Document Requirements</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="2" readonly="false">Write Activity Maintenance Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="3" readonly="false">Test Activity Maintenance Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="4" readonly="false">Test Report Criteria Selection Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="5" readonly="false">Install Report Criteria Selection Screen</div></div><select onchange="cmbTask_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbTask_0" name="cmbTask_0" class="comboBox" aectype="aecOptionList">
                                            
                                                        <option value="0">
                                                        </option>
                                                    
                                                            <option selected="selected" value="30">
                                                            Document Requirements
                                                            </option>
                                                    
                                                            <option value="35">
                                                            Write Activity Maintenance Screen
                                                            </option>
                                                    
                                                            <option value="36">
                                                            Test Activity Maintenance Screen
                                                            </option>
                                                    
                                                            <option value="38">
                                                            Test Report Criteria Selection Screen
                                                            </option>
                                                    
                                                            <option value="39">
                                                            Install Report Criteria Selection Screen
                                                            </option>
                                                    
                                            </select>
                                            
                                            <script type="text/javascript">
                                                //xbOptionList.initialise(document.getElementById('cmbTask_0'), '/images/dropdownarrow.gif');
                                            </script>
                                            
                                            
                                        </td>
                                    
                                    <td valign="middle" align="left" aecislocked="0">
                                        <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">No</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false">Yes</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">No</div></div><select onchange="cmbIsOvertime_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbIsOvertime_0" name="cmbIsOvertime_0" class="comboBox" aectype="aecOptionList">
                                            <option value="1">Yes</option>
                                            <option selected="selected" value="0">No</option>
                                        </select>
                                        
                                        <script type="text/javascript">
                                            //xbOptionList.initialise(document.getElementById('cmbIsOvertime_0'), '/images/dropdownarrow.gif');
                                        </script>
                                    </td>
                            

                                    <td valign="middle" align="left" aecislocked="0">

                                        <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">No</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false">Yes</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">No</div></div><select onchange="cmbIsChargeable_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbIsChargeable_0" name="cmbIsChargeable_0" class="comboBox" aectype="aecOptionList">

                                            <option value="1">
                                            Yes
                                            </option>
                                            <option selected="selected" value="0">
                                            No
                                            </option>
                                        </select>

                                    </td>
                            
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="2.00" id="txtHours_40539:0" name="txtHours_40539:0" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40539:0">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="5.00" id="txtHours_40540:0" name="txtHours_40540:0" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40540:0">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="8.00" id="txtHours_40541:0" name="txtHours_40541:0" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40541:0">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="4.00" id="txtHours_40542:0" name="txtHours_40542:0" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40542:0">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="8.00" id="txtHours_40543:0" name="txtHours_40543:0" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40543:0">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40544:0" name="txtHours_40544:0" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40544:0">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40545:0" name="txtHours_40545:0" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40545:0">
                                    
                                    </td>
                                
                                
                                <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                                               
                                    
                                    <div>
                                        <input type="text" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode);" style="border: 1px solid rgb(255, 255, 255); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right; color: rgb(85, 85, 85);" readonly="readonly" value="27.00" id="txtRowTotal_0" class="textBox">
                                    </div>
                                </td>
                                
                                
                                   
                                    <td valign="middle" align="center" aecislocked="0"> 
                                        <div style="text-align: center;">
                                            <a onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode);" onclick="doDelete(0);" href="#">
                                                <img style="padding-top: 2px;" title="Delete this record" alt="Delete this record" src="../../Content/images/icon/deleteitem.gif">
                                                </a>
                                        </div>
                                    </td>
                                
                            </tr>
                            
                                            
                            <tr>
                            

                                <td valign="middle" align="left" title="PROJECT1" aecislocked="0">

                                    <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Demonstration Project</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">Add...</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="2" readonly="false">ABSENCE | Staff Absence</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="3" readonly="false">NONPROJECT | Non Project Work</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="4" readonly="false">PROJECT1 | Demonstration Project</div></div><select onchange="cmbProject_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbProject_1" name="cmbProject_1" class="comboBox" aectype="aecOptionList">

                                        <option value=""></option>
                                    
                                            <option value="Add">
                                            Add...
                                            </option>
                                    

                                                <option aecselectedtext="Staff Absence" aecrestrictdates="0" value="ABSENCE">
                                                ABSENCE | Staff Absence
                                                </option>
                                        

                                                <option aecselectedtext="Non Project Work" aecrestrictdates="0" value="NONPROJECT">
                                                NONPROJECT | Non Project Work
                                                </option>
                                        

                                                <option aecselectedtext="Demonstration Project" selected="selected" aecrestrictdates="0" value="PROJECT1">
                                                PROJECT1 | Demonstration Project
                                                </option>
                                        

                                    </select>
                                    
                                    <script type="text/javascript">
                                        //xbOptionList.initialise(document.getElementById('cmbProject_1'), '/images/dropdownarrow.gif');
                                    </script>
                                    
                                    
                                </td>

                            

                                <td valign="middle" align="left" title="PROJECTWORK" aecislocked="0">

                                    <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Project Work</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">PROJECTWORK | Project Work</div></div><select onchange="cmbActivity_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbActivity_1" name="cmbActivity_1" class="comboBox" aectype="aecOptionList">
                                                                    
                                            <option value="">
                                            </option>

                                        
                                                
                                                <option aecselectedtext="Project Work" selected="selected" value="PROJECTWORK">
                                                PROJECTWORK | Project Work
                                                </option>
                                        
                                    </select>
                                    
                                    <script type="text/javascript">
                                        //xbOptionList.initialise(document.getElementById('cmbActivity_1'), '/images/dropdownarrow.gif');
                                    </script>
                                    
                                    
                                </td>
                                
                                
                                        <td valign="middle" align="left" style="" aecislocked="0">
                                            <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Write Activity Maintenance Screen</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">Document Requirements</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="2" readonly="false">Write Activity Maintenance Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="3" readonly="false">Test Activity Maintenance Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="4" readonly="false">Test Report Criteria Selection Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="5" readonly="false">Install Report Criteria Selection Screen</div></div><select onchange="cmbTask_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbTask_1" name="cmbTask_1" class="comboBox" aectype="aecOptionList">
                                            
                                                        <option value="0">
                                                        </option>
                                                    
                                                            <option value="30">
                                                            Document Requirements
                                                            </option>
                                                    
                                                            <option selected="selected" value="35">
                                                            Write Activity Maintenance Screen
                                                            </option>
                                                    
                                                            <option value="36">
                                                            Test Activity Maintenance Screen
                                                            </option>
                                                    
                                                            <option value="38">
                                                            Test Report Criteria Selection Screen
                                                            </option>
                                                    
                                                            <option value="39">
                                                            Install Report Criteria Selection Screen
                                                            </option>
                                                    
                                            </select>
                                            
                                            <script type="text/javascript">
                                                //xbOptionList.initialise(document.getElementById('cmbTask_1'), '/images/dropdownarrow.gif');
                                            </script>
                                            
                                            
                                        </td>
                                    
                                    <td valign="middle" align="left" aecislocked="0">
                                        <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">No</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false">Yes</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">No</div></div><select onchange="cmbIsOvertime_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbIsOvertime_1" name="cmbIsOvertime_1" class="comboBox" aectype="aecOptionList">
                                            <option value="1">Yes</option>
                                            <option selected="selected" value="0">No</option>
                                        </select>
                                        
                                        <script type="text/javascript">
                                            //xbOptionList.initialise(document.getElementById('cmbIsOvertime_1'), '/images/dropdownarrow.gif');
                                        </script>
                                    </td>
                            

                                    <td valign="middle" align="left" aecislocked="0">

                                        <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">No</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false">Yes</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">No</div></div><select onchange="cmbIsChargeable_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbIsChargeable_1" name="cmbIsChargeable_1" class="comboBox" aectype="aecOptionList">

                                            <option value="1">
                                            Yes
                                            </option>
                                            <option selected="selected" value="0">
                                            No
                                            </option>
                                        </select>

                                    </td>
                            
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="6.00" id="txtHours_40539:1" name="txtHours_40539:1" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40539:1">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="5.00" id="txtHours_40540:1" name="txtHours_40540:1" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40540:1">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="4.00" id="txtHours_40541:1" name="txtHours_40541:1" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40541:1">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="5.00" id="txtHours_40542:1" name="txtHours_40542:1" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40542:1">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="6.00" id="txtHours_40543:1" name="txtHours_40543:1" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40543:1">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40544:1" name="txtHours_40544:1" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40544:1">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40545:1" name="txtHours_40545:1" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40545:1">
                                    
                                    </td>
                                
                                
                                <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                                               
                                    
                                    <div>
                                        <input type="text" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode);" style="border: 1px solid rgb(255, 255, 255); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right; color: rgb(85, 85, 85);" readonly="readonly" value="26.00" id="txtRowTotal_1" class="textBox">
                                    </div>
                                </td>
                                
                                
                                   
                                    <td valign="middle" align="center" aecislocked="0"> 
                                        <div style="text-align: center;">
                                            <a onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode);" onclick="doDelete(1);" href="#">
                                                <img style="padding-top: 2px;" title="Delete this record" alt="Delete this record" src="../../Content/images/icon/deleteitem.gif">
                                                </a>
                                        </div>
                                    </td>
                                
                            </tr>
                            
                                            
                            <tr>
                            

                                <td valign="middle" align="left" title="PROJECT1" aecislocked="0">

                                    <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Demonstration Project</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">Add...</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="2" readonly="false">ABSENCE | Staff Absence</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="3" readonly="false">NONPROJECT | Non Project Work</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="4" readonly="false">PROJECT1 | Demonstration Project</div></div><select onchange="cmbProject_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbProject_2" name="cmbProject_2" class="comboBox" aectype="aecOptionList">

                                        <option value=""></option>
                                    
                                            <option value="Add">
                                            Add...
                                            </option>
                                    

                                                <option aecselectedtext="Staff Absence" aecrestrictdates="0" value="ABSENCE">
                                                ABSENCE | Staff Absence
                                                </option>
                                        

                                                <option aecselectedtext="Non Project Work" aecrestrictdates="0" value="NONPROJECT">
                                                NONPROJECT | Non Project Work
                                                </option>
                                        

                                                <option aecselectedtext="Demonstration Project" selected="selected" aecrestrictdates="0" value="PROJECT1">
                                                PROJECT1 | Demonstration Project
                                                </option>
                                        

                                    </select>
                                    
                                    <script type="text/javascript">
                                        //xbOptionList.initialise(document.getElementById('cmbProject_2'), '/images/dropdownarrow.gif');
                                    </script>
                                    
                                    
                                </td>

                            

                                <td valign="middle" align="left" title="PROJECTWORK" aecislocked="0">

                                    <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Project Work</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">PROJECTWORK | Project Work</div></div><select onchange="cmbActivity_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbActivity_2" name="cmbActivity_2" class="comboBox" aectype="aecOptionList">
                                                                    
                                            <option value="">
                                            </option>

                                        
                                                
                                                <option aecselectedtext="Project Work" selected="selected" value="PROJECTWORK">
                                                PROJECTWORK | Project Work
                                                </option>
                                        
                                    </select>
                                    
                                    <script type="text/javascript">
                                        //xbOptionList.initialise(document.getElementById('cmbActivity_2'), '/images/dropdownarrow.gif');
                                    </script>
                                    
                                    
                                </td>
                                
                                
                                        <td valign="middle" align="left" style="" aecislocked="0">
                                            <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">Write Activity Maintenance Screen</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false"></div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">Document Requirements</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="2" readonly="false">Write Activity Maintenance Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="3" readonly="false">Test Activity Maintenance Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="4" readonly="false">Test Report Criteria Selection Screen</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="5" readonly="false">Install Report Criteria Selection Screen</div></div><select onchange="cmbTask_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbTask_2" name="cmbTask_2" class="comboBox" aectype="aecOptionList">
                                            
                                                        <option value="0">
                                                        </option>
                                                    
                                                            <option value="30">
                                                            Document Requirements
                                                            </option>
                                                    
                                                            <option selected="selected" value="35">
                                                            Write Activity Maintenance Screen
                                                            </option>
                                                    
                                                            <option value="36">
                                                            Test Activity Maintenance Screen
                                                            </option>
                                                    
                                                            <option value="38">
                                                            Test Report Criteria Selection Screen
                                                            </option>
                                                    
                                                            <option value="39">
                                                            Install Report Criteria Selection Screen
                                                            </option>
                                                    
                                            </select>
                                            
                                            <script type="text/javascript">
                                                //xbOptionList.initialise(document.getElementById('cmbTask_2'), '/images/dropdownarrow.gif');
                                            </script>
                                            
                                            
                                        </td>
                                    
                                    <td valign="middle" align="left" aecislocked="0">
                                        <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">No</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false">Yes</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">No</div></div><select onchange="cmbIsOvertime_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbIsOvertime_2" name="cmbIsOvertime_2" class="comboBox" aectype="aecOptionList">
                                            <option value="1">Yes</option>
                                            <option selected="selected" value="0">No</option>
                                        </select>
                                        
                                        <script type="text/javascript">
                                            //xbOptionList.initialise(document.getElementById('cmbIsOvertime_2'), '/images/dropdownarrow.gif');
                                        </script>
                                    </td>
                            

                                    <td valign="middle" align="left" aecislocked="0">

                                        <div style="line-height: 18px; height: 18px; border: 1px solid rgb(255, 255, 255); overflow: hidden; vertical-align: middle; background-color: rgb(255, 255, 255); width: auto;"><input type="image" src="../../Content/images/icon/dropdownarrow.gif" style="width: 13px; height: 18px; border: 0px solid rgb(255, 255, 255); background-color: rgb(198, 214, 239); padding: 0px; float: right;"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; line-height: 18px; height: 18px; border: 0px solid rgb(255, 0, 0); padding-right: 16px; padding-left: 3px; cursor: default; background: none repeat scroll 0% 0% transparent; white-space: nowrap; overflow: hidden;">No</div></div><div style="margin-top: 0px; position: absolute; overflow: hidden; border: 1px solid rgb(102, 102, 102); background-color: rgb(255, 255, 255); display: none; z-index: 9999; color: rgb(255, 0, 0);"><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="0" readonly="false">Yes</div><div style="color: rgb(85, 85, 85); font-family: Verdana,Arial,Helvetica,'Microsoft Sans Serif'; font-size: 10px; font-weight: 400; font-style: normal; vertical-align: middle; width: 100%; line-height: 16px; height: 16px; padding: 0px 3px 1px; cursor: default; border-bottom: 0px solid rgb(255, 0, 0); border-top: 0px solid rgb(255, 0, 0);" index="1" readonly="false">No</div></div><select onchange="cmbIsChargeable_onChange(this);" onkeydown="tableCell_onKeyDown(event, this.parentNode);" onblur="tableCell_onBlur(this.parentNode);" onfocus="tableCell_onFocus(this.parentNode, this.options[this.selectedIndex].text);" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); width: 100%; display: none;" size="1" id="cmbIsChargeable_2" name="cmbIsChargeable_2" class="comboBox" aectype="aecOptionList">

                                            <option value="1">
                                            Yes
                                            </option>
                                            <option selected="selected" value="0">
                                            No
                                            </option>
                                        </select>

                                    </td>
                            
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40539:2" name="txtHours_40539:2" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40539:2">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40540:2" name="txtHours_40540:2" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40540:2">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40541:2" name="txtHours_40541:2" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40541:2">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40542:2" name="txtHours_40542:2" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40542:2">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40543:2" name="txtHours_40543:2" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40543:2">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40544:2" name="txtHours_40544:2" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40544:2">
                                    
                                    </td>
                                
                                    <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                        <div style="border: 1px solid rgb(255, 255, 255);" title="">
                                            
                                                    <input type="text" onchange="txtHours_onChange(this);" onkeypress="txtHours_onKeyPress(event, this);" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode, '');" style="border: 1px solid rgb(255, 255, 255); color: rgb(85, 85, 85); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right;" maxlength="8" value="" id="txtHours_40545:2" name="txtHours_40545:2" class="textBox">
                                                
                                        </div>
                                        
                                    

                                            <img style="position: relative; margin-top: -19px; margin-right: 1px; float: right; cursor: pointer;" onclick="imgNotes_onClick(this);" title="Click to enter additional notes" alt="Click to enter additional notes" src="../../Content/images/icon/datagrid_note_transparent.gif" id="imgNotes_40545:2">
                                    
                                    </td>
                                
                                
                                <td valign="middle" align="right" onclick="tableCell_onClick(this);" aecislocked="0" style="white-space: nowrap;">
                                                               
                                    
                                    <div>
                                        <input type="text" onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode);" style="border: 1px solid rgb(255, 255, 255); padding-left: 2px; padding-right: 3px; width: 61px; text-align: right; color: rgb(85, 85, 85);" readonly="readonly" value="0.00" id="txtRowTotal_2" class="textBox">
                                    </div>
                                </td>
                                
                                
                                    
                                    <td valign="middle" align="center" aecislocked="0"> 
                                        <div style="text-align: center;">
                                            <a onkeydown="tableCell_onKeyDown(event, this.parentNode.parentNode);" onblur="tableCell_onBlur(this.parentNode.parentNode);" onfocus="tableCell_onFocus(this.parentNode.parentNode);" onclick="doDelete(2);" href="#">
                                                <img style="padding-top: 2px;" title="Delete this record" alt="Delete this record" src="../../Content/images/icon/deleteitem.gif">
                                                </a>
                                        </div>
                                    </td>
                                
                            </tr>
                            
                            
                    </tbody>
                </table>
                
              
            </div>  
        </div>

</asp:Content>
