<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="formContainer" id="masterpage_divMain">
            <div class="formHead" id="masterpage_divHead">
                
<table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
	<tbody><tr>
		<td valign="middle" align="left">
		    Getting Started -&gt; Add Resource
		</td>
		
		
	</tr>
</tbody></table>
                
            </div>
            
                
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tbody><tr>
                    <td>
                        <div class="formBody" id="masterpage_divBody">
                       
                            


                            

                            
                            

<table cellspacing="0" cellpadding="0" class="" style="border: medium none; width: 100%;" id="tabTablectl00_phTabstripHeader_tabMain">
    <tbody><tr>
        <td align="left" id="ctl00_phTabstripHeader_tabMain_tdStretch">            
            <div style="overflow: hidden;" id="ctl00_phTabstripHeader_tabMain_divTabContainer">
                
                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_phTabstripHeader_tabMain_tabStrip">
	<tbody><tr>
	</tr>
	
    <tr>
        <td class="tabSpace">
            <img height="1" width="5" id="ctl00_phTabstripHeader_tabMain_imgTabSpace" src="/images/space.gif">
        </td>
        <td nowrap="nowrap" class="tabSelected">
            General
        </td>
        <td class="tabSpace">
            <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0" src="/images/space.gif">
        </td>
        <td class="tabSpace">
            <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace2" src="/images/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','ROLES')"
            onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
            <a href="AddRole">Roles</a>
        </td>
        <td class="tabSpace">
            <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace3" src="/images/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','SKILLS')"
            onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff" >
            <a href="AddSkill">Skills</a>
        </td>
        <td class="tabSpace">
            <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace5" src="/images/space.gif">
        </td>
        <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','INTERESTED PROJECTS')"
            onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
            <a href="InterestProjects">Interested Projects</a>
        </td>
        <td class="tabSpace">
            <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace7" src="/images/space.gif">
        </td>
        <td nowrap="nowrap" width="100%" valign="middle" align="left" class="tabTail">
            &nbsp;
        </td>
    </tr>
</tbody></table>
                
             </div>			 
        </td>

    </tr>
    
    
        <tr>
		    <td>
			    <table height="5" width="100%" cellspacing="0" cellpadding="0" border="0" class="tabStripBase">
				    <tbody><tr>
					    <td valign="middle" align="left" id="btnScrollLeft" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_phTabstripHeader_tabMain_imgScrollLeft" src="../images/arrowleft_grey.gif">
					    </td>
					    <td width="100%">
    						
					    </td>
					    <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_phTabstripHeader_tabMain_imgScrollRight" src="../images/arrowright_grey.gif">
					    </td>
				    </tr>
			    </tbody></table>
		    </td>
	    </tr>
	
        </tbody></table>
    

                        
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;" id="masterPage_tblFormContentRoot">
                                <tbody><tr>
                                    <td class="form">
                                        



<table class="formContent">
    

<tbody><tr>
	<td height="5" class="formDetailDarkNoPadding"><img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="../images/space.gif"></td>
	<td height="5" width="100%" colspan="2" class="formDetailNoPadding"><img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="../images/space.gif"></td>
</tr>
    <tr>
        <td valign="middle" align="right" class="formDetailDark">
            Code:
        </td>
        <td valign="middle" align="left" class="formDetail">
            <input type="text" maxlength="20" size="20" class="textBox" id="ctl00_phFormContent_txtCode" name="ctl00$phFormContent$txtCode">
        </td>
    </tr>
    <tr>
        <td valign="middle" align="right" class="formDetailDark">
            Description:
        </td>
        <td valign="middle" align="left" class="formDetail">
            <input type="text" maxlength="70" size="70" class="textBox" id="ctl00_phFormContent_txtDescription" name="ctl00$phFormContent$txtDescription">            
        </td>
    </tr>
    <tr>
        <td valign="middle" align="right" class="formDetailDark">
            Resource Type:
        </td>
        <td valign="middle" align="left" class="formDetail">
            <select onchange="changeResourceType(0);" class="comboBox" id="ctl00_phFormContent_cboResourceType" name="ctl00$phFormContent$cboResourceType">
	<option value="1" selected="selected">Employee</option>
	<option value="2">Contractor</option>
	<option value="4">Role</option>
