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
                                                                      My Work  </td>
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
            
<table cellspacing="0" cellpadding="0" class="dashboardTabStrip" style="border: medium none; width: 100%;" id="tabTablectl00_ucTabStrip">
    <tbody><tr>
        <td align="left" id="ctl00_ucTabStrip_tdStretch">            
            <div style="overflow: hidden;" id="ctl00_ucTabStrip_divTabContainer">
                
                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_ucTabStrip_tabStrip">
	<tbody>
	
    <tr>
        <td class="dashboardTabSpace">
            <img height="1" width="5" id="ctl00_ucTabStrip_imgTabSpace" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" class="dashboardTabSelected">
            My Work
        </td>
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace0" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','MyProjects')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
            <a href="/MyWork/Projects"> My Projects</a>
        </td>
       
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace4" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','ActionViewPos2')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
            <a href="MyWork/Documents">Documents</a>
        </td>
       
        <td nowrap="nowrap" width="100%" valign="middle" align="left" class="dashboardTabTail">
            &nbsp;
        </td>
    </tr>
</tbody></table>
                
             </div>			 
        </td>

    </tr>
    
    
        <tr>
		    <td>
			    <table height="5" width="100%" cellspacing="0" cellpadding="0" border="0" class="dashboardTabStripBase">
				    <tbody><tr>
					    <td valign="middle" align="left" id="btnScrollLeft" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollLeft" src="../../Content/images/icon/arrowleft_grey.gif">
					    </td>
					    <td width="100%">
    						
					    </td>
					    <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollRight" src="../../Content/images/icon/arrowright_grey.gif">
					    </td>
				    </tr>
			    </tbody></table>
		    </td>
	    </tr>
	
        </tbody></table>
    
            <table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding: 3px; border-top: 1px solid rgb(153, 153, 153); border-collapse: collapse;" id="ctl00_tblMain">
	<tbody><tr>
		<td width="100%" valign="top" align="left" style="border: medium none; margin: 0px; border-collapse: collapse;"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="border: medium none; border-collapse: collapse; margin: 0px; padding: 0px;">
			<tbody><tr>
				<td valign="top" align="left" rowspan="1" colspan="1" style="padding: 2px; width: 100%;">
    
       
        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; border-collapse: collapse; padding: 0px;" class="dashboardElementHeaderEnabled">
              
            <tbody><tr>
                

                <td valign="middle" style="padding: 3px 2px;">
                    <table width="100%" cellspacing="0">
                        <tbody><tr>
                            <td align="left" style="padding: 0px;" class="dashboardElementHeaderTitle">
                                <table style="padding: 0px;">
                                    <tbody><tr>
                                        <td style="padding: 0px;">
                                            My Summary - Alan Barnacle
                                            &nbsp;
                                        </td>
                                    </tr>                                    
                                </tbody></table>
                            </td>
                            
                            <td align="right" style="padding: 0px;">
                                <table cellspacing="0" cellpadding="0">
                                    <tbody><tr>                                    
                                        
                                            
                                        <td align="right" style="padding: 0px;" class="dashboardElementHeaderLink">
                                            
    <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
        <tbody><tr>
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_hdrElement_MySummary_mnuMenus_tblMenu0" style="padding-left: 4px; white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">                                
                    
                            <table cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
                                <tbody><tr id="trMenuIcons">
                                    
                                    <!-- Padding Removed as making Title bar too big on dashboards -->
                                    <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('MySummary'));" style="padding: 0px; border: 1px solid rgb(236, 236, 237);">
                                                
                                    </td>
                                    
                                </tr>
                            </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 5005;" id="ctl00_hdrElement_MySummary_mnuMenus_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#FFFFFF';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('MySummary'))" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('MySummary'))" style="white-space: nowrap; cursor: pointer; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Print
                                </td>
                            </tr>
                    
            </tbody></table>
        </div>          
                                        </td>
                                
                                        
                                            <td align="right" style="white-space: nowrap; padding-left: 5px;" class="dashboardElementHeaderTitle">
                                                 </td>
                                        
                                    </tr>
                                </tbody></table>
                            </td>
                        </tr>
                    </tbody></table>
                </td>   

                
            </tr> 
        
        </tbody></table>
                  
            
