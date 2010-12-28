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
           <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','GENERAL')"
               onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
               <a href="Index">General</a>
           </td>
           <td class="tabSpace">
               <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0" src="/images/space.gif">
           </td>
           <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','ROLES')"
               onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
               <a href="AddRole">Roles</a>
           </td>
           <td class="tabSpace">
               <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace3" src="/images/space.gif">
           </td>
           <td nowrap="nowrap" class="tabSelected">
               Skills
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
            <td valign="top" align="right" class="formDetailDark">        
                Skills:
            </td>
            <td valign="middle" align="left" class="formDetail">
                <table>
                    <tbody><tr>
                        <td>
                            <table cellspacing="0" cellpadding="0" style="width: 100%;" class="formTable" id="tblSkills">
                                <tbody><tr>
                                    <td align="left" style="width: 25%;" class="formTableColumnTitle">
                                        Code
                                    </td>
                                    <td align="left" style="width: 60%;" class="formTableColumnTitle">
                                        Description
                                    </td>                                    
                                    <td align="left" style="width: 10%;" class="formTableColumnTitle">
                                        Level
                                    </td>
                                    
                                        <td align="left" style="width: 5%;" class="formTableColumnTitle">
                                            
                                                &nbsp;
                                            
                                        </td>
                                    
                                </tr>
                                
                            
                            </tbody></table>
                        </td>
                    </tr>
                    <tr>
    	                <td style="text-align: left; vertical-align: middle;" class="normal">
	                    </td>
                    </tr>                    
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="0" style="border: 0pt none; width: 100%;">
                                <tbody><tr>
                                    <td align="left">
                                        <input type="button" value="Add Skills" class="button" id="ctl00_phFormContent_btnAddSkills" name="ctl00$phFormContent$btnAddSkills" onclick="__doPostBack('ctl00$phFormContent$btnAddSkills','')">
                                        <input type="button" value="Copy From" class="button" id="ctl00_phFormContent_btnCopySkillsFrom" name="ctl00$phFormContent$btnCopySkillsFrom" onclick="__doPostBack('ctl00$phFormContent$btnCopySkillsFrom','')">                        
                                    </td>
                                    <td>&nbsp;</td>
                                    <td align="right">
                                        
                                            &nbsp;
                                                                
                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
            </td>
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
