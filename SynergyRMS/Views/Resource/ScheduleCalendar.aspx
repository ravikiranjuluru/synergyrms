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
                                                                      Calendar  </td>
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
	<tbody><tr>
	</tr>
	
    <tr>
        <td class="dashboardTabSpace">
            <img height="1" width="5" id="ctl00_ucTabStrip_imgTabSpace" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Scheduling')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
            <a href="Schedule">Scheduling</a>
        </td>
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace0" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" class="dashboardTabSelected">
            Calendar
        </td>        
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace2" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Utilisation')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
            <a href="Utilisation">Utilisation</a>
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
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_hdrElement_Calendar_mnuMenus_tblMenu0" style="padding-left: 4px; white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">                                
                    
                            <table cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
                                <tbody><tr id="trMenuIcons">
                                    
                                    <!-- Padding Removed as making Title bar too big on dashboards -->
                                    <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Calendar'));" style="padding: 0px; border: 1px solid rgb(236, 236, 237);">
                                 
                                    </td>
                                    
                                </tr>
                            </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 5005;" id="ctl00_hdrElement_Calendar_mnuMenus_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#FFFFFF';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Calendar'))" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Calendar'))" style="white-space: nowrap; cursor: pointer; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);" class="popupMenuItem">
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
                  
            
<div style="padding: 0px; overflow: hidden; border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 275px; width: 1417px;" id="ctl00_dsh_dashboard_divElementCalendar">






                <script type="text/javascript" language="javascript">
                
                    var m_oAssignmentToolTip = null;
                        
                    function CalendarElement_showAssignmentToolTip(e, code, title, text)
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
                        doFade(m_oAssignmentToolTip, 0, 100, 10, 20, 0.5);
                    }
                    
                    
                    function CalendarElement_hideAssignmentToolTip(e)
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
                        
                        var oParent = getParentNode(document.getElementById('divContent'));                       
                        oParent.onresize = resizeWindows;     
                     
                        // Initialise objects
                        m_oAssignmentToolTip = document.getElementById('divAssignmentToolTip');  
                        
                        // Turn off scrolling on dshboard element master div so that table handles scrolling!
                        document.getElementById('divContent').parentNode.style.overflow = 'hidden';          
                          
                        resizeWindows(); 
                        
                        // Initialise scrollable tables
                        xbScrollableTable.initialise('tblMain', 100);
                        CalendarElement_initialiseScrollableTables();
                    }
                           
                    function resizeWindows() {  
                        
                        // Set the height of scrolling table div so that when resize element scrolling table resizes properly
                        document.getElementById('divDetail').style.height = Math.max(120, getParentNode(document.getElementById('divContent')).offsetHeight - document.getElementById('divHeader').offsetHeight - 10) + 'px';
                    }

                </script>

        <input type="hidden" value="0" id="ctl00_dshElement_Calendar_aecElementControlCalendar_hdnScrollTop" name="ctl00$dshElement_Calendar$aecElementControlCalendar$hdnScrollTop"><input type="hidden" value="0" id="ctl00_dshElement_Calendar_aecElementControlCalendar_hdnScrollLeft" name="ctl00$dshElement_Calendar$aecElementControlCalendar$hdnScrollLeft">
            <div onmouseout="CalendarElement_hideAssignmentToolTip(event);" code="" class="toolTip" id="divAssignmentToolTip">
                <table cellspacing="0" cellpadding="0" border="0" style="border: 1px solid rgb(191, 184, 156);">
                    <tbody><tr>
                        <td valign="middle" align="center" style="background: none repeat scroll 0% 0% rgb(243, 240, 231); border-bottom: 1px solid rgb(191, 184, 156); padding: 4px 6px; font-weight: bold; white-space: nowrap;">
                            
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="left" style="background: none repeat scroll 0% 0% rgb(255, 255, 255); padding: 2px 6px 4px; white-space: nowrap;">
                            
                        </td>
                    </tr>
                </tbody></table>
            </div>

        
            <div onmouseout="javascript:CalendarElement_hidePopup('divColourKey', 100);" onmouseover="javascript:CalendarElement_displayColourPopup(event, 'tdColourKey', 'divColourKey');" style="padding: 2px; margin: 1px; overflow: visible; background-color: rgb(236, 236, 237); border: 1px solid rgb(153, 153, 153); max-width: 250px;" class="toolTip" id="divColourKey">

                <table cellspacing="0" cellpadding="2" border="0" id="ctl00_dshElement_Calendar_aecElementControlCalendar_tblColourKey">
					<tbody><tr>
						<td align="left" style="vertical-align: middle;" class="normal"><table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px;">
							<tbody><tr>
								<td style="width: 100%; height: 100%; background-color: LightGreen;"></td>
							</tr>
						</tbody></table>
						</td>
						<td align="left">Confirmed Assignments</td>
					</tr>
					<tr>
						<td align="left" style="vertical-align: middle;" class="normal"><table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px;">
							<tbody><tr>
								<td style="width: 100%; height: 100%; background-color: Orange;"></td>
							</tr>
						</tbody></table>
						</td>
						<td align="left">Provisional Assignments</td>
					</tr>
				</tbody></table>
				

            </div>

    
        <div style="visibility: visible; overflow: hidden;" id="divContent">

            <div style="padding-left: 10px; padding-right: 10px;" id="divHeader">

                <table width="100%" cellspacing="0" cellpadding="0" border="0">

                    <thead>

                        <tr>
                        
                                <td align="left">
                                    

