<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <div style="padding: 0px;">
            
<table cellspacing="0" cellpadding="0" class="dashboardTabStrip" style="border: medium none; width: 100%;" id="tabTablectl00_ucTabStrip">
    <tbody><tr>
        <td align="left" id="ctl00_ucTabStrip_tdStretch">            
            <div style="overflow: hidden;" id="ctl00_ucTabStrip_divTabContainer">
                
                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_ucTabStrip_tabStrip">
	<tbody><tr>
	</tr>
	<tr>
		<td class="dashboardTabSpace"><img height="1" width="5" id="ctl00_ucTabStrip_imgTabSpace" src="/images/space.gif"></td>
		<td class="dashboardTabSpace"><img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace3" src="/images/space.gif"></td>
		<td nowrap="nowrap" class="dashboardTabSelected">Documents</td>
		<td class="dashboardTabSpace"><img height="1" width="1" id="ctl00_ucTabStrip_imgTabSpace4" src="/images/space.gif"></td>
		<td nowrap="nowrap" width="100%" valign="middle" align="left" class="dashboardTabTail">&nbsp;</td>
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
						    <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollLeft" src="../images/arrowleft_grey.gif">
					    </td>
					    <td width="100%">
    						
					    </td>
					    <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_ucTabStrip_imgScrollRight" src="../images/arrowright_grey.gif">
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
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '#ECECED');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_hdrElement_PR4_mnuMenus_tblMenu0" style="padding-left: 4px; white-space: nowrap; cursor: pointer; background-color: rgb(236, 236, 237); color: rgb(102, 102, 102);">                                
                    

                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr id="trMenuIcons">
                                       
                                        <td>
                                            
                                         <a href="DocUpload"><input type="submit" value="Add Project Document"  class="button"></a>
                                        </td>
                                    </tr>
                                </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 5005;" id="ctl00_hdrElement_PR4_mnuMenus_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#FFFFFF';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$hdrElement_PR4$mnuMenus','&lt;argument&gt;&lt;menu&gt;ADDACTION           :DOCUMENT&lt;/menu&gt;&lt;item&gt;ADDACTION           :DOCUMENT&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="/images/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$hdrElement_PR4$mnuMenus','&lt;argument&gt;&lt;menu&gt;ADDACTION           :DOCUMENT&lt;/menu&gt;&lt;item&gt;ADDACTION           :DOCUMENT&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    
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
                  
            
<div style="padding: 0px; overflow: auto; border-width: medium 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(236, 236, 237) rgb(236, 236, 237); height: 235px; width: 1400px;" id="ctl00_dsh_dashboard_divElementPR4">






    <table width="100%">
        <tbody><tr>
        
            <td align="left" style="padding: 5px;">
            
            Resource
                                    : <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_dshElement_PR4_aecElementControlPR4_pbxFilter1Resource_lnkSelect', 'ctl00_dshElement_PR4_aecElementControlPR4_pbxFilter1Resource_lnkRefresh', true);" class="textBox" id="ctl00_dshElement_PR4_aecElementControlPR4_pbxFilter1Resource_txtValue" name="ctl00$dshElement_PR4$aecElementControlPR4$pbxFilter1Resource$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4$pbxFilter1Resource$lnkSelect','')" title="Select" id="ctl00_dshElement_PR4_aecElementControlPR4_pbxFilter1Resource_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4$pbxFilter1Resource$lnkRefresh','')" title="Refresh" id="ctl00_dshElement_PR4_aecElementControlPR4_pbxFilter1Resource_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_dshElement_PR4_aecElementControlPR4_pbxFilter1Resource_divDescription">
            </div>
