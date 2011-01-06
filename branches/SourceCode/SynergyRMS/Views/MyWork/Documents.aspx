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
                                                                      My Documents  </td>
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
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','MyWork')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
           <a href="/MyWork">My Work</a>
        </td>
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace0" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$ucTabStrip','MyProjects')" onmouseout="this.className='dashboardTabOff';"
            onmouseover="this.className='dashboardTabOn';" class="dashboardTabOff">
            <a href="/MyWork/Projects">My Projects</a>
        </td>        
        <td class="dashboardTabSpace">
            <img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace4" src="../../Content/images/common/space.gif">
        </td>
        <td nowrap="nowrap" class="dashboardTabSelected">
            Documents
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
                                            Documents
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
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_hdrElement_ActionViewPos2_mnuMenus_tblMenu0" style="padding-left: 4px; white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">                                
                    

                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr id="trMenuIcons">
                                       
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 5005;" id="ctl00_hdrElement_ActionViewPos2_mnuMenus_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#FFFFFF';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$hdrElement_ActionViewPos2$mnuMenus','&lt;argument&gt;&lt;menu&gt;ADDACTION           :DOCUMENT&lt;/menu&gt;&lt;item&gt;ADDACTION           :DOCUMENT&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="../../Content/images/common/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$hdrElement_ActionViewPos2$mnuMenus','&lt;argument&gt;&lt;menu&gt;ADDACTION           :DOCUMENT&lt;/menu&gt;&lt;item&gt;ADDACTION           :DOCUMENT&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    
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
                  
            
<div style="padding: 0px; overflow: auto; border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 277px; width: 1417px;" id="ctl00_dsh_dashboard_divElementActionViewPos2">






    <table width="100%">
        <tbody><tr>
        
            <td align="left" style="padding: 5px;">
            
            Project
                                    : 
                                    
                                  <select name="ctl00$phFormContent$cboProjectLevel" id="project"
                                                            class="comboBox">
                                                            <option value="Select">Select</option>
                                                            <option value="Project1" selected="selected">Project 1</option>
                                                            <option value="Project2">Project 2</option>
                                                            <option value="Project3">Project 3</option>
                                                        </select>   
                                  &nbsp;&nbsp;
        <div style="display: inline;" id="ctl00_dshElement_ActionViewPos2_aecElementControlActionViewPos2_pbxFilter1Project_divDescription">
            </div>
                                        
            
                <img width="20px" alt="" src="../../Content/images/common/blank.gif">
                
                    
        
                                            <input type="button" value="Add Project Document"  class="button" onclick="lnkDocUpload_onClick();" /></td>
            <td>&nbsp;</td>
        </tr>
        
            
        
            <tr>
                <td align="left" style="padding: 5px;">
            
                
                <img src="../../Content/images/common/menuitem_rollback.gif" id="ctl00_dshElement_Task_aecElementControlTask_ucProjectPlan_imgRollback"
                                                                                                onclick="#" style="vertical-align: middle; cursor: pointer;" alt="Rollback"
                                                                                                title="Refresh after add new task">
                </td>
            
                
                <td>&nbsp;</td>
            </tr>
        
        
        
        
    </tbody></table>

    <table cellspacing="0" cellpadding="0" border="0" style="white-space: nowrap; width: 100%; padding: 0pt;" class="dashboardTable">
        <thead>
            <tr>
                <td valign="middle" style="white-space: nowrap;" class="dashboardTable">
		          &nbsp;
                </td>
                <td valign="middle" style="white-space: nowrap;" class="dashboardTable">
		          &nbsp;
                </td>
                
                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SORTCOL:ANReference')">Reference</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: center;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SORTCOL:ANStartDate')">Date Logged</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SORTCOL:ANResource')">Logged By</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SORTCOL:ANProject')">Project</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                        Document Type
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                        Document Attachment
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SORTCOL:ANTextPreview')">Document Description</a>
                                            
                                        
                                    </td>
                                                
                    <td valign="middle" style="white-space: nowrap;" class="dashboardTable">
			            &nbsp;
		            </td>		
		                        
		            <td valign="middle" style="white-space: nowrap;" class="dashboardTable">
			            &nbsp;
		            </td>
		                        
                    <td valign="middle" style="white-space: nowrap; width: 5px;" class="dashboardTable">				            
		                &nbsp;
	                </td>
                

            </tr>
        </thead>

        <tbody>
            
            

                        <tr onmouseout="this.style.cursor='normal'; this.style.backgroundColor='';" onmouseover="this.style.cursor='hand'; this.style.backgroundColor='#F7F7F7';" style="">
                            
                            <td valign="middle" align="left" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="width: 8px;" class="dashboardTableRowStart">
                                
                                    <img alt="" src="../../Content/images/common/space.gif">
                                
                            </td>
                        
                            <td valign="middle" align="center" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="width: 8px;" class="dashboardTableRowNoBorder"> 					
                                
                                
                                            <img alt="Completed" src="../../Content/images/common/complete.gif"> 
                                            
                                
                            </td>                        
                        
                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    DOC_0
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: center;" class="dashboardTable">
                                                    
                                                    12/28/2010
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    Chanaka
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1:OPENPROJECT:PROJECT1:')" style="text-align: left;" class="dashboardTable">
                                                    
                                                    <a title="Open Project" href="#">Demonstration Project</a>
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    Project Plan
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="text-align: left;" class="dashboardTable">
                                                    
                                                    <a title="Click to View Document" href="javascript:showDocumentInfo('/',1);">2010-12-28_Project_Kickoff_Template.ppt</a>
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    Document Description:
                                                    
                                                </td>    
                                                 
                                <td valign="middle"  style="width: 5px;" class="dasboardTable">
                                    <img  title="Open Record" alt="" src="../../Content/images/icon/openitem.gif" id="imgOpenAction">
                                </td>
                                              
                                <td valign="middle"  style="width: 5px;" class="dasboardTable">
                                    
                                </td>
                                              
						        <td valign="middle" onclick="if (confirm('Are you sure you want to delete this Action?')) {__doPostBack('ctl00$dshElement_ActionViewPos2$aecElementControlActionViewPos2','IMG_DELETEACTION_ONCLICK:1');}" style="width: 5px;" class="dasboardTable">
						            <img  title="Delete Record" alt="" src="../../Content/images/icon/deleteitem.gif" id="imgDeleteAction">
						        </td>					
					                                
                        
                        </tr>
                
            
        </tbody>

    </table>


            
                   
</div></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
</tbody></table>

        </div>

</asp:Content>