</select>
        </td>
    </tr>
    <tr>
        <td valign="middle" align="right" class="formDetailDark">
            Active:
        </td>
        <td valign="middle" align="left" class="formDetail">
            <input type="checkbox" checked="checked" class="checkBox" id="ctl00_phFormContent_chkActive" name="ctl00$phFormContent$chkActive">            
        </td>
    </tr>
    <tr>
        <td valign="middle" align="right" class="formDetailDark">
            Template:
        </td>
        <td valign="middle" align="left" class="formDetail">
            <input type="checkbox" class="checkBox" id="ctl00_phFormContent_chkIsTemplate" name="ctl00$phFormContent$chkIsTemplate">            
        </td>
    </tr>
    
    
<tr>
	<td valign="middle" align="right" class="formDetailDarkHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
	<td valign="middle" align="left" colspan="1" class="formDetailHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
</tr>


        <tr>
            <td valign="middle" align="right" class="formDetailDark">
                Department:
            </td>
            <td valign="middle" align="left" class="formDetail">
                <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxDepartment_lnkSelect', 'ctl00_phFormContent_pbxDepartment_lnkRefresh', true);" value="MY_DEPT" maxlength="20" class="textBox" id="ctl00_phFormContent_pbxDepartment_txtValue" name="ctl00$phFormContent$pbxDepartment$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxDepartment$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxDepartment_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxDepartment$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxDepartment_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxDepartment_divDescription">
             | Customer Services</div>
<input type="hidden" value="Customer Services" id="ctl00_phFormContent_pbxDepartment_hdnDescription" name="ctl00$phFormContent$pbxDepartment$hdnDescription">                
                
            </td>     
        </tr>
        
         <tr>
            <td valign="middle" align="right" class="formDetailDark">
                Location:
            </td>
            <td valign="middle" align="left" class="formDetail">
                <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxLocation_lnkSelect', 'ctl00_phFormContent_pbxLocation_lnkRefresh', true);" maxlength="20" class="textBox" id="ctl00_phFormContent_pbxLocation_txtValue" name="ctl00$phFormContent$pbxLocation$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxLocation$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxLocation_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxLocation$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxLocation_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxLocation_divDescription">
            </div>
<input type="hidden" id="ctl00_phFormContent_pbxLocation_hdnDescription" name="ctl00$phFormContent$pbxLocation$hdnDescription">
            </td>     
        </tr>
          
        
        <tr>
            <td valign="middle" align="right" class="formDetailDark">
                Locale:
            </td>
            <td valign="middle" align="left" class="formDetail">
                <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxLocale_lnkSelect', 'ctl00_phFormContent_pbxLocale_lnkRefresh', true);" maxlength="20" class="textBox" id="ctl00_phFormContent_pbxLocale_txtValue" name="ctl00$phFormContent$pbxLocale$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxLocale$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxLocale_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxLocale$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxLocale_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxLocale_divDescription">
            </div>
<input type="hidden" id="ctl00_phFormContent_pbxLocale_hdnDescription" name="ctl00$phFormContent$pbxLocale$hdnDescription">
                
            </td>     
        </tr>
        
        
            <tr>
                <td valign="middle" align="right" class="formDetailDark">
                    Agency:
                </td>
                <td valign="middle" align="left" class="formDetail">
                    <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxAgency_lnkSelect', 'ctl00_phFormContent_pbxAgency_lnkRefresh', true);" maxlength="20" class="textBox" id="ctl00_phFormContent_pbxAgency_txtValue" name="ctl00$phFormContent$pbxAgency$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxAgency$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxAgency_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxAgency$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxAgency_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxAgency_divDescription">
            </div>
<input type="hidden" id="ctl00_phFormContent_pbxAgency_hdnDescription" name="ctl00$phFormContent$pbxAgency$hdnDescription">
                </td>     
            </tr>
        
        <tr>
            <td valign="middle" align="right" class="formDetailDark">
                Cost Centre:
            </td>
            <td valign="middle" align="left" class="formDetail">
                <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxCostCentre_lnkSelect', 'ctl00_phFormContent_pbxCostCentre_lnkRefresh', true);" value="CC_001" maxlength="20" class="textBox" id="ctl00_phFormContent_pbxCostCentre_txtValue" name="ctl00$phFormContent$pbxCostCentre$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxCostCentre$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxCostCentre_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxCostCentre$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxCostCentre_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxCostCentre_divDescription">
             | Sample Trial Cost Centre</div>