<div style="padding: 0px; overflow: auto; border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 100px; width: 1417px;" id="ctl00_dsh_dashboard_divElementMySummary">





        <div style="visibility: visible;" id="divContent_MySummaryElement">

            <div style="padding-left: 10px; padding-right: 10px;" id="divHeader_MySummaryElement">

            </div>

            <div style="padding-left: 10px; padding-right: 10px;" id="divDetail_MySummaryElement">

                <div>

                    <table cellspacing="0" cellpadding="0" border="0" id="tblMain_MySummaryElement">

                        <tbody>
                        
                          </tbody>

                    </table>
                    <table cellspacing="0" cellpadding="0" border="0" id="Table1">
                        <tbody>

                            <tr>

                                
                                    <td valign="top" align="left" style="padding-right: 10px;">
                                        <table id="ctl00_dshElement_MySummary_aecElementControlMySummary_tblCol1">
					<tbody><tr>
						<td class="dashboardElementSectionTitle">Timesheets</td>
					</tr>
					<tr>
						<td><a title="Click to view" href="#">You have entered 
                            4 Hours this week</a></td>
					</tr>
					<tr>
						<td class="style4"></td>
					</tr>
					<tr>
						<td class="dashboardElementSectionTitle">Submissions</td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
				</tbody></table>
				
                                    </td>
                                
                                <td valign="top" align="left" style="padding-right: 10px;">
                                    <table id="ctl00_dshElement_MySummary_aecElementControlMySummary_tblCol2">
					<tbody><tr>
						<td class="dashboardElementSectionTitle">In Progress</td>
					</tr>
					<tr>
						<td>You have 2 in progress items</td>
					</tr>
				</tbody></table>
				
                                </td>

                                <td valign="top" align="left">
                                    <table id="ctl00_dshElement_MySummary_aecElementControlMySummary_tblCol3">
					<tbody><tr>
						<td class="dashboardElementSectionTitle">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
				</tbody></table>
				
                                </td>

                            </tr>

                        </tbody>

                    </table>

                </div>

            </div>

        </div>

            
                   
</div></td>
			</tr>
			<tr>
				<td valign="top" align="left" rowspan="2" colspan="1" style="padding: 2px; width: 100%;">
    
       
        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; border-collapse: collapse; padding: 0px;" class="dashboardElementHeaderEnabled">
              
            <tbody><tr>
                

                <td valign="middle" style="padding: 3px 2px;">
                    <table width="100%" cellspacing="0">
                        <tbody><tr>
                            <td align="left" style="padding: 0px;" class="dashboardElementHeaderTitle">
                                <table style="padding: 0px;">
                                    <tbody><tr>
                                        <td style="padding: 0px;">
                                            Planned Work and Deadlines
                                            &nbsp;
                                        </td>
                                    </tr>                                    
                                </tbody></table>
                            </td>
                            
                            <td align="right" style="padding: 0px;">
                                <table cellspacing="0" cellpadding="0">
                                    <tbody><tr>                                    
                                        
                                            
                                        <td align="right" style="padding: 0px;" class="dashboardElementHeaderLink">
                                            
    <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
        <tbody><tr>
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_hdrElement_PlannedWork_mnuMenus_tblMenu0" style="padding-left: 4px; white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">                                
                    
                            <table cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
                                <tbody><tr id="trMenuIcons">
                                    
                                    <!-- Padding Removed as making Title bar too big on dashboards -->
                                    <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('PlannedWork'));" style="padding: 0px; border: 1px solid rgb(236, 236, 237);">
                                                
                                    </td>
                                    
                                </tr>
                            </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 5005;" id="ctl00_hdrElement_PlannedWork_mnuMenus_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#FFFFFF';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('PlannedWork'))" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('PlannedWork'))" style="white-space: nowrap; cursor: pointer; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Print
                                </td>
                            </tr>
                    
            </tbody></table>
        </div>          
                                        </td>
                                
                                        
                                    </tr>
                                </tbody></table>
                            </td>
                        </tr>
                    </tbody></table>
                </td>   

                
            </tr> 
        
        </tbody></table>
                  
            