<table width="100px" cellspacing="0" cellpadding="0" border="0" style="">
    <tbody><tr>
        <td align="left" style="white-space: nowrap;">
            
            <table style="width: 100%;">
                <tbody><tr>
                    <td align="left" style="white-space: nowrap; border: medium none; width: 100%;">
                        
                        
                            <table>
                                <tbody><tr>
                                    <td align="left" style="white-space: nowrap;">
                                        Resource List:&nbsp; 
                                        <select onchange="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager','CBOLIST_CLICK')" class="comboBox" id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_cboList" name="ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$cboList">
					<option value="All" selected="selected">All</option>
				</select>
                                    </td>
                                    
                                    
                                            <td align="left">
                                                
    <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
        <tbody><tr>
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_mnuListActions_tblMenu0" style="white-space: nowrap; cursor: pointer; color: rgb(102, 102, 102);">                                
                    
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr onmouseout="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown.gif';" onmouseover="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown_mouseover.gif';" id="trMenuIcons">
                                        <td valign="middle" align="center" onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');" style="padding-left: 10px; white-space: nowrap; padding-right: 9px; background-image: url(&quot;../../Content/images/icon/vistabuttongrey.gif&quot;); background-repeat: no-repeat; background-position: left center; height: 22px;">
                                            Actions
                                        </td>
                                        
                                            <td onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');">
                                                <img style="vertical-align: middle;" alt="" src="../../Content/images/icon/vistabuttongrey_dropdown_mouseover.gif">                
                                            </td>
                                        
                                    </tr>
                                </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 1001;" id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_mnuListActions_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Create Empty List...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager');" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager');" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Save As...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Delete...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="../../Content/images/common/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Add Resources...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="../../Content/images/common/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Show List Contents
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
            
           <input type="hidden" value="False" id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_hdnPostBack" name="ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$hdnPostBack">
           <input type="hidden" id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_hdnAction" name="ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$hdnAction">
           <input type="hidden" id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucResourceListManager_hdnParameter" name="ctl00$dshElement_Calendar$aecElementControlCalendar$ucResourceListManager$hdnParameter">
            
        </td>
    </tr>
