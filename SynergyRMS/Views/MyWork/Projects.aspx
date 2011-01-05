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
                                                                      My Projects  </td>
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
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','MyWork')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
            <a href="/MyWork">My Work</a>
        </td>
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace0" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" class="dashboardTabSelected">
            My Projects
        </td>
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace4" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','ActionViewPos2')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
            <a href="/MyWork/Documents">Documents</a>
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
						    <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollLeft" src="../../../images/arrowleft_grey.gif">
					    </td>
					    <td width="100%">
    						
					    </td>
					    <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollRight" src="../../../images/arrowright_grey.gif">
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
				<td valign="top" align="left" rowspan="1" colspan="1" style="padding: 2px; width: 100%;"><div style="padding: 0px; overflow: auto; border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 305px; width: 1417px;" id="ctl00_dsh_dashboard_divElementMyProjects">






        <style type="text/css">          
            
        </style>
    <input type="hidden" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_hdnScrollTop" name="ctl00$dshElement_MyProjects$aecElementControlMyProjects$hdnScrollTop"><input type="hidden" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_hdnScrollLeft" name="ctl00$dshElement_MyProjects$aecElementControlMyProjects$hdnScrollLeft">            

            <script type="text/javascript" language="javascript">
                
                //Scrolling Table Script

            </script>
    
        <div style="visibility: visible;" id="divContent_MyProjects">

            <div style="padding-left: 10px; padding-right: 10px;" id="divHeader_MyProjects">

            
                <table width="100%" cellspacing="0" cellpadding="2" border="0">

                    <thead>

                        <tr>
                            <td style="height: 5px;">
                                

<table width="100px" cellspacing="0" cellpadding="0" border="0" style="">
    <tbody><tr>
        <td align="left" style="white-space: nowrap;">
            
            <table style="width: 100%;">
                <tbody><tr>
                    <td align="left" style="white-space: nowrap; border: medium none; width: 100%;">
                        
                        
                            <table>
                                <tbody><tr>
                                    <td align="left" style="white-space: nowrap;">
                                        Project List&nbsp; 
                                         <select name="ctl00$phFormContent$cboProjectLevel" id="project"
                                                            class="comboBox">
                                                            <option value="Select">Select</option>
                                                            <option value="Project1" selected="selected">Project 1</option>
                                                            <option value="Project2">Project 2</option>
                                                            <option value="Project3">Project 3</option>
                                                        </select>
                                    </td>
                                    
                                    
                                            <td align="left">
                                                
    <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
        <tbody><tr>
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager_mnuListActions_tblMenu0" style="white-space: nowrap; cursor: pointer; color: rgb(102, 102, 102);">                                
                    
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr onmouseout="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown.gif';" onmouseover="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown_mouseover.gif';" id="trMenuIcons">
                                        <td valign="middle" align="center" onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');" style="padding-left: 10px; white-space: nowrap; padding-right: 9px; background-image: url(&quot;../../Content/images/icon/vistabuttongrey.gif&quot;); background-repeat: no-repeat; background-position: left center; height: 22px;">
                                            Actions
                                        </td>
                                        
                                            <td onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');">
                                                <img style="vertical-align: middle;" alt="" src="../../Content/images/icon/vistabuttongrey_dropdown.gif">                
                                            </td>
                                        
                                    </tr>
                                </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 1001;" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager_mnuListActions_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Create Empty List...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager');" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager');" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Save As...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Delete...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="../../Content/images/common/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Add Projects...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="../../Content/images/common/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
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
            
           <input type="hidden" value="False" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager_hdnPostBack" name="ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$hdnPostBack">
           <input type="hidden" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager_hdnAction" name="ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$hdnAction">
           <input type="hidden" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_ucProjectListManager_hdnParameter" name="ctl00$dshElement_MyProjects$aecElementControlMyProjects$ucProjectListManager$hdnParameter">
            
        </td>
    </tr>
</tbody></table>
                            </td>
                             <td valign="middle" align="right">
                                

<table cellspacing="0" cellpadding="0" border="0" style="padding-bottom: 5px;">
    <tbody><tr>
        <td valign="middle" align="left">
            Displaying Records 1 of 1
                |
                
                [Page 1 of 1]
        </td>
    </tr>
</tbody></table>
                            </td>
                        </tr>                      

                    </thead>

                </table>

            </div>

            <div style="padding-left: 10px; padding-right: 10px;" id="divDetail_MyProjects">

                <div>

                    <table width="100%" cellspacing="0" cellpadding="0" border="0" class="table" id="tblMain_MyProjects">

                        <thead class="fixedGridHeader" id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_ctlThead"><tr>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Code</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Description</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Manager</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Tasks</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Risks</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Mitigation Plan Items</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Issues</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">Issue Actions</td>
					<td valign="middle" align="left" style="white-space: nowrap;" class="tableColumnTitle">&nbsp;</td>
				</tr>
				</thead><tbody id="ctl00_dshElement_MyProjects_aecElementControlMyProjects_ctlTbody"><tr>
					<td valign="bottom" align="left" style="white-space: nowrap;" class="tableRow">PROJECT1</td>
					<td valign="top" align="left" style="white-space: nowrap;" classDemonstration Project</td>
					<td valign="top" align="left" style="white-space: nowrap;" class="tableRow">My 
                        Manager</td>
					<td valign="top" align="center" style="white-space: nowrap;" class="tableRow"><a title="Click to View Incomplete Tasks" href="javascript:MyProjects_GoToDashboard('PROJECT1','Tasks');">9 Tasks');">9 </a><a title="Click to View Incomplete Overdue Tasks" href="javascript:MyProjects_GoToProjectReview('PROJECT1');">(6)</a></td>
					<td valign="top" align="center" style="white-space: nowrap;" class="tableRow"><a title="Click to View Open Risks" href="javascript:MyProjects_GoToDashboard_RisksIssues('PROJECT1','Risks','Open','Risks');">0 </a></td>
					<td valign="top" align="center" style="white-space: nowrap;" class="tableRow"><a title="Click to View Open Mitigation Plan Items" href="javascript:MyProjects_GoToDashboard_RisksIssues('PROJECT1','Risks','Open','RiskActions');">0 </a></td>
					<td valign="top" align="center" style="white-space: nowrap;" class="tableRow"><a title="Click to View Open Issues" href="javascript:MyProjects_GoToDashboard_RisksIssues('PROJECT1','Issues','Open','Risks');">0 </a></td>
					<td valign="top" align="center" style="white-space: nowrap;" class="tableRow"><a title="Click to View Open Issue Actions" href="javascript:MyProjects_GoToDashboard_RisksIssues('PROJECT1','Issues','Open','RiskActions');">0 </a></td>
					<td valign="top" align="center" style="white-space: nowrap;" class="tableRow"><a title="View Project" href="javascript:MyProjects_SelectProject('PROJECT1');">View</a></td>
				</tr>
				</tbody>                                                    

                    </table>

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