<div style="padding: 0px; overflow: hidden; border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 137.667px; width: 1417px;" id="ctl00_dsh_dashboard_divElementPlannedWork">






        <style type="text/css">

            .plannedWorkTableRow {
	            font-family: Verdana, Arial, Helvetica, sans-serif;
	            font-size: x-small;
	            color: #000000;
	            /*background-color: #FFFFFF;*/
	            padding: 4px 5px 4px 5px;
	            border-right: 1px solid #DBDBDB;
	            border-bottom: 1px solid #DBDBDB;
            }

            .plannedWorkTableRowStart {
	            font-family: Verdana, Arial, Helvetica, sans-serif;
	            font-size: x-small;
	            color: #000000;
	            /*background-color: #FFFFFF;*/ 
	            padding: 4px 5px 4px 5px;
	            border-right: 1px solid #DBDBDB;
	            border-bottom: 1px solid #DBDBDB;
	            border-left: 1px solid #DBDBDB;
            }
            
            .plannedWorkItem {
	            font-family: Verdana, Arial, Helvetica, sans-serif;	
	            font-size: xx-small;
	            color: #666666;
	            /*background-color: #FFFFFF;*/ 
	            padding: 3px;
	            border-top: 1px solid #D4D0C8;
	            border-right: 1px solid #D4D0C8;
	            border-bottom: 1px solid #D4D0C8;
	            border-left: 1px solid #D4D0C8;
	            width: 100%;
            }
            
            .style4
            {
                height: 23px;
            }
            
        </style>
    <input type="hidden" value="0" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_hdnScrollTop" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$hdnScrollTop"><input type="hidden" value="0" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_hdnScrollLeft" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$hdnScrollLeft">

<div style="visibility: hidden; position: absolute;" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucTooltipManager_divtooltip_loading">
    <img style="cursor: pointer;" src="../../Content/images/icon/loading.gif">
</div>
<div aecpopupdelay="500" style="width: 250px; visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(191, 184, 156);" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucTooltipManager_divtooltip">



    <table cellspacing="0" cellpadding="2px" style="width: 100%;">
        <tbody><tr>
            <td align="center" style="border-bottom: 1px solid rgb(191, 184, 156); background-color: rgb(255, 255, 204); font-weight: bold;" id="tdTitle">
                &nbsp;
            </td>
        
        </tr>

        <tr>
        

            <td colspan="1">
                <table cellspacing="0">
                    <tbody><tr>
                        <td valign="middle" align="left" id="tdTooltip">
                            <textarea style="line-height: 12px; border: 0pt none; overflow: hidden;" rows="2" cols="45" class="textArea" id="txtTooltip"></textarea>
                        </td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    </tbody></table>
</div>


            <script type="text/javascript" language="javascript">

                addEvent(window, 'load', window_onLoad_PlannedWorkElement);

                function window_onLoad_PlannedWorkElement() {

                    var oParent = getParentNode(document.getElementById('divContent_PlannedWorkElement'));
                    oParent.onresize = resizeWindows_PlannedWorkElement;

                    // Turn off scrolling on dshboard element master div so that table handles scrolling!
                    document.getElementById('divContent_PlannedWorkElement').parentNode.style.overflow = 'hidden';

                    resizeWindows_PlannedWorkElement();

                    // Initialise scrollable tables
                    xbScrollableTable.initialise('tblMain_PlannedWorkElement', 100);
                    PlannedWorkElement_initialiseScrollableTables();
                }

                function resizeWindows_PlannedWorkElement() {

                    // Set the height of scrolling table div so that when resize element scrolling table resizes properly
                    document.getElementById('divDetail_PlannedWorkElement').style.height =
                                Math.max(120, 
                                         getParentNode(document.getElementById('divContent_PlannedWorkElement')).offsetHeight - 
                                         document.getElementById('divHeader_PlannedWorkElement').offsetHeight - 10) + 'px';
                }

            </script>
    
        <div style="visibility: visible;" id="divContent_PlannedWorkElement">

            <div style="padding-left: 10px; padding-right: 10px;" id="divHeader_PlannedWorkElement">

            
                <table width="100%" cellspacing="0" cellpadding="2" border="0">

                    <thead>

                        <tr>
                            <td style="height: 5px;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <table width="100%" cellspacing="0" cellpadding="0" border="0">

                                    <tbody><tr>
                                    
                                        <td align="left" style="white-space: nowrap;">
                                        Project:
                                        </td>                                

                                        <td align="left" style="white-space: nowrap; padding-left: 3px;">
                                         <select name="ctl00$phFormContent$cboProjectLevel" id="project"
                                                            class="comboBox">
                                                            <option value="Select">Select</option>
                                                            <option value="Project1" selected="selected">Project 1</option>
                                                            <option value="Project2">Project 2</option>
                                                            <option value="Project3">Project 3</option>
                                                        </select>
                                        </td>

                                    
                                        <td align="left" style="white-space: nowrap; padding-left: 20px;">
                                        Show:
                                        </td>

                                        <td align="left" style="white-space: nowrap; padding-left: 3px;">
                                        <select onchange="__doPostBack('ctl00$dshElement_PlannedWork$aecElementControlPlannedWork','')" class="comboBox" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_lstShowType" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$lstShowType">
					<option value="All:" selected="selected">All</option>
					<option value="Assignments:">Assignments</option>
					<option value="CRMActions:DOCUMENT">Project Document</option>
					<option value="CRMActions:PROJECT_UPDATE">Project Status Update</option>
					<option value="CRMActions:TO DO">To Do Action</option>
				</select>
                                        </td>

                                    

                                            <td align="left" style="white-space: nowrap; padding-left: 20px;">
                                                