</tbody></table>
                                </td>
                        
                            <td align="left" style="white-space: nowrap; padding-left: 10px;">
                            Project:
                            </td>                                

                            <td align="left" style="white-space: nowrap; padding-left: 3px; width: 100%;">
                            <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_dshElement_Calendar_aecElementControlCalendar_pbxProject_lnkSelect', 'ctl00_dshElement_Calendar_aecElementControlCalendar_pbxProject_lnkRefresh', true);" title="" maxlength="20" class="textBox" id="ctl00_dshElement_Calendar_aecElementControlCalendar_pbxProject_txtValue" name="ctl00$dshElement_Calendar$aecElementControlCalendar$pbxProject$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$pbxProject$lnkSelect','')" title="Select" id="ctl00_dshElement_Calendar_aecElementControlCalendar_pbxProject_lnkSelect"><img border="0" alt="Select" src="../../Content/images/common/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar$pbxProject$lnkRefresh','')" title="Refresh" id="ctl00_dshElement_Calendar_aecElementControlCalendar_pbxProject_lnkRefresh"><img border="0" alt="Refresh" src="../../Content/images/common/refresh.gif"></a>
        <input type="hidden" id="ctl00_dshElement_Calendar_aecElementControlCalendar_pbxProject_hdnDescription" name="ctl00$dshElement_Calendar$aecElementControlCalendar$pbxProject$hdnDescription">
                            </td>

                        
                            <td align="left" style="padding-left: 10px;">
                            

                                    <table cellspacing="0" cellpadding="0" border="0">
                                        <tbody><tr>
                                            <td valign="middle" align="left" style="white-space: nowrap;">
                                            Colour Scheme:
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">
                                                <select onchange="__doPostBack('ctl00$dshElement_Calendar$aecElementControlCalendar','')" class="comboBox" id="ctl00_dshElement_Calendar_aecElementControlCalendar_lstColourScheme" name="ctl00$dshElement_Calendar$aecElementControlCalendar$lstColourScheme">
					<option value="AssignmentStatus" selected="selected">Assignment Status</option>
					<option value="Chargeability">Chargeability</option>
				</select>
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;" onmouseout="javascript:CalendarElement_hidePopup('divColourKey', 100);" onmouseover="javascript:CalendarElement_displayColourPopup(event, 'tdColourKey', 'divColourKey');" id="tdColourKey">
                                                <img alt="" src="../../Content/images/icon/colour_key.gif">
                                            </td>
                                        </tr>
                                    </tbody></table>
                                                                
                            </td>

                        
                            <td align="right">

                                <table cellspacing="0" cellpadding="0" border="0">

                                    <tbody><tr>
                                    

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 20px;">
                                                <input type="image" title="Go to Current Week" alt="Go to Current Week" id="ctl00_dshElement_Calendar_aecElementControlCalendar_imgGoToCurrentPeriod" name="ctl00$dshElement_Calendar$aecElementControlCalendar$imgGoToCurrentPeriod" src="../../Content/images/icon/currentperiod.gif">                                            
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                                <input type="image" title="Go Back a Week" alt="Go Back a Week" id="ctl00_dshElement_Calendar_aecElementControlCalendar_imgBack" name="ctl00$dshElement_Calendar$aecElementControlCalendar$imgBack" src="../../Content/images/icon/chevron_left.gif">                                            
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">

                                                
<a id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucFromDate_lnkPickDate" href="javascript:com_dateinput_showHyperlinkDatePick('/common/com_calendar.aspx?CalendarMode=',com_dateinput_setHyperlinkDateCallback_ctl00_dshElement_Calendar_aecElementControlCalendar_ucFromDate,'40525');">12/13/2010</a>
        <input type="hidden" class="textBox" id="ctl00_dshElement_Calendar_aecElementControlCalendar_ucFromDate_hdnDate" name="ctl00$dshElement_Calendar$aecElementControlCalendar$ucFromDate$hdnDate">
    
    
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">                                            
                                                <input type="image" title="Go Forward a Week" alt="Go Forward a Week" id="ctl00_dshElement_Calendar_aecElementControlCalendar_imgForward" name="ctl00$dshElement_Calendar$aecElementControlCalendar$imgForward" src="../../Content/images/icon/chevron_right.gif">
                                            </td>
                                                                                
                                    </tr>

                                </tbody></table> 
                                
                            </td>                            

                        </tr>

                    </thead>

                </table>

            </div>

            <div style="padding-left: 10px; padding-right: 10px; text-align: left; height: 232px;" id="divDetail">

                <div style="overflow: hidden; width: 1397px;"><table width="100%" cellspacing="0" cellpadding="0" border="0" id="tblMain_Head" class="table" style="margin-bottom: 0px; padding-bottom: 0px; border-bottom-width: 0px; width: 1397px;"><thead class="fixedGridHeader"><tr><td valign="bottom" align="center" style="white-space: nowrap; width: 30px;" class="tableColumnTitleStart"><div style="white-space: nowrap; width: 25px;" id="divExpandAll"><img width="10px" onclick="javascript:CalendarElement_expandAllResources();" alt="" style="border-width: 0px; cursor: pointer;" title="Click to Expand All" src="../../Content/images/icon/expand.gif"><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"><img width="10px" onclick="javascript:CalendarElement_collapseAllResources();" alt="" style="border-width: 0px; cursor: pointer;" title="Click to Collapse All" src="../../Content/images/icon/contract.gif"></div></td><td valign="bottom" align="left" style="white-space: nowrap; width: 169px;" class="tableColumnTitle">
                                Resource
                                </td><td valign="bottom" align="center" style="white-space: nowrap; width: 154px;" class="tableColumnTitle">
                                    Mon 13 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 154px;" class="tableColumnTitle">
                                    Tue 14 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 154px;" class="tableColumnTitle">
                                    Wed 15 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 154px;" class="tableColumnTitle">
                                    Thu 16 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 154px;" class="tableColumnTitle">
                                    Fri 17 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 154px;" class="tableColumnTitle">
                                    Sat 18 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 154px; padding-right: 22px;" class="tableColumnTitle">
                                    Sun 19 Dec
                                    </td></tr></thead></table></div><div style="border-bottom: 1px solid rgb(204, 204, 204); padding-bottom: 0px; margin-bottom: 0px; overflow: auto; width: 1397px; height: 208px;">

                    <table width="100%" cellspacing="0" cellpadding="0" border="0" class="table" id="tblMain" style="margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; width: 1380px;" aecisinitialised="true" aecminbodyheight="100" aeccontainersize="232:1417"><thead class="fixedGridHeader" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><tr style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><td valign="bottom" align="center" style="white-space: nowrap; width: 30px; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitleStart"><div style="white-space: nowrap; width: 25px; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" id="divExpandAll"><img width="10px" onclick="javascript:CalendarElement_expandAllResources();" alt="" style="border-width: 0px; cursor: pointer; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; visibility: hidden;" title="Click to Expand All" src="../../Content/images/icon/expand.gif"></div></td><td valign="bottom" align="left" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                Resource
                                </td><td valign="bottom" align="center" style="white-space: nowrap; width: 12%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                    Mon 13 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 12%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                    Tue 14 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 12%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                    Wed 15 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 12%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                    Thu 16 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 12%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                    Fri 17 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 12%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                    Sat 18 Dec
                                    </td><td valign="bottom" align="center" style="white-space: nowrap; width: 12%; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                    Sun 19 Dec
                                    </td></tr></thead><tbody><tr><td valign="middle" align="center" style="width: 25px;" class="calendarTableRowStart"><a href="javascript:CalendarElement_toggleResource('RES1');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/icon/contract.gif"></a></td><td valign="middle" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="middle" align="left" style=""><a title="RES1

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES1&amp;FromDate=40525&amp;ToDate=40531', 500, 500, null, null, false);" href="#">
                                                        Alan Barnacle
                                                        </a></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_removeResource('RES1');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES1                |40525.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES1                |40526.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES1                |40527.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES1                |40528.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES1                |40529.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES1                |40530.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES1                |40531.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td></tr><tr><td valign="top" align="center" style="width: 25px;" class="calendarTableRowStart"><a onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40525&amp;ToDate=40531', 700, 350, CalendarElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" title="Click to search for Role-based Assignments that this Resource can fulfil" src="../../Content/images/icon/search.gif"></a></td><td valign="top" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td>
                                                    Allocated: 40 hours
                                                    </td></tr><tr><td>
                                                    Availability: 0 hours
                                                    </td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '30', 'Document Requirements', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/13/2010&lt;br /&gt;Finish: 12/14/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(30);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Document Requirements
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(30,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '30', 'Document Requirements', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/13/2010&lt;br /&gt;Finish: 12/14/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(30);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Document Requirements
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(30,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '35', 'Write Activity Maintenance Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/15/2010&lt;br /&gt;Finish: 12/16/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(35);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Write Activity Maintenance Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(35,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '35', 'Write Activity Maintenance Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/15/2010&lt;br /&gt;Finish: 12/16/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(35);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Write Activity Maintenance Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(35,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '36', 'Test Activity Maintenance Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/17/2010&lt;br /&gt;Finish: 12/23/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(36);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Test Activity Maintenance Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(36,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '36', 'Test Activity Maintenance Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/17/2010&lt;br /&gt;Finish: 12/23/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(36);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        0 hours
                                                                                        <br>
                                                                                    Test Activity Maintenance Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(36,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '36', 'Test Activity Maintenance Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/17/2010&lt;br /&gt;Finish: 12/23/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(36);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        0 hours
                                                                                        <br>
                                                                                    Test Activity Maintenance Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(36,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="calendarTableRowStart"><a href="javascript:CalendarElement_toggleResource('RES4');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/common/contract.gif"></a></td><td valign="middle" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="middle" align="left" style=""><a title="RES4

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES4&amp;FromDate=40525&amp;ToDate=40531', 500, 500, null, null, false);" href="#">
                                                        Bernard Timms
                                                        </a></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_removeResource('RES4');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES4                |40525.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES4                |40526.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES4                |40527.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES4                |40528.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES4                |40529.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES4                |40530.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES4                |40531.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td></tr><tr><td valign="top" align="center" style="width: 25px;" class="calendarTableRowStart"><a onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40525&amp;ToDate=40531', 700, 350, CalendarElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" title="Click to search for Role-based Assignments that this Resource can fulfil" src="../../Content/images/icon/search.gif"></a></td><td valign="top" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td>
                                                    Allocated: 0 hours
                                                    </td></tr><tr><td>
                                                    Availability: 40 hours
                                                    </td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="calendarTableRowStart"><a href="javascript:CalendarElement_toggleResource('RES2');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/common/contract.gif"></a></td><td valign="middle" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="middle" align="left" style=""><a title="RES2

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES2&amp;FromDate=40525&amp;ToDate=40531', 500, 500, null, null, false);" href="#">
                                                        Janet J Bailey
                                                        </a></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_removeResource('RES2');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES2                |40525.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES2                |40526.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES2                |40527.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES2                |40528.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 8 hours" style="white-space: nowrap; width: 100%;">
                                                    8
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES2                |40529.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES2                |40530.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES2                |40531.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td></tr><tr><td valign="top" align="center" style="width: 25px;" class="calendarTableRowStart"><a onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40525&amp;ToDate=40531', 700, 350, CalendarElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" title="Click to search for Role-based Assignments that this Resource can fulfil" src="../../Content/images/icon/search.gif"></a></td><td valign="top" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td>
                                                    Allocated: 24 hours
                                                    </td></tr><tr><td>
                                                    Availability: 16 hours
                                                    </td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '31', 'Write Login Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/15/2010&lt;br /&gt;Finish: 12/20/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(31);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Write Login Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(31,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '31', 'Write Login Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/15/2010&lt;br /&gt;Finish: 12/20/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(31);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Write Login Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(31,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '31', 'Write Login Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/15/2010&lt;br /&gt;Finish: 12/20/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(31);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        8 hours
                                                                                        <br>
                                                                                    Write Login Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(31,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '31', 'Write Login Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/15/2010&lt;br /&gt;Finish: 12/20/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(31);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        0 hours
                                                                                        <br>
                                                                                    Write Login Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(31,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="top" style="background-color: LightGreen; white-space: normal;" class="resCalendarAssignment"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td style=""><a onmouseout="CalendarElement_hideAssignmentToolTip(event);" onmouseover="CalendarElement_showAssignmentToolTip(event, '31', 'Write Login Screen', 'Project: PROJECT1&lt;br /&gt;Client: MY_COMP&lt;br /&gt;&lt;br /&gt;Start: 12/15/2010&lt;br /&gt;Finish: 12/20/2010&lt;br /&gt;');" href="javascript:CalendarElement_editAssignment(31);"><span style="font-weight: bold;">
                                                                                        PROJECT1
                                                                                        </span><br>
                                                                                        0 hours
                                                                                        <br>
                                                                                    Write Login Screen
                                                                                    </a></td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="top" align="right"><a href="javascript:CalendarElement_deleteAssignment(31,-1);"><img alt="" title="Click to Delete" src="../../Content/images/icon/deletesmall.gif"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="calendarTableRowStart"><a href="javascript:CalendarElement_toggleResource('RES3');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/common/contract.gif"></a></td><td valign="middle" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td valign="middle" align="left" style=""><a title="RES3

Click for details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES3&amp;FromDate=40525&amp;ToDate=40531', 500, 500, null, null, false);" href="#">
                                                        John Smith
                                                        </a></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_removeResource('RES3');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES3                |40525.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES3                |40526.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES3                |40527.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES3                |40528.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES3                |40529.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES3                |40530.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td><td valign="middle" align="right" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-right: 3px;"><tbody><tr><td valign="middle" align="right" title="Allocated: 0 hours" style="white-space: nowrap; width: 100%;">
                                                    0
                                                    </td><td><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"></td><td valign="middle" align="right" style="white-space: nowrap;"><a href="javascript:CalendarElement_addAssignment('RES3                |40531.00');"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add Assignment"></a></td></tr></tbody></table></td></tr><tr><td valign="top" align="center" style="width: 25px;" class="calendarTableRowStart"><a onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40525&amp;ToDate=40531', 700, 350, CalendarElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" title="Click to search for Role-based Assignments that this Resource can fulfil" src="../../Content/images/icon/search.gif"></a></td><td valign="top" align="left" class="calendarTableRow"><table width="100%" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td>
                                                    Allocated: 0 hours
                                                    </td></tr><tr><td>
                                                    Availability: 40 hours
                                                    </td></tr></tbody></table></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td><td valign="top" align="left" style="white-space: nowrap;" class="calendarTableRow"></td></tr></tbody></table>

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
