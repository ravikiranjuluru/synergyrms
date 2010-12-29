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
                                                                        Utilisation</td>
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
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','Calendar')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
           <a href="Calendar"> Calendar</a>
        </td>
        
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace2" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" class="dashboardTabSelected">
            Utilisation
        </td>
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace3" src="../../Content/images/common/space.gif">
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
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_hdrElement_Utilisation_mnuMenus_tblMenu0" style="padding-left: 4px; white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">                                
                    
                            <table cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
                                <tbody><tr id="trMenuIcons">
                                    
                                    <!-- Padding Removed as making Title bar too big on dashboards -->
                                    <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Utilisation'));" style="padding: 0px; border: 1px solid rgb(236, 236, 237);">
                                               
                                    </td>
                                    
                                </tr>
                            </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 5005;" id="ctl00_hdrElement_Utilisation_mnuMenus_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#FFFFFF';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Utilisation'))" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="dashboardMaster.showPrintPreview(dashboardMaster.getElementIndex('Utilisation'))" style="white-space: nowrap; cursor: pointer; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);" class="popupMenuItem">
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
                  
            
<div style="padding: 0px; overflow: hidden; border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 275px; width: 1417px;" id="ctl00_dsh_dashboard_divElementUtilisation">









                <script type="text/javascript">      
                   
                    function window_onResize() {   
                        
                        //turn off scrolling on dshb element master div so that table handles scrolling !
                        document.getElementById('divContent').parentNode.style.overflow = 'hidden';
                        
                        //set the height of scrolling table div so that when resize element scrolling tbl resizes properly
                        document.getElementById('divDetail').style.height = Math.max(120, document.getElementById('divContent').parentNode.offsetHeight - document.getElementById('divDetail').offsetTop - 20) + 'px';
                    }

                    function displayLoading() {                    
                        
                        document.getElementById('divContent').style.visibility = 'hidden'; 
                    }
                            
                    function hideLoading() {        
                        
                        document.getElementById('divContent').style.visibility = 'visible';      
                    }                                                   

                    window.onload = function() {

                        if (window.ie == true) {
                            document.getElementById('divDetail').onresize = resizeContainers;
                            //getParentNode(document.getElementById('divContent')).onresize = resizeWindows;
                        } else {
                            window.setInterval(resizeContainers, 100, null);
                            //window.setInterval(resizeWindows, 100, null);
                        }
                        
                        var oParent = getParentNode(document.getElementById('divContent'));                       
                        oParent.onresize = resizeWindows; 
                        
                        //turn off scrolling on dshb element master div so that table handles scrolling !
                        getParentNode(document.getElementById('divContent')).style.overflow = 'hidden';
                                    
                        //Resize Windows
                        resizeWindows();
                        
                        //Initialise Split Windows
                        xbSplitter.initialise();            
                        
                        //Initalise Scrolling Tables
                        xbScrollableTable.initialise('tblResourceList', 50, 'scroll', 'hidden');
                        xbScrollableTable.initialise('tblResourceData', 50, 'scroll');
                        //scrollableTable.initialise('tblAssignmentGrid', true, 50, false);
                        
                        //Synchronise Task table scrolling
                        xbScrollableTable.syncScroll('tblResourceList', 'tblResourceData', 'both', false, true);

                        //Initialise scroll positions
                        UtilisationElement_initialiseScrollPositions();
                    }    
                
                    window.onresize = function() {
                    
                        //resizeWindows();
                    }
                            
                    function resizeWindows() {                    
                        
                        //set the height of scrolling table div so that when resize element scrolling tbl resizes properly
                        document.getElementById('divDetail').style.height = Math.max(120, getParentNode(document.getElementById('divContent')).offsetHeight - document.getElementById('divHeader').offsetHeight - 10) + 'px';
                        document.getElementById('divDetail').style.width = Math.max(100, getParentNode(document.getElementById('divContent')).offsetWidth - 20) + 'px'; 
                    }    
                    
                    function resizeContainers() {
                                
                        document.getElementById('divResourceContainer').style.height = Math.min(document.getElementById('divDetail').offsetHeight -3, window.xbScrollableTable.offsetHeight('tblResourceList') + window.scrollbarSize()) + 'px';                              
                       
                    }

                    function saveScrollSplitPos() {
                     document.getElementById("hdnVerticalScroll").value = document.getElementById("tblResourceData").scrollTop;
                     document.getElementById("hdnHorizontalScroll").value = document.getElementById("tblResourceData").scrollLeft;
                     document.getElementById("hdnSplitPosition").value = parseInt((document.getElementById('divResourceList').offsetWidth));
                    }

                //--&gt;
                </script>

        <input type="hidden" value="0" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_hdnVerticalScroll" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$hdnVerticalScroll"><input type="hidden" value="0" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_hdnHorizontalScroll" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$hdnHorizontalScroll"><input type="hidden" value="261" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_hdnSplitPosition" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$hdnSplitPosition">

        <style type="text/css">

            /* Override standard styles to remove top and bottom padding and set height */
            .tableColumnTitle, .tableColumnTitleStart {
	            color: #666666;
	            background-color: #ECECED;
	            border-right: solid 1px #ECECED;
	            border-bottom: solid 1px #999999;
	            padding: 0px 5px 0px 5px;
                height: 21px;
                }

            .tableRow, .tableRowStart {
	            color: #666666;
	            background-color: #FFFFFF;
	            border-bottom: solid 1px #DEEFFF;
	            border-right: solid 1px #DEEFFF;
	            padding: 0px 5px 0px 5px;
                height: 21px;
            }

        </style>

    
                <div onmouseout="UtilisationElement_hidePopup('divColourKey', 100);" onmouseover="UtilisationElement_displayColourPopup(event, 'tdColourKey', 'divColourKey');" style="visibility: hidden; padding: 0px; margin: 1px; overflow: visible; position: absolute; left: 0px; top: 0px; background-color: rgb(236, 236, 237); border: 1px solid rgb(153, 153, 153); z-index: 99;" id="divColourKey">
                     
                    <table cellspacing="0" cellpadding="2" border="0">

                    

                            <tbody><tr>
                                <td align="left" style="vertical-align: middle;" class="normal">
                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px; text-align: left;">
                                        <tbody><tr>
                                            <td style="width: 100%; height: 100%; background-color: rgb(255, 255, 255);">
                                            </td>
                                        </tr>
                                    </tbody></table>
                                </td>
                                <td align="left" style="white-space: nowrap;">
                                    0 to 20% Utilisation
                                </td>
                            </tr>

                        

                            <tr>
                                <td align="left" style="vertical-align: middle;" class="normal">
                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px; text-align: left;">
                                        <tbody><tr>
                                            <td style="width: 100%; height: 100%; background-color: rgb(227, 251, 227);">
                                            </td>
                                        </tr>
                                    </tbody></table>
                                </td>
                                <td align="left" style="white-space: nowrap;">
                                    21 to 40% Utilisation
                                </td>
                            </tr>

                        

                            <tr>
                                <td align="left" style="vertical-align: middle;" class="normal">
                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px; text-align: left;">
                                        <tbody><tr>
                                            <td style="width: 100%; height: 100%; background-color: rgb(199, 247, 199);">
                                            </td>
                                        </tr>
                                    </tbody></table>
                                </td>
                                <td align="left" style="white-space: nowrap;">
                                    41 to 60% Utilisation
                                </td>
                            </tr>

                        

                            <tr>
                                <td align="left" style="vertical-align: middle;" class="normal">
                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px; text-align: left;">
                                        <tbody><tr>
                                            <td style="width: 100%; height: 100%; background-color: rgb(171, 243, 171);">
                                            </td>
                                        </tr>
                                    </tbody></table>
                                </td>
                                <td align="left" style="white-space: nowrap;">
                                    61 to 80% Utilisation
                                </td>
                            </tr>

                        

                            <tr>
                                <td align="left" style="vertical-align: middle;" class="normal">
                                    <table width="9px" cellspacing="0" cellpadding="0" border="0" style="height: 9px; text-align: left;">
                                        <tbody><tr>
                                            <td style="width: 100%; height: 100%; background-color: rgb(144, 238, 144);">
                                            </td>
                                        </tr>
                                    </tbody></table>
                                </td>
                                <td align="left" style="white-space: nowrap;">
                                    81 to 100% Utilisation
                                </td>
                            </tr>

                        

                        <tr>
                            <td align="left" style="vertical-align: middle;" class="normal">
                                <table width="9px" cellspacing="0px" cellpadding="0px" border="0px" style="height: 9px;">
                                    <tbody><tr>
                                        <td style="width: 100%; height: 100%; background-color: rgb(255, 0, 0);">
                                        </td>
                                    </tr>
                                </tbody></table>
                            </td>
                            <td align="left" style="white-space: nowrap;">
                                Over Allocation
                            </td>
                        </tr>

                    </tbody></table>                            

                </div>
                         
        

        <div style="visibility: visible; overflow: hidden;" id="divContent">
        
            <div style="padding-left: 10px; padding-right: 10px;" id="divHeader">

                <table width="100%" cellspacing="0" cellpadding="0" border="0">

                    <thead>

                        <tr>
                        
                                <td align="left">
                                    