<div class="splitButton" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucAddButton">
    <select style="display: none;" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucAddButton_cmbDropDown" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$ucAddButton$cmbDropDown">
					<option value="Assignments:" selected="selected">Assignment</option>
					<option value="RiskActions:">Mitigation Plan Item</option>
					<option value="IssueActions:">Resolution Plan Item</option>
					<option value="CRMActions:DOCUMENT">Project Document</option>
					<option value="CRMActions:PROJECT_UPDATE">Project Status Update</option>
					<option value="CRMActions:TO DO">To Do Action</option>
				</select>

    <table cellspacing="0" cellpadding="0" border="0">
        <tbody><tr>
            <td valign="middle" align="left">
                
            </td>
            <td valign="middle" align="left">
                
            </td>
        </tr>
    </tbody></table>                
    
    
</div>
                                            </td>
                                    
                                        <td style="white-space: nowrap; width: 100%;">
                                            &nbsp;
                                        </td>

                                    
                                        <td align="right">

                                            <table cellspacing="0" cellpadding="0" border="0">

                                                <tbody><tr>
                                                

                                                        <td valign="middle" align="left" style="white-space: nowrap; padding-left: 20px;">
                                                            <input type="image" title="Go to Current Week" alt="Go to Current Week" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_imgGoToCurrentPeriod" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$imgGoToCurrentPeriod" src="../../Content/images/icon/currentperiod.gif">                                            
                                                        </td>

                                                        <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                                            <input type="image" title="Go Back a Week" alt="Go Back a Week" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_imgBack" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$imgBack" src="../../Content/images/icon/chevron_left.gif">
                                                        </td>

                                                        <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">

                                                            