<input type="hidden" value="Sample Trial Cost Centre" id="ctl00_phFormContent_pbxCostCentre_hdnDescription" name="ctl00$phFormContent$pbxCostCentre$hdnDescription">
                
            </td>     
        </tr>
        
        
            <tr>
                <td valign="middle" align="right" class="formDetailDark">
                    Line Manager:
                </td>
                <td valign="middle" align="left" class="formDetail">
                    <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxLineManager_lnkSelect', 'ctl00_phFormContent_pbxLineManager_lnkRefresh', true);" maxlength="20" class="textBox" id="ctl00_phFormContent_pbxLineManager_txtValue" name="ctl00$phFormContent$pbxLineManager$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxLineManager$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxLineManager_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxLineManager$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxLineManager_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxLineManager_divDescription">
            </div>
<input type="hidden" id="ctl00_phFormContent_pbxLineManager_hdnDescription" name="ctl00$phFormContent$pbxLineManager$hdnDescription">
                </td>     
            </tr>
        
        
            <tr>
                <td valign="middle" align="right" class="formDetailDark">
                    Primary Email Address:
                </td>
                <td valign="middle" align="left" class="formDetail">
                    <input type="text" maxlength="70" size="70" class="textBox" id="ctl00_phFormContent_txtPrimaryEmail" name="ctl00$phFormContent$txtPrimaryEmail">            
                </td>
            </tr>
            
            <tr>
                <td valign="middle" align="right" class="formDetailDark">
                    Telephone:
                </td>
                <td valign="middle" align="left" class="formDetail">
                    <input type="text" maxlength="30" size="30" class="textBox" id="ctl00_phFormContent_txtTelephone" name="ctl00$phFormContent$txtTelephone">            
                </td>
            </tr>
         

        
                        
        <tr>
            <td valign="top" align="right" class="formDetailDark">
                Notes:
            </td>
            <td valign="top" align="left" class="formDetail">
                <textarea rows="2" cols="62" class="textArea" id="ctl00_phFormContent_txtNotes" name="ctl00$phFormContent$txtNotes"></textarea>
            </td>
        </tr>
    
        
<tr>
	<td valign="middle" align="right" class="formDetailDarkHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
	<td valign="middle" align="left" colspan="1" class="formDetailHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
</tr>

            
            <tr>
                <td valign="top" align="right" class="formDetailDark">
                    Licensed For:
                </td>
                <td valign="middle" align="left" class="formDetail">
                
                    <table border="0">
                        <tbody><tr>
                            <td valign="top" style="padding: 0px;">
                                
    
<table width="" cellspacing="0" cellpadding="0" border="0">
    <tbody><tr>
        <td colspan="2">
            <table width="100%" class="formTable">
                <thead>
                    <tr>
                        
                            <td valign="middle" align="left" class="formTableColumnTitle">
                                 Module  
                            </td>
                        
                            <td valign="middle" align="center" class="formTableColumnTitle">
                                <input type="checkbox" onclick="com_selectiongrid_selectAll('ctl00_phFormContent_sgProducts', this.checked)" id="ctl00_phFormContent_sgProducts_chkSelectAll" class="checkbox">
                            </td>                        
                                                              
                        
                    </tr>
                </thead>
                
                <tbody>
                    

                        <tr>
                            
                                
                                <td valign="middle" align="left" class="formTableRow">
                                    Professional Service Automation          
                                </td>                                                                                
                            
                                <td valign="middle" align="center" class="formTableRow">
                                    
                                        <input type="checkbox" onclick="com_selectiongrid_select('ctl00_phFormContent_sgProducts', this.checked)" checked="checked" value="0" id="ctl00_phFormContent_sgProducts_chkSelect" name="ctl00_phFormContent_sgProducts_chkSelect" class="checkbox">
                                    
                                </td>
                            
                            
                        </tr>                    
                    

                        <tr>
                            
                                
                                <td valign="middle" align="left" class="formTableRow">
                                    Project Portfolio Management          
                                </td>                                                                                
                            
                                <td valign="middle" align="center" class="formTableRow">
                                    
                                        <input type="checkbox" onclick="com_selectiongrid_select('ctl00_phFormContent_sgProducts', this.checked)" checked="checked" value="1" id="ctl00_phFormContent_sgProducts_chkSelect" name="ctl00_phFormContent_sgProducts_chkSelect" class="checkbox">
                                    
                                </td>
                            
                            
                        </tr>                    
                    
                 </tbody>          
            </table>
        </td>
    </tr>
    
        