<table width="150px" cellspacing="0" cellpadding="0" border="0" style="">
    <tbody><tr>
        <td align="left" style="white-space: nowrap;">
            
            <table style="width: 100%;">
                <tbody><tr>
                    <td align="left" style="white-space: nowrap; border: medium none; width: 100%;">
                        
                        
                            <table>
                                <tbody><tr>
                                    <td align="left" style="white-space: nowrap;">
                                        Resource List:&nbsp; 
                                        <select onchange="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager','CBOLIST_CLICK')" class="comboBox" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_cboList" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$cboList">
					<option value="All" selected="selected">All</option>
				</select>
                                    </td>
                                    
                                    
                                            <td align="left">
                                                
    <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
        <tbody><tr>
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_mnuListActions_tblMenu0" style="white-space: nowrap; cursor: pointer; color: rgb(102, 102, 102);">                                
                    
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr onmouseout="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown.gif';" onmouseover="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown_mouseover.gif';" id="trMenuIcons">
                                        <td valign="middle" align="center" onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');" style="padding-left: 10px; white-space: nowrap; padding-right: 9px; background-image: url(&quot;../../Content/images/icon/vistabuttongrey.gif&quot;); background-repeat: no-repeat; background-position: left center; height: 22px;">
                                            Actions
                                        </td>
                                        
                                            <td onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');">
                                                <img style="vertical-align: middle;" alt="" src="../../Content/images/icon/vistabuttongrey_dropdown.gif">                
                                            </td>
                                        
                                    </tr>
                                </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 1001;" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_mnuListActions_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Create Empty List...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager');" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager');" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Save As...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Delete...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="../../Content/images/common/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Add Resources...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="../../Content/images/common/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
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
            
           <input type="hidden" value="False" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_hdnPostBack" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$hdnPostBack">
           <input type="hidden" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_hdnAction" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$hdnAction">
           <input type="hidden" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucResourceListManager_hdnParameter" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucResourceListManager$hdnParameter">
            
        </td>
    </tr>
