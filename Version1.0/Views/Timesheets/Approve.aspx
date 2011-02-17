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
                                                                     Approve Timesheet</td>
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
  
  <table class="operationsBarOuter">
                <tbody><tr>
                    
                        <td align="left">
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody><tr>
	                                <td class="operationsBar">
                                        

        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody><tr>
                <td valign="middle" align="left">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tbody><tr>
                            <td>
                                

<table width="100px" cellspacing="0" cellpadding="0" border="0" style="">
    <tbody><tr>
        <td align="left" style="white-space: nowrap;">
            
            <table style="width: 100%;">
                <tbody><tr>
                    <td align="left" style="white-space: nowrap; border: medium none; width: 100%;">
                        
                        
                            <table>
                                <tbody><tr>
                                    <td align="left" style="white-space: nowrap;">
                                        Resource List&nbsp; 
                                        <select onchange="__doPostBack('ctl00$phOperationsBar$ucResourceListManager','CBOLIST_CLICK')" class="comboBox" id="ctl00_phOperationsBar_ucResourceListManager_cboList" name="ctl00$phOperationsBar$ucResourceListManager$cboList">
	<option value="All" selected="selected">All</option>
	<option value="All" selected="selected">Managers</option>
	<option value="All" selected="selected">Deverlopers</option>
</select>
                                    </td>
                                    
                                    
                                            <td align="left">
                                                
    <table cellspacing="0" cellpadding="0" style="border: 0px none; padding: 0px; margin: 0px;">
        <tbody><tr>
            
                
                <td onmouseout="com_menulist_menuOnMouseOut(this, '');" onmouseover="com_menulist_menuOnMouseOver(this, 'transparent', 'transparent');" id="ctl00_phOperationsBar_ucResourceListManager_mnuListActions_tblMenu0" style="white-space: nowrap; cursor: pointer; color: rgb(102, 102, 102);">                                
                    
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr onmouseout="getFirstChild(getChildNode(this, 1)).src = '../../Content/images/icon/vistabuttongrey_dropdown.gif';" onmouseover="getFirstChild(getChildNode(this, 1)).src = '/images/vistabuttongrey_dropdown_mouseover.gif';" id="trMenuIcons">
                                       
                                        
                                            <td onclick="com_menulist_showPopup(event, getParentNode(getParentNode(getParentNode(getParentNode(this)))), 'ctl00_phOperationsBar_ucResourceListManager_mnuListActions_tblMenu0_divPopup', 'right', 'transparent', '#F9F9F9', '#666666');">
                                                <img style="vertical-align: middle;" alt="" src="../../Content/images/icon/vistabuttongrey_dropdown.gif">                
                                            </td>
                                        
                                    </tr>
                                </tbody></table>
                        
                </td>
                                    
        </tr>
    </tbody></table>

