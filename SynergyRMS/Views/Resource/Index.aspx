<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" 
Inherits="System.Web.Mvc.ViewPage" %>

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
                                        <td align="left" id="ctl00_phTabstripHeader_tabMain_tdStretch">
                                            <div style="overflow: hidden;" id="ctl00_phTabstripHeader_tabMain_divTabContainer">
                                                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_phTabstripHeader_tabMain_tabStrip">
                                                    <tbody>
                                                        <tr>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="Img1" src="../../Content/images/common/space.gif">
                                                            </td>
                                                                                                                     
                                                            
                                                            <td nowrap="nowrap" class="tabSelected">
                                                                General Info
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace2" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','ROLES')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/AddRole">Roles</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace3" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','SKILLS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/AddSkill">Skills</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace5" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','INTERESTED PROJECTS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/InterestProjects">Interested Projects</a>
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
                                                            
                                                        </td>
                                                        <td width="100%">
                                                        </td>
                                                        <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
                                                          
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                           <% using (Html.BeginForm("NewUser", "Resource"))
                              { %>
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
                                                            <img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="..../../Content/images/common/space.gif">
                                                        </td>
                                                    </tr>
                                                   <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            &nbsp;
                                                        </td>
                                                        <td valign="middle" align="left" style="width: 211px">
                                                            <% if ((ViewData["status"]) != null)
                                                               {
                                                                   var status = ViewData["status"].ToString();
                                                                   var msg = ViewData["msg"].ToString();
                                                        %>
                                                        <% if (status == "Success")
                                                           { %>
                                                        <div id="msgsuccess" class="success-msg">
                                                            <%= msg%></div>
                                                        <%} %>
                                                        <% if (status == "Error")
                                                           { %>
                                                        <div id="msgerror" class="error-msg">
                                                            <%= msg%></div>
                                                        <%} %>
                                                        <%} %>
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
                                                            <label for="txtfirstname">First Name</label>First Name:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="70" size="70" class="textBox" 
                                                            id="txtfirstname"
                                                                name="txtfirstname">
                                                        </td>
                                                    </tr>
                                                    
                                                     <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtlastname">Last Name</label>Last Name:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="70" size="70" class="textBox" 
                                                            id="txtlastname"
                                                                name="txtlastname">
                                                        </td>
                                                    </tr>
                                                    

                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtemail">Email Address</label>Email Address:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="70" size="70" class="textBox" 
                                                            id="txtemail"
                                                                name="txtemail">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                             <label for="telephone">Telephone</label>Telephone:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="30" size="30" class="textBox"
                                                             id="txtphone"
                                                                name="txtphone">
                                                        </td>
                                                    </tr>
                                                                                                         <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtusername">User Name</label>User Name:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="70" size="70" class="textBox" 
                                                            id="txtusername"
                                                                name="txtusername">
                                                        </td>
                                                    </tr>
                                                    
                                                   

                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtpwd"></label>Password:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="password" maxlength="30" size="30" 
                                                            class="textBox" id="txtpwd" name="txtpwd">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                             <label for="txtpwdconfirm"></label>Confirm Password:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="password" maxlength="30" size="30" class="textBox" id="txtpwdconfirm"
                                                                name="txtpwdconfirm">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="top" align="right" class="formDetailDark">
                                                           <label for="notes"></label> Notes:
                                                        </td>
                                                        <td valign="top" align="left" class="formDetail">
                                                            <textarea rows="2" cols="62" class="textArea" 
                                                            id="notes" name="notes"></textarea>
                                                        </td>
                                                    </tr>
                                                   
                                                   
                                                    
                                                    <tr id="ctl00_phFormContent_ucCustomFields_trCustom25">
                                                        <td valign="middle" align="right" style="padding-top: 4px; padding-bottom: 4px;"
                                                            class="formDetailDark" id="ctl00_phFormContent_ucCustomFields_tdCustomLabel25">
                                                            
                                                            Photograph:
                                                        </td>
                                                        <td valign="middle" colspan="1" style="padding-top: 4px; padding-bottom: 4px;" class="formDetail"
                                                            id="ctl00_phFormContent_ucCustomFields_tdCustomControl25">
                                                            <a id="ctl00_phFormContent_ucCustomFields_cfCustom25_lnkUploadDocument"
                                                             href="#">
                                                                [Upload File]</a>
                                                            
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormFooter_img1" src="../../Content/images/common/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" class="formDetailNoPadding">
                                                            <img height="1" id="ctl00_phFormContent_ucFormFooter_img2" src="../../Content/images/common/space.gif">
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
                                                            <input type="submit" value="Save" class="button" 
                                                            id="btnSave"
                                                                name="btnSave">
                                                           
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <%} %>
                        <div style="padding-left: 10px; padding-right: 10px;">
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