</tbody></table>
                                </td>
                        
                            <td align="left" style="white-space: nowrap; width: 100%;">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr>
                                        <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;" class="small">
                                        Show:
                                        </td>

                                        <td valign="middle" align="left" style="white-space: nowrap; padding-left: 3px;" class="small">
                                        <select onchange="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation','')" class="comboBox" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_lstDisplayMode" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$lstDisplayMode">
					<option value="Utilisation" selected="selected">Utilisation</option>
					<option value="Allocation">Allocation</option>
					<option value="Availability">Availability</option>
					<option value="Capability">Capability</option>
				</select>
                                        </td>

                                    
                                                <td align="left" onmouseout="javascript:UtilisationElement_hidePopup('divColourKey', 100);" onmouseover="javascript:UtilisationElement_displayColourPopup(event, 'tdColourKey', 'divColourKey');">
                                                    &nbsp;
                                                    <img alt="" src="../../Content/images/icon/colour_key.gif">
                                                </td>
                                        
                                    </tr>
                                </tbody></table>
                            </td>

                       
                                <td align="right">

                                    <table cellspacing="0" cellpadding="0" border="0">

                                        <tbody><tr>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                                <input type="image" title="Go to Current Week" alt="Go to Current Week" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_imgGoToCurrentPeriod" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$imgGoToCurrentPeriod" src="../../Content/images/icon/currentperiod.gif">                                            
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                                <input type="image" title="Go Back a Week" alt="Go Back a Week" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_imgBack" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$imgBack" src="../../Content/images/icon/chevron_left.gif">                                            
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">
                                                