<a id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucFromDate_lnkPickDate" href="javascript:com_dateinput_showHyperlinkDatePick('/common/com_calendar.aspx?CalendarMode=',com_dateinput_setHyperlinkDateCallback_ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucFromDate,'40539');">12/27/2010</a>
        <input type="hidden" class="textBox" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucFromDate_hdnDate" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$ucFromDate$hdnDate">
    
    
                                                        </td>

                                                        <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">                                            
                                                            <input type="image" title="Go Forward a Week" alt="Go Forward a Week" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_imgForward" name="ctl00$dshElement_PlannedWork$aecElementControlPlannedWork$imgForward" src="../../Content/images/icon/chevron_right.gif">
                                                        </td>
                                                
                                                </tr>

                                            </tbody></table>

                                        </td>
                                    </tr>

                                </tbody></table>
                            </td>
                        </tr>

                        <tr>
                            <td style="height: 5px;">
                            </td>
                        </tr>

                    </thead>

                </table>

            </div>

            <div style="padding-left: 10px; padding-right: 10px; height: 120px;" id="divDetail_PlannedWorkElement">

                <div style="overflow: hidden; width: 1397px;"><table width="100%" cellspacing="0" cellpadding="0" border="0" id="tblMain_PlannedWorkElement_Head" class="table" style="margin-bottom: 0px; padding-bottom: 0px; border-bottom-width: 0px; width: 1397px;"><thead class="fixedGridHeader" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ctlThead"><tr><td valign="bottom" align="center" style="white-space: nowrap; width: 188px;" class="tableColumnTitle">12/27/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 188px;" class="tableColumnTitle">12/28/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 188px;" class="tableColumnTitle">12/29/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 188px;" class="tableColumnTitle">12/30/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 188px;" class="tableColumnTitle">12/31/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 188px;" class="tableColumnTitle">1/1/2011</td><td valign="bottom" align="center" style="white-space: nowrap; width: 188px; padding-right: 5px;" class="tableColumnTitle">1/2/2011</td></tr></thead></table></div><div style="border-bottom: 1px solid rgb(204, 204, 204); padding-bottom: 0px; margin-bottom: 0px; overflow: auto; width: 1397px; height: 74px;">

                    <table width="100%" cellspacing="0" cellpadding="0" border="0" class="table" id="tblMain_PlannedWorkElement" style="margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; width: 1397px;" aecisinitialised="true" aecminbodyheight="74" aeccontainersize="120:1417"><thead class="fixedGridHeader" id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ctlThead" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><tr style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><td valign="bottom" align="center" style="white-space: nowrap; width: 14%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">12/27/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 14%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">12/28/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 14%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">12/29/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 14%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">12/30/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 14%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">12/31/2010</td><td valign="bottom" align="center" style="white-space: nowrap; width: 14%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">1/1/2011</td><td valign="bottom" align="center" style="white-space: nowrap; width: 14%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">1/2/2011</td></tr></thead><tbody id="ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ctlTbody"><tr><td valign="top" align="center" style="width: 14%;" class="plannedWorkTableRowStart"><table width="100%" cellspacing="2" cellpadding="0" border="0"></table></td><td valign="top" align="center" style="width: 14%;" class="plannedWorkTableRow"><table width="100%" cellspacing="2" cellpadding="0" border="0"></table></td><td valign="top" align="center" style="width: 14%;" class="plannedWorkTableRow"><table width="100%" cellspacing="2" cellpadding="0" border="0"></table></td><td valign="top" align="center" style="width: 14%;" class="plannedWorkTableRow"><table width="100%" cellspacing="2" cellpadding="0" border="0"></table></td><td valign="top" align="center" style="width: 14%;" class="plannedWorkTableRow"><table width="100%" cellspacing="2" cellpadding="0" border="0"><tbody><tr><td align="left" class="plannedWorkItem"><table width="100%" cellspacing="1" cellpadding="0" border="0"><tbody><tr><td align="center" colspan="2" style="font-weight: bold; background-color: rgb(255, 255, 204); border: 1px solid rgb(191, 184, 156);">Assignment</td></tr><tr><td width="100%" align="left"><a onmouseout="com_extendedtooltip_cancelTooltipPopup('ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucTooltipManager_divtooltip');" onmouseover="com_extendedtooltip_displayTooltipPopup(event, 'ctl00_dshElement_PlannedWork_aecElementControlPlannedWork_ucTooltipManager_divtooltip', 'AssignmentTooltip:38', 'Assignment', 'Project: PROJECT1 | Demonstration Project\\nDescription: Test Report Criteria Selection Screen\\nStart: 12/31/2010\\nFinish: 1/6/2011\\n', null);" href="javascript:PlannedWorkElement_editAssignment(38);"><span style="display: block; font-weight: bold;">Demonstration Project</span><span style="display: block;">4 hours</span><span style="display: block;">Test Report Criteria Selection...</span></a></td><td valign="top" align="right" style="padding-left: 5px;"><a href="javascript:PlannedWorkElement_deleteAssignment(38, -1);"><img title="Click to delete Assignment" alt="Click to delete Assignment" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="center" style="width: 14%;" class="plannedWorkTableRow"><table width="100%" cellspacing="2" cellpadding="0" border="0"></table></td><td valign="top" align="center" style="width: 14%;" class="plannedWorkTableRow"><table width="100%" cellspacing="2" cellpadding="0" border="0"></table></td></tr></tbody></table>

                </div>

            </div>

        </div>

            
                   
</div></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
</tbody></table>

        </div>

</asp:Content>
