<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <div class="formContainer" id="masterpage_divMain">
        <div class="formHead" id="masterpage_divHead">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
                <tbody>
                    <tr>
                        <td valign="middle" align="left">
                            Role Permissions
                        </td>
                       
                    </tr>
                </tbody>
            </table>
        </div>
        

	
        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td>
                        <div class="formBody" id="masterpage_divBody">
                           <%-- <table cellspacing="0" cellpadding="0" class="" style="border: medium none; width: 100%;"
                                id="tabTablectl00_phTabstripHeader_tabMain">--%>
                              <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;"
                                id="tabTablectl00_phTabstripHeader_tabMain">
                                <tbody>
                                    <tr>
                                        <td align="left" id="ctl00_phTabstripHeader_tabMain_tdStretch">
                                            <div style="overflow: hidden;" id="ctl00_phTabstripHeader_tabMain_divTabContainer">
                                                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_phTabstripHeader_tabMain_tabStrip">
                                                    <tbody>
                                                        <tr>
                                                        <td class="tabSpace">
                                                                <img height="1" width="5" id="Img1" src="/images/space.gif">
                                                            </td>
                                                        <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','SKILLS')"
                                                        onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                        <a href="Role">General Info</a>
                                                    </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="5" id="ctl00_phTabstripHeader_tabMain_imgTabSpace" src="/images/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" class="tabSelected">
                                                                Permisions
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0" src="/images/space.gif">
                                                            </td>
                                                           
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table height="5" width="100%" cellspacing="0" cellpadding="0" border="0" class="tabStripBase">
                                                <tbody>
                                                    <tr>
                                                        <td valign="middle" align="left" id="btnScrollLeft" class="tabScrollEnabled">
                                                            <img align="middle" style="display: none;" id="ctl00_phTabstripHeader_tabMain_imgScrollLeft"
                                                                src="../images/arrowleft_grey.gif">
                                                        </td>
                                                        <td width="100%">
                                                        </td>
                                                        <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
                                                            <img align="middle" style="display: none;" id="ctl00_phTabstripHeader_tabMain_imgScrollRight"
                                                                src="../images/arrowright_grey.gif">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                          
                            
                             <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;"
                                id="masterPage_tblFormContentRoot">
                                <tbody>
                                    <tr>
                                        <td class="form">
                                            <table class="formContent">
                                                <tbody>
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            &nbsp;</td>
                                                        <td height="5" width="100%" class="formDetailNoPadding">
                                                            <img height="1" id="Img2" src="..../../Content/images/common/space.gif">
                                                        </td>
                                                    </tr>
                                                   
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                    </tr>
                                                    
                                                     <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtrole"></label>Role Name:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <select class="comboBox" 
                                                             id="Select1"
                                                                name="ctl00$phFormContent$cboResourceType">
                                                                <option value="1">Employee</option>
                                                                <option value="2">Contractor</option>
                                                                <option value="4" selected="selected">Role</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td valign="top" align="right" class="formDetailDark">
                                                           <label for="notes"></label> Notes:
                                                        </td>
                                                        <td valign="top" align="left" class="formDetail">
                                                            <textarea rows="2" cols="62" class="textArea" 
                                                            id="Textarea1" name="notes"></textarea>
                                                        </td>
                                                    </tr>
                                                   
                                                    <tr>
                                                        <td valign="top" align="right" class="formDetailDark">
                                                            <label for="notes">
                                                            </label>
                                                            Select Permission:
                                                        </td>
                                                        <td valign="top" align="left" class="formDetail">
                                                           <table style="width: 100%">
                                                                <tr>
                                                                    <td style="width: 165px">
                                                                        Add Project</td>
                                                                    <td>
                                                                       <input type="checkbox" checked="checked" class="checkBox" 
                                                            id="Checkbox7" name="ctl00$phFormContent$chkActive"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 165px">
                                                                        Edit Project</td>
                                                                    <td>
                                                                        <input type="checkbox" checked="checked" class="checkBox" 
                                                            id="Checkbox8" name="ctl00$phFormContent$chkActive"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 165px">
                                                                        Delete Project</td>
                                                                    <td>
                                                                        <input type="checkbox" checked="checked" class="checkBox" 
                                                            id="Checkbox9" name="ctl00$phFormContent$chkActive"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 165px">
                                                                          Add new Task</td>
                                                                    <td>
                                                                         <input type="checkbox" checked="checked" class="checkBox" 
                                                            id="Checkbox10" name="ctl00$phFormContent$chkActive"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 165px">
                                                                        Edit Task</td>
                                                                    <td>
                                                                        <input type="checkbox" checked="checked" class="checkBox" 
                                                            id="Checkbox11" name="ctl00$phFormContent$chkActive"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 165px">
                                                                        Delete Task</td>
                                                                    <td>
                                                                        <input type="checkbox" checked="checked" class="checkBox" 
                                                            id="Checkbox12" name="ctl00$phFormContent$chkActive"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 165px">
                                                                        Assign to a Project</td>
                                                                    <td>
                                                                        <input type="checkbox" checked="checked" class="checkBox" 
                                                            id="Checkbox13" name="ctl00$phFormContent$chkActive"></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                   
                                                     
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            <img height="1" width="180" id="Img3" src="../../Content/images/common/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" class="formDetailNoPadding">
                                                            <img height="1" id="Img4" src="../../Content/images/common/space.gif">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            
                        </div>
                        <div class="formFoot" id="masterpage_divFoot">
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td valign="middle" align="left">
                                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td align="left">
                                                            <input type="button" value="Save" class="button" id="ctl00_phFormButtonBar_btnSave"
                                                                name="ctl00$phFormButtonBar$btnSave">&nbsp;
                                                        </td>
                                                       
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="padding-left: 10px; padding-right: 10px;">
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