<a id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucFromDate_lnkPickDate" href="javascript:com_dateinput_showHyperlinkDatePick('/common/com_calendar.aspx?CalendarMode=',com_dateinput_setHyperlinkDateCallback_ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucFromDate,'40525');">12/13/2010</a>
        <input type="hidden" class="textBox" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_ucFromDate_hdnDate" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$ucFromDate$hdnDate">
    
    
                                            </td>

                                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">
                                                <input type="image" title="Go Forward a Week" alt="Go Forward a Week" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_imgForward" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$imgForward" src="../../Content/images/icon/chevron_right.gif">
                                            </td>
                                        </tr>

                                    </tbody></table>                                                                                                                                                  
                                                                    
                                </td>

                            
                                <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                Period: 
                                </td>

                                <td valign="middle" align="left" style="white-space: nowrap; padding-left: 3px;">
                                    <select onchange="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation','')" class="comboBox" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_lstPeriodNumber" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$lstPeriodNumber">
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
                                    <select onchange="__doPostBack('ctl00$dshElement_Utilisation$aecElementControlUtilisation','')" class="comboBox" id="ctl00_dshElement_Utilisation_aecElementControlUtilisation_lstCalendarMode" name="ctl00$dshElement_Utilisation$aecElementControlUtilisation$lstCalendarMode">
					<option value="Weekly" selected="selected">Weeks</option>
					<option value="Monthly">Months</option>
				</select>
                                </td>
                        

                        </tr>

                    </thead>

                </table>

            </div>

        

                <div style="text-align: left; overflow: hidden; padding-right: 10px; padding-left: 10px; height: 232px; width: 1399px;" id="divDetail">

                    <div style="margin: 0px; width: auto; height: 165px; border-left: 1px solid rgb(153, 153, 153); border-right: 1px solid rgb(153, 153, 153); border-bottom: 1px solid rgb(153, 153, 153);" aecorientation="0" aectype="xbSplitter" id="divResourceContainer">            

                        <div style="height: 165px; overflow: hidden; position: absolute; width: 261px;" aecminsize="250px" aecsize="261" id="divResourceList" aecwindow="1">

                            <div style="overflow: hidden; width: 261px;"><table width="100%" cellspacing="0" cellpadding="0" border="0" id="tblResourceList_Head" class="table" style="margin-bottom: 0px; padding-bottom: 0px; border-bottom-width: 0px; width: 261px;"><thead class="fixedGridHeader" id="thGrid"><tr><td valign="middle" align="center" style="white-space: nowrap; width: 26px;" class="tableColumnTitle"><div style="white-space: nowrap; width: 25px;" id="divExpandAll"><img width="10px" onclick="javascript:UtilisationElement_expandAllResources();" alt="" style="border-width: 0px; cursor: pointer;" title="Click to Expand All" src="../../Content/images/icon/expand.gif"><img width="5px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif"><img width="10px" onclick="javascript:UtilisationElement_collapseAllResources();" alt="" style="border-width: 0px; cursor: pointer;" title="Click to Collapse All" src="../../Content/images/common/contract.gif"></div></td><td valign="middle" align="left" style="white-space: nowrap; width: 180px;" class="tableColumnTitle">
                                            Resource / Project
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 20px; padding-right: 5px;" class="tableColumnTitle"></td></tr></thead></table></div><div style="border-bottom: 1px solid rgb(204, 204, 204); padding-bottom: 0px; margin-bottom: 0px; overflow-x: scroll; overflow-y: hidden; width: 261px; height: 143px;">

        

                                <table width="100%" cellspacing="0" cellpadding="0" border="0" onscroll="javascript:saveScrollSplitPos();" class="table" id="tblResourceList" style="margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; width: 261px;" aecisinitialised="true" aecminbodyheight="50" aeccontainersize="165:261"><thead class="fixedGridHeader" id="thGrid" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><tr style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><td valign="middle" align="center" style="white-space: nowrap; width: 25px; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><div style="white-space: nowrap; width: 25px; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" id="divExpandAll"><img width="10px" onclick="javascript:UtilisationElement_expandAllResources();" alt="" style="border-width: 0px; cursor: pointer; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; visibility: hidden;" title="Click to Expand All" src="../../Content/images/icon/expand.gif"></div></td><td valign="middle" align="left" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            Resource / Project
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 20px; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"></td></tr></thead><tbody><tr><td valign="middle" align="center" style="width: 25px;" class="tableRowStart"><a href="javascript:UtilisationElement_toggleResource('RES1');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/icon/contract.gif"></a></td><td valign="middle" align="left" style="white-space: nowrap;" class="tableRow"><a title="RES1