</tbody></table>

        <input type="hidden" value="true" id="ctl00_phFormContent_sgProducts_hdnSelectedItems" name="ctl00_phFormContent_sgProducts_hdnSelectedItems">
        
        <script type="text/javascript">
        &lt;!--
            com_selectiongrid_select('ctl00_phFormContent_sgProducts', true);
        //--&gt;
        </script>
        
                            </td>
                            <td valign="top" style="padding-left: 15px;">
                                <table border="0">                            
                                    <tbody><tr>
                                        <td valign="middle" align="left" style="padding: 0px 2px 2px 0px;">
                                            Licenses:
                                        </td>
                                        <td valign="middle" align="left" style="padding: 0px 2px 2px 0px;">
                                            100
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="middle" align="left">
                                            Licenses Used:
                                        </td>
                                        <td valign="middle" align="left">
                                            8&nbsp;
                                            
                                        </td>
                                    </tr>
                                </tbody></table>
                            </td>
                            
                        </tr>
                    </tbody></table>                
                    
                </td>
            </tr>                       

        
<tr>
	<td valign="middle" align="right" class="formDetailDarkHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
	<td valign="middle" align="left" colspan="1" class="formDetailHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
</tr>

    <tr id="ctl00_phFormContent_ucCustomFields_trCustom25">
	<td valign="middle" align="right" style="padding-top: 4px; padding-bottom: 4px;" class="formDetailDark" id="ctl00_phFormContent_ucCustomFields_tdCustomLabel25"><img align="middle" title="Attach a Photograph of your Resources" alt="Attach a Photograph of your Resources" src="/images/info.gif"> Photograph:</td>
	<td valign="middle" colspan="1" style="padding-top: 4px; padding-bottom: 4px;" class="formDetail" id="ctl00_phFormContent_ucCustomFields_tdCustomControl25"><a id="ctl00_phFormContent_ucCustomFields_cfCustom25_lnkUploadDocument" href="javascript:com_customfield_uploadDocument('/','ctl00_phFormContent_ucCustomFields_cfCustom25_hdnDocumentKey','com_customfield_refreshDocumentCallback_ctl00_phFormContent_ucCustomFields_cfCustom25');">[Upload File]</a>
            <input type="hidden" id="ctl00_phFormContent_ucCustomFields_cfCustom25_hdnDocumentKey" name="ctl00$phFormContent$ucCustomFields$cfCustom25$hdnDocumentKey">
    
&nbsp;   </td>
</tr>

    
    

<tr>
	<td height="5" class="formDetailDarkNoPadding"><img height="1" width="180" id="ctl00_phFormContent_ucFormFooter_img1" src="../images/space.gif"></td>
	<td height="5" width="100%" colspan="2" class="formDetailNoPadding"><img height="1" id="ctl00_phFormContent_ucFormFooter_img2" src="../images/space.gif"></td>
</tr>
</tbody></table>

                                    </td>
                                </tr>     
                            </tbody></table>

                            

        
                        </div>
                        
                        <div class="formFoot" id="masterpage_divFoot"> 						
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody><tr>
                                    <td valign="middle" align="left">
                                        
    <table width="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody><tr>
            <td align="left">
                <input type="submit" value="Save" class="button" id="ctl00_phFormButtonBar_btnSave" name="ctl00$phFormButtonBar$btnSave">
                    <input type="submit" value="Save and Close" class="button" id="ctl00_phFormButtonBar_btnSaveAndClose" name="ctl00$phFormButtonBar$btnSaveAndClose">
                    <img height="12" width="1" style="padding-left: 2px; padding-right: 2px; border: medium none; vertical-align: middle;" id="ctl00_phFormButtonBar_ucSaveDivider_imgDivider" src="../images/line_darkgrey.gif">														
                <input type="submit" value="Close" class="button" id="ctl00_phFormButtonBar_btnClose" name="ctl00$phFormButtonBar$btnClose">    
            </td>
            
        </tr>

    </tbody></table>       

                                    </td>					
                                </tr>
                            </tbody></table>
                        </div>
                        
                        <div style="padding-left: 10px; padding-right: 10px;">
                            

                        </div>
                    </td>
                </tr>
            </tbody></table>
        </div>

</asp:Content>