<div onmouseout="com_menulist_popupOnMouseOut();" onmouseover="com_menulist_popupOnMouseOver();" style="visibility: hidden; position: absolute; background-color: rgb(255, 255, 255); border: 1px solid rgb(102, 102, 102); z-index: 1001;" id="ctl00_phOperationsBar_ucResourceListManager_mnuListActions_tblMenu0_divPopup">
            <table style="width: 220px; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102); border: medium none; border-collapse: collapse; padding: 0px; margin: 0px; text-align: left;">                        
            
                            <tbody><tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="/images/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;CREATELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Create Empty List...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_phOperationsBar_ucResourceListManager');" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="/images/space.gif">
                                    
                                </td>
                                <td onclick="javascript:com_listmanagement_showListNameEntry('/common/com_inputbox.aspx?MaxLength=70&amp;PageTitle=Enter List Name','ctl00_phOperationsBar_ucResourceListManager');" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Save As...
                                </td>
                            </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="/images/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;DELETELIST&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Delete...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="/images/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="/images/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;ADDITEMS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
                                    Add Resources...
                                </td>
                            </tr>
                    
                        <tr>
                            <td style="background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);" class="popupMenuItemDivider"><img height="1" width="1" alt="" src="/images/space.gif"></td>
                            <td style="background-color: rgb(249, 249, 249);" class="popupMenuItemDivider"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
                        </tr>
                    
                            <tr onmouseout="this.cells(0).style.backgroundColor='#DDDDDD';this.cells(1).style.backgroundColor='#F9F9F9';" onmouseover="this.cells(0).style.backgroundColor='#ECECED';this.cells(1).style.backgroundColor='#ECECED';">
                                <td valign="middle" align="center" onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; width: 20px; height: 20px; padding: 2px; cursor: pointer; background-color: rgb(221, 221, 221); color: rgb(102, 102, 102);">
                                      
                                        <img height="16" width="16" alt="" src="/images/space.gif">
                                    
                                </td>
                                <td onclick="__doPostBack('ctl00$phOperationsBar$ucResourceListManager$mnuListActions','&lt;argument&gt;&lt;menu&gt;ACTIONSMENU&lt;/menu&gt;&lt;item&gt;SHOWLISTCONTENTS&lt;/item&gt;&lt;/argument&gt;')" style="white-space: nowrap; cursor: pointer; background-color: rgb(249, 249, 249); color: rgb(102, 102, 102);" class="popupMenuItem">
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
            
           <input type="hidden" value="False" id="ctl00_phOperationsBar_ucResourceListManager_hdnPostBack" name="ctl00$phOperationsBar$ucResourceListManager$hdnPostBack">
           <input type="hidden" id="ctl00_phOperationsBar_ucResourceListManager_hdnAction" name="ctl00$phOperationsBar$ucResourceListManager$hdnAction">
           <input type="hidden" id="ctl00_phOperationsBar_ucResourceListManager_hdnParameter" name="ctl00$phOperationsBar$ucResourceListManager$hdnParameter">
            
        </td>
    </tr>
</tbody></table>
                            </td>
                            <td>
                                Approval Status: <select onchange="__doPostBack('__Page','lstApprovalStatus_Change')" class="comboBox" id="ctl00_phOperationsBar_lstApprovalStatus" name="ctl00$phOperationsBar$lstApprovalStatus">
	<option value="2" selected="selected">Unapproved</option>
	<option value="3">Disapproved</option>
	<option value="1">Approved</option>	
	<option value="5">Incomplete</option>
	<option value="6">All</option>
</select>
                            </td>
                        </tr>
                    </tbody></table>
                </td>
                <td valign="middle" align="right">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tbody><tr>
                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 10px;">
                                <input type="image" title="Go Back a Week" alt="Go Back a Week" id="ctl00_phOperationsBar_imgBack" 
                                name="ctl00$phOperationsBar$imgBack" src="../../Content/images/icon/chevron_left.gif">
                            </td>
                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">
                                
<a id="ctl00_phOperationsBar_ucStartPeriodDate_lnkPickDate" href="#">10/18/2010</a>
        <input type="hidden" class="textBox" id="ctl00_phOperationsBar_ucStartPeriodDate_hdnDate" name="ctl00$phOperationsBar$ucStartPeriodDate$hdnDate">
    
    
                            </td>
                            <td valign="middle" align="left" style="white-space: nowrap; padding-left: 5px;">                                            
                                <input type="image" title="Go Forward a Week" alt="Go Forward a Week" 
                                id="ctl00_phOperationsBar_imgForward" name="ctl00$phOperationsBar$imgForward" 
                                src="../../Content/images/icon/chevron_right.gif">
                            </td>
                            <td style="white-space: nowrap; text-align: right; padding-right: 10px;">
                                <img width="10px" alt="" style="border-width: 0px;" src="../../Content/images/common/space.gif">
                                Periods:                                    
                                &nbsp;                                                                                            
                                <select onchange="__doPostBack('__Page','lstNoOfPeriods_Change')" class="comboBox" id="ctl00_phOperationsBar_lstNoOfPeriods" name="ctl00$phOperationsBar$lstNoOfPeriods">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8" selected="selected">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
</select>
                                &nbsp;
                                <select onchange="__doPostBack('__Page','lstPeriodType_Change')" class="comboBox" id="ctl00_phOperationsBar_lstPeriodType" name="ctl00$phOperationsBar$lstPeriodType">
	<option value="0" selected="selected">Weeks</option>
	<option value="1">Months</option>