Click for Details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES1&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);" href="#">
                                                    Alan Barnacle
                                                    </a></td><td valign="middle" align="center" class="tableRow"><a href="javascript:UtilisationElement_removeResource('RES1');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="tableRowStart"></td><td valign="middle" align="left" title="PROJECT1" style="white-space: nowrap;" class="tableRow"><img width="10px" alt="" style="border-width: 2px;" src="../../Content/images/common/space.gif">

                                                    Demonstration Project
                                                    </td><td valign="middle" align="center" class="tableRow"></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="tableRowStart"><a href="javascript:UtilisationElement_toggleResource('RES4');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/icon/contract.gif"></a></td><td valign="middle" align="left" style="white-space: nowrap;" class="tableRow"><a title="RES4

Click for Details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES4&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);" href="#">
                                                    Bernard Timms
                                                    </a></td><td valign="middle" align="center" class="tableRow"><a href="javascript:UtilisationElement_removeResource('RES4');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="tableRowStart"><a href="javascript:UtilisationElement_toggleResource('RES2');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/icon/contract.gif"></a></td><td valign="middle" align="left" style="white-space: nowrap;" class="tableRow"><a title="RES2

Click for Details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES2&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);" href="#">
                                                    Janet J Bailey
                                                    </a></td><td valign="middle" align="center" class="tableRow"><a href="javascript:UtilisationElement_removeResource('RES2');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="tableRowStart"></td><td valign="middle" align="left" title="PROJECT1" style="white-space: nowrap;" class="tableRow"><img width="10px" alt="" style="border-width: 2px;" src="../../Content/images/common/space.gif">

                                                    Demonstration Project
                                                    </td><td valign="middle" align="center" class="tableRow"></td></tr><tr><td valign="middle" align="center" style="width: 25px;" class="tableRowStart"><a href="javascript:UtilisationElement_toggleResource('RES3');"><img width="10px" alt="" style="border-width: 0px;" title="Click to Collapse" src="../../Content/images/icon/contract.gif"></a></td><td valign="middle" align="left" style="white-space: nowrap;" class="tableRow"><a title="RES3

