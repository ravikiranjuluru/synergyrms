<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <div class="formContainer" id="masterpage_divMain">
        <div class="formHead" id="masterpage_divHead">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
                <tbody>
                    <tr>
                        <td valign="middle" align="left">
                            Add New User
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
                            <table cellspacing="0" cellpadding="0" class="" style="border: medium none; width: 100%;"
                                id="tabTablectl00_phTabstripHeader_tabMain">
                                <tbody>
                                 <tr>
                                        <td align="left" id="Td1">
                                            <div style="overflow: hidden;" id="Div1">
                                                <table cellspacing="0" cellpadding="0" border="0" id="Table1">
                                                    <tbody>
                                                        
                                                        <tr>
                                                            <td class="tabSpace">
                                                                <img height="1" width="5" id="Img1" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" class="tabSelected">
                                                                Account Info
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="Img3" src="../../Content/images/common/space.gif">
                                                            </td>
                                                           <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','ROLES')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="Index">General Info</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="Img2" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace2" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','ROLES')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="AddRole">Roles</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace3" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','SKILLS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="AddSkill">Skills</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace5" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','INTERESTED PROJECTS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="InterestProjects">Interested Projects</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace7" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" width="100%" valign="middle" align="left" class="tabTail">
                                                                &nbsp;
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
                                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="../images/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" colspan="2" class="formDetailNoPadding">
                                                            <img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="../images/space.gif">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="code">User Name</label>User Name:
                                                             
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="20" size="20" class="textBox" 
                                                            id="code"
                                                                name="ctl00$phFormContent$txtCode">
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="description">Email</label>Email:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="70" size="70" class="textBox" 
                                                            id="description"
                                                                name="ctl00$phFormContent$txtDescription">
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                             <label for="resourceType"></label>Password:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                             <input type="password" class="textBox" 
                                                            id="Checkbox1" name="ctl00$phFormContent$chkActive">
                                                        </td>
                                                    </tr>
                                                    
                                                    
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="active"></label>Confirm Password:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="password" class="textBox" 
                                                            id="Password1" name="ctl00$phFormContent$chkActive">
                                                        </td>
                                                    </tr>
                                                   
                                                  
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormFooter_img1" src="../images/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" colspan="2" class="formDetailNoPadding">
                                                            <img height="1" id="ctl00_phFormContent_ucFormFooter_img2" src="../images/space.gif">
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
                                                            <input type="submit" value="Save" class="button" id="ctl00_phFormButtonBar_btnSave"
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
        
</asp:Content>