</select>   
                            </td>
                                 
                            
                                
                            
                        </tr>
                    </tbody></table>
                </td>    
            </tr>
        </tbody></table>

                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                    
                </tr>
            </tbody></table>
   
   <table width="100%" cellspacing="0" cellpadding="10" border="0">								
	<tbody><tr>
		<td>		
            

        
            <table width="100%">
                <tbody><tr>
                    <td>
                        

                                        
                        
    

<table cellspacing="0" cellpadding="0" border="0" style="padding-bottom: 5px;">
    <tbody><tr>
        <td valign="middle" align="left">
            0 Records to Display
        </td>
    </tr>
</tbody></table>
        
        <div style="overflow: hidden; position: relative; height: 253px; width: 1397px;" id="divResults">      
            <div style="overflow: hidden; width: 1397px;"><table width="100%" cellspacing="0" cellpadding="0" border="0" id="tblMain_Head" class="tableGrid" style="margin-bottom: 0px; padding-bottom: 0px; border-bottom-width: 0px; width: 1397px;"><thead><tr><td valign="middle" align="left" style="white-space: nowrap; width: 149px;" class="tableColumnTitle"><a title="Click to sort by this column" onclick="javascript:__doPostBack('__Page','SORT:ResourceCode')" href="#">Resource Code</a><img alt="" src="../../Content/images/icon/arrowup_grey.gif"></td><td valign="middle" align="left" style="white-space: nowrap; width: 203px;" class="tableColumnTitle"><a title="Click to sort by this column" onclick="javascript:__doPostBack('__Page','SORT:ResourceDescription')" href="#">Resource Description</a></td><td valign="middle" align="center" style="white-space: nowrap; width: 8px;" class="tableColumnTitle"></td><td valign="middle" align="right" style="white-space: nowrap; width: 119px;" class="tableColumnTitle"><span title="">10/18/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; width: 119px;" class="tableColumnTitle"><span title="">10/25/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; width: 107px;" class="tableColumnTitle"><span title="">11/1/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; width: 107px;" class="tableColumnTitle"><span title="">11/8/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; width: 119px;" class="tableColumnTitle"><span title="">11/15/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; width: 119px;" class="tableColumnTitle"><span title="">11/22/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; width: 119px;" class="tableColumnTitle"><span title="">11/29/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; width: 107px; padding-right: 5px;" class="tableColumnTitle"><span title="">12/6/2010</span></td></tr></thead></table></div><div style="border-bottom: 1px solid rgb(204, 204, 204); padding-bottom: 0px; margin-bottom: 0px; overflow: auto; width: 1397px; height: 0px;">
                <table cellspacing="0" cellpadding="0" border="0" class="tableGrid" id="tblMain" style="margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; width: 1397px;" aecisinitialised="true" aecminbodyheight="0" aeccontainersize="253:1397"><thead style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><tr style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;"><td valign="middle" align="left" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><a title="Click to sort by this column" onclick="javascript:__doPostBack('__Page','SORT:ResourceCode')" href="#" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">Resource Code</a></td><td valign="middle" align="left" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><a title="Click to sort by this column" onclick="javascript:__doPostBack('__Page','SORT:ResourceDescription')" href="#" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">Resource Description</a></td><td valign="middle" align="center" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">10/18/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">10/25/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">11/1/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">11/8/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">11/15/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">11/22/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">11/29/2010</span></td><td valign="middle" align="right" style="white-space: nowrap; line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;" class="tableColumnTitle"><span title="" style="line-height: 0px; height: 0px; margin-bottom: 0px; margin-top: 0px; padding-bottom: 0px; padding-top: 0px; border-bottom-width: 0px; border-top-width: 0px; visibility: hidden;">12/6/2010</span></td></tr></thead><tbody></tbody></table>
            </div>
        </div>
        
    

                        

                    </td>
                </tr>
            </tbody></table>
        
		</td>
	</tr>
</tbody></table>

</asp:Content>