Click for Details" onclick="AECWinPopup.open('/planning/pln_resourceinfo.aspx?popup=1&amp;Code=RES3&amp;FromDate=40525&amp;ToDate=40580', 500, 500, null, null, false);" href="#">
                                                    John Smith
                                                    </a></td><td valign="middle" align="center" class="tableRow"><a href="javascript:UtilisationElement_removeResource('RES3');"><img alt="" title="Click to Remove from List" src="../../Content/images/icon/removeitem.gif"></a></td></tr></tbody></table>

        

                            </div>

                        </div>  <!-- divResourceList -->
        

                        <div style="position: absolute; background-color: rgb(153, 153, 153); font-size: 1px; height: 165px; width: 5px; cursor: col-resize; z-index: 1; left: 275px;"></div><div style="overflow: hidden; position: absolute; width: 1131px; left: 280px; height: 165px;" aecmaxsize="" aecminsize="300px" aecsize="" id="divTaskGantt" aecwindow="2">

	                        <div style="overflow: hidden; width: 1131px;"><table width="100%" cellspacing="0" cellpadding="0" border="0" id="tblResourceData_Head" class="table" style="margin-bottom: 0px; padding-bottom: 0px; border-bottom-width: 0px; width: 1131px;"><thead class="fixedGridHeader"><tr><td valign="middle" align="center" style="white-space: nowrap; width: 137px;" class="tableColumnTitle">
                                            13 Dec
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 124px;" class="tableColumnTitle">
                                            20 Dec
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 124px;" class="tableColumnTitle">
                                            27 Dec
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 124px;" class="tableColumnTitle">
                                            03 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 124px;" class="tableColumnTitle">
                                            10 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 112px;" class="tableColumnTitle">
                                            17 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 112px;" class="tableColumnTitle">
                                            24 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 112px;" class="tableColumnTitle">
                                            31 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; width: 61px; padding-right: 5px;" class="tableColumnTitle">                                    
                                        Total
                                        </td></tr></thead></table></div><div style="border-bottom: 1px solid rgb(204, 204, 204); padding-bottom: 0px; margin-bottom: 0px; overflow-x: scroll; overflow-y: auto; width: 1131px; height: 143px;">
          	                        
	                        
	                        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="table" id="tblResourceData" style="margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; width: 1131px;" aecisinitialised="true" aecminbodyheight="50" aeccontainersize="165:1131"><thead class="fixedGridHeader" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><tr style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            13 Dec
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            20 Dec
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            27 Dec
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            03 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            10 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            17 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            24 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">
                                            31 Jan
                                            </td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle">                                    
                                        Total
                                        </td></tr></thead><tbody><tr><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(144, 238, 144);" class="tableRow">                                    
                                                100 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/13/2010 and 12/19/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40525&amp;ToDate=40531', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/13/2010 and 12/19/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40525.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(171, 243, 171);" class="tableRow">                                    
                                                80 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/20/2010 and 12/26/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40532&amp;ToDate=40538', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/20/2010 and 12/26/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40532.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                10 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/27/2010 and 1/2/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40539&amp;ToDate=40545', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/27/2010 and 1/2/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40539.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(199, 247, 199);" class="tableRow">                                    
                                                60 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/3/2011 and 1/9/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40546&amp;ToDate=40552', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/3/2011 and 1/9/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40546.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(171, 243, 171);" class="tableRow">                                    
                                                80 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/10/2011 and 1/16/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40553&amp;ToDate=40559', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/10/2011 and 1/16/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40553.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/17/2011 and 1/23/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40560&amp;ToDate=40566', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/17/2011 and 1/23/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40560.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/24/2011 and 1/30/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40567&amp;ToDate=40573', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/24/2011 and 1/30/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40567.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/31/2011 and 2/6/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES1&amp;FromDate=40574&amp;ToDate=40580', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/31/2011 and 2/6/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES1                |40574.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);" class="tableRow">
                                            41 %
                                            </td></tr><tr><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click To View Assignments" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/AssignmentList.aspx?ResourceCode=RES1&amp;ProjectCode=PROJECT1&amp;FromDate=40525&amp;ToDate=40531', 600, 350, UtilisationElement_refresh, null, false);" href="#">
                                                                5
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click to Open Assignment" onclick="UtilisationElement_EditAssignment('36');" href="#">
                                                                4
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click to Open Assignment" onclick="UtilisationElement_EditAssignment('38');" href="#">
                                                                0.5
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click To View Assignments" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/AssignmentList.aspx?ResourceCode=RES1&amp;ProjectCode=PROJECT1&amp;FromDate=40546&amp;ToDate=40552', 600, 350, UtilisationElement_refresh, null, false);" href="#">
                                                                3
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click to Open Assignment" onclick="UtilisationElement_EditAssignment('39');" href="#">
                                                                4
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                        0
                                                        </td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                        0
                                                        </td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                        0
                                                        </td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                    16.5
                                                    </td></tr><tr><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/13/2010 and 12/19/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40525&amp;ToDate=40531', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/13/2010 and 12/19/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40525.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/20/2010 and 12/26/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40532&amp;ToDate=40538', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/20/2010 and 12/26/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40532.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/27/2010 and 1/2/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40539&amp;ToDate=40545', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/27/2010 and 1/2/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40539.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/3/2011 and 1/9/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40546&amp;ToDate=40552', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/3/2011 and 1/9/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40546.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/10/2011 and 1/16/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40553&amp;ToDate=40559', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/10/2011 and 1/16/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40553.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/17/2011 and 1/23/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40560&amp;ToDate=40566', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/17/2011 and 1/23/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40560.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/24/2011 and 1/30/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40567&amp;ToDate=40573', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/24/2011 and 1/30/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40567.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/31/2011 and 2/6/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES4&amp;FromDate=40574&amp;ToDate=40580', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/31/2011 and 2/6/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES4                |40574.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);" class="tableRow">
                                            0 %
                                            </td></tr><tr><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(199, 247, 199);" class="tableRow">                                    
                                                60 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/13/2010 and 12/19/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40525&amp;ToDate=40531', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/13/2010 and 12/19/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40525.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(171, 243, 171);" class="tableRow">                                    
                                                80 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/20/2010 and 12/26/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40532&amp;ToDate=40538', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/20/2010 and 12/26/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40532.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(144, 238, 144);" class="tableRow">                                    
                                                90 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/27/2010 and 1/2/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40539&amp;ToDate=40545', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/27/2010 and 1/2/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40539.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(227, 251, 227);" class="tableRow">                                    
                                                40 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/3/2011 and 1/9/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40546&amp;ToDate=40552', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/3/2011 and 1/9/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40546.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/10/2011 and 1/16/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40553&amp;ToDate=40559', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/10/2011 and 1/16/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40553.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/17/2011 and 1/23/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40560&amp;ToDate=40566', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/17/2011 and 1/23/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40560.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/24/2011 and 1/30/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40567&amp;ToDate=40573', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/24/2011 and 1/30/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40567.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/31/2011 and 2/6/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES2&amp;FromDate=40574&amp;ToDate=40580', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/31/2011 and 2/6/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES2                |40574.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);" class="tableRow">
                                            34 %
                                            </td></tr><tr><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click to Open Assignment" onclick="UtilisationElement_EditAssignment('31');" href="#">
                                                                3
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click To View Assignments" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/AssignmentList.aspx?ResourceCode=RES2&amp;ProjectCode=PROJECT1&amp;FromDate=40532&amp;ToDate=40538', 600, 350, UtilisationElement_refresh, null, false);" href="#">
                                                                4
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click To View Assignments" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/AssignmentList.aspx?ResourceCode=RES2&amp;ProjectCode=PROJECT1&amp;FromDate=40539&amp;ToDate=40545', 600, 350, UtilisationElement_refresh, null, false);" href="#">
                                                                4.5
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow"><a title="Click to Open Assignment" onclick="UtilisationElement_EditAssignment('37');" href="#">
                                                                2
                                                                </a></td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                        0
                                                        </td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                        0
                                                        </td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                        0
                                                        </td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                        0
                                                        </td><td valign="middle" align="right" style="white-space: nowrap;" class="tableRow">
                                                    13.5
                                                    </td></tr><tr><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/13/2010 and 12/19/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40525&amp;ToDate=40531', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/13/2010 and 12/19/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40525.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/20/2010 and 12/26/2010" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40532&amp;ToDate=40538', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/20/2010 and 12/26/2010"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40532.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 12/27/2010 and 1/2/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40539&amp;ToDate=40545', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 12/27/2010 and 1/2/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40539.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/3/2011 and 1/9/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40546&amp;ToDate=40552', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/3/2011 and 1/9/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40546.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/10/2011 and 1/16/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40553&amp;ToDate=40559', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/10/2011 and 1/16/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40553.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/17/2011 and 1/23/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40560&amp;ToDate=40566', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/17/2011 and 1/23/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40560.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/24/2011 and 1/30/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40567&amp;ToDate=40573', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/24/2011 and 1/30/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40567.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class="tableRow">                                    
                                                0 %                                                                 

                                                        <img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Find Role Based Assignments between 1/31/2011 and 2/6/2011" onclick="AECWinPopup.open('/dashboard/custom/SchedulingDashboard/RoleAssignmentList.aspx?ResourceCode=RES3&amp;FromDate=40574&amp;ToDate=40580', 700, 300, UtilisationElement_roleBasedSearchCallback, null, false);" href="#"><img alt="" src="../../Content/images/icon/search.gif" title="Find Role Based Assignments between 1/31/2011 and 2/6/2011"></a><img width="5px" alt="" src="../../Content/images/common/space.gif"><a title="Click to Add an Assignment" onclick="UtilisationElement_addAssignment('RES3                |40574.00');" style="font-size: xx-small;" href="#"><img alt="" src="../../Content/images/icon/addcalendaritem.gif" title="Click to Add an Assignment"></a></td><td valign="middle" align="right" style="white-space: nowrap; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);" class="tableRow">
                                            0 %
                                            </td></tr></tbody></table>

        

                            </div>

                        </div>  <!-- divTaskGantt-->

                    </div>  <!-- divResourceContainer-->
                                        

            </div>  <!-- divDetail -->

        </div>  <!-- divContent -->
            
                   
</div></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
</tbody></table>

        </div>

</asp:Content>