<input type="hidden" id="ctl00_dshElement_PR4_aecElementControlPR4_pbxFilter1Resource_hdnDescription" name="ctl00$dshElement_PR4$aecElementControlPR4$pbxFilter1Resource$hdnDescription">
                
                <img width="20px" alt="" src="/images/blank.gif">
                
            Document Type
                                    : <select onchange="__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','CBOFILTERKEYWORD2_ONCHANGE')" class="comboBox" id="ctl00_dshElement_PR4_aecElementControlPR4_cboFilter2Keyword" name="ctl00$dshElement_PR4$aecElementControlPR4$cboFilter2Keyword">
					<option value=""></option>
					<option value="Project Mandate">Project Mandate</option>
					<option value="Project Brief">Project Brief</option>
					<option value="Business Case">Business Case</option>
					<option value="Product Description">Product Description</option>
					<option value="Project Plan" selected="selected">Project Plan</option>
					<option value="Project Approach">Project Approach</option>
					<option value="Acceptance Criteria">Acceptance Criteria</option>
					<option value="Project Initiation Document (PID)">Project Initiation Document (PID)</option>
					<option value="Communication Plan">Communication Plan</option>
					<option value="Quality Plan">Quality Plan</option>
					<option value="Product Checklist">Product Checklist</option>
					<option value="Highlight Report">Highlight Report</option>
					<option value="Checkpoint Report">Checkpoint Report</option>
					<option value="End Stage Report">End Stage Report</option>
					<option value="Lessons Learned Report">Lessons Learned Report</option>
					<option value="Post Project Review">Post Project Review</option>
					<option value="End Project Report">End Project Report</option>
					<option value="Folow-on Action/Recommendatio">Folow-on Action/Recommendatio</option>
				</select>
            
                <img width="20px" alt="" src="/images/blank.gif">
                
            Date Logged
                                
                                
                                : <a href="javascript: lnkFromDate_onClick('',3);" id="lnkFilter3FromDate">[Select]</a> 
                                        To 
			                        <a href="javascript: lnkToDate_onClick('',3);" id="lnkFilter3ToDate">[Select]</a>  
                                        
                
                <img width="20px" alt="" src="/images/blank.gif">
                
                    
        
            </td>
            <td>&nbsp;</td>
        </tr>
        
            
        
            <tr>
                <td align="left" style="padding: 5px;">
            
                
                
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
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SORTCOL:ANReference')">Reference</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: center;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SORTCOL:ANStartDate')">Date Logged</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SORTCOL:ANResource')">Logged By</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SORTCOL:ANProject')">Project</a>
                                            
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                        Document Type
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                        Document Attachment
                                        
                                    </td>
                                    
                                    <td valign="middle" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                    
                                         
                                            <a href="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SORTCOL:ANTextPreview')">Document Description</a>
                                            
                                        
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
                            
                            <td valign="middle" align="left" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="width: 8px;" class="dashboardTableRowStart">
                                
                                    <img alt="" src="/images/space.gif">
                                
                            </td>
                        
                            <td valign="middle" align="center" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="width: 8px;" class="dashboardTableRowNoBorder"> 					
                                
                                
                                            <img alt="Completed" src="/images/complete.gif"> 
                                            
                                
                            </td>                        
                        
                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    DOC_0
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: center;" class="dashboardTable">
                                                    
                                                    12/28/2010
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    Alan Barnacle
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1:OPENPROJECT:PROJECT1:')" style="text-align: left;" class="dashboardTable">
                                                    
                                                    <a title="Open Project" href="#">Demonstration Project</a>
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    Project Plan
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="text-align: left;" class="dashboardTable">
                                                    
                                                    <a title="Click to View Document" href="javascript:showDocumentInfo('/',1);">2009-05-16_Project_Kickoff_Template.ppt</a>
                                                    
                                                </td>    
                                            
                                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1')" style="white-space: nowrap; text-align: left;" class="dashboardTable">
                                                    
                                                    Document Description:
                                                    
                                                </td>    
                                                 
                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1:OPENACTION:1')" style="width: 5px;" class="dasboardTable">
                                    <img onmouseover="javascript:this.style.cursor='hand';" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1:OPENACTION:1')" title="Open Record" alt="" src="/images/openitem.gif" id="imgOpenAction">
                                </td>
                                              
                                <td valign="middle" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1:CLONEACTION:1')" style="width: 5px;" class="dasboardTable">
                                    <img onmouseover="javascript:this.style.cursor='hand';" onclick="javascript:__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','SETCURRENTACTION:1:CLONEACTION:1')" title="Clone Record" alt="" src="/images/cloneitem.gif" id="imgCloneAction">      
                                </td>
                                              
						        <td valign="middle" onclick="if (confirm('Are you sure you want to delete this Action?')) {__doPostBack('ctl00$dshElement_PR4$aecElementControlPR4','IMG_DELETEACTION_ONCLICK:1');}" style="width: 5px;" class="dasboardTable">
						            <img onmouseover="javascript:this.style.cursor='hand';" title="Delete Record" alt="" src="/images/deleteitem.gif" id="imgDeleteAction">
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
