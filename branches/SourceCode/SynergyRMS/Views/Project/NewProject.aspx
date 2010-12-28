<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        Add New Project
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
            <tr>
                <td>
                    <div id="masterpage_divBody" class="formBody">
                        <table id="tabTablectl00_phTabstripHeader_tabMain" style="border: medium none; width: 100%;"
                            class="" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td id="ctl00_phTabstripHeader_tabMain_tdStretch" align="left">
                                        <div id="ctl00_phTabstripHeader_tabMain_divTabContainer" style="overflow: hidden;">
                                            <table id="ctl00_phTabstripHeader_tabMain_tabStrip" border="0" cellpadding="0" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                    </tr>
                                                    <tr>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace" width="5"
                                                                height="1">
                                                        </td>
                                                        <td class="tabSelected" nowrap="nowrap">
                                                            General
                                                        </td>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0" width="1"
                                                                height="1">
                                                        </td>
                                                        <td class="tabOff" onmouseover="this.className='tabOn';" onmouseout="this.className='tabOff';"
                                                            onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','PLANNING')" nowrap="nowrap">
                                                            Planning
                                                        </td>
                                                       
                                                        <td class="tabTail" align="left" valign="middle" width="100%" nowrap="nowrap">
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
                                        <table class="tabStripBase" border="0" cellpadding="0" cellspacing="0" width="100%"
                                            height="5">
                                            <tbody>
                                                <tr>
                                                    <td class="tabScrollEnabled" id="btnScrollLeft" align="left" valign="middle">
                                                        <img src="../../Content/images/common/arrowleft_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollLeft"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                    <td width="100%">
                                                    </td>
                                                    <td class="tabScrollEnabled" id="btnScrollRight" align="right" valign="middle">
                                                        <img src="../../Content/images/common/arrowright_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollRight"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table id="masterPage_tblFormContentRoot" style="border-collapse: collapse;" border="0"
                            cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td class="form">
                                        <table class="formContent">
                                            <tbody>
                                                <tr>
                                                    <td class="formDetailDarkNoPadding" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormHeader_img1" width="180"
                                                            height="1">
                                                    </td>
                                                    <td class="formDetailNoPadding" colspan="2" width="100%" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormHeader_img2" height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Code:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="ctl00$phFormContent$txtCode" id="ctl00_phFormContent_txtCode" class="textBox"
                                                            size="20" maxlength="20" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Description:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="ctl00$phFormContent$txtDescription" id="ctl00_phFormContent_txtDescription"
                                                            class="textBox" size="70" maxlength="70" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Active:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="ctl00$phFormContent$chkActive" id="ctl00_phFormContent_chkActive" class="checkBox"
                                                            checked="checked" type="checkbox">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Template:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="ctl00$phFormContent$chkIsTemplate" id="ctl00_phFormContent_chkIsTemplate"
                                                            class="checkBox" type="checkbox">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDarkHR" align="right" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                    <td class="formDetailHR" colspan="1" align="left" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Client:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxClient$txtValue" id="ctl00_phFormContent_pbxClient_txtValue"
                                                            class="textBox" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxClient_lnkSelect', 'ctl00_phFormContent_pbxClient_lnkRefresh', true);"
                                                            type="text">
                                                      
                                                        <div id="ctl00_phFormContent_pbxClient_divDescription" style="display: inline;">
                                                        </div>
                                                     
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Locale:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxLocale$txtValue" id="ctl00_phFormContent_pbxLocale_txtValue"
                                                            class="textBox" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxLocale_lnkSelect', 'ctl00_phFormContent_pbxLocale_lnkRefresh', true);"
                                                            type="text">
                                                       
                                                        <div id="ctl00_phFormContent_pbxLocale_divDescription" style="display: inline;">
                                                        </div>
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Project Level:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <select name="ctl00$phFormContent$cboProjectLevel" id="ctl00_phFormContent_cboProjectLevel"
                                                            class="comboBox" onchange=" if (confirm('This will cause the custom fields to be refreshed. Do you want to continue?'))         { __doPostBack('__Page','PROJECTLEVEL:CHANGE');        } else {  __doPostBack('__Page','REFRESHPAGE'); }">
                                                            <option selected="selected" value="Project">Project</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Location:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxLocation$txtValue" id="ctl00_phFormContent_pbxLocation_txtValue"
                                                            class="textBox" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxLocation_lnkSelect', 'ctl00_phFormContent_pbxLocation_lnkRefresh', true);"
                                                            type="text">
                                                        
                                                        <div id="ctl00_phFormContent_pbxLocation_divDescription" style="display: inline;">
                                                        </div>
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Project Manager:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxProjectManager$txtValue" id="ctl00_phFormContent_pbxProjectManager_txtValue"
                                                            class="textBox" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxProjectManager_lnkSelect', 'ctl00_phFormContent_pbxProjectManager_lnkRefresh', true);"
                                                            type="text">
                                                      
                                                        <div id="ctl00_phFormContent_pbxProjectManager_divDescription" style="display: inline;">
                                                        </div>
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Project Sponsor:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxProjectSponsor$txtValue" id="ctl00_phFormContent_pbxProjectSponsor_txtValue"
                                                            class="textBox" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxProjectSponsor_lnkSelect', 'ctl00_phFormContent_pbxProjectSponsor_lnkRefresh', true);"
                                                            type="text">
                                                       
                                                        <div id="ctl00_phFormContent_pbxProjectSponsor_divDescription" style="display: inline;">
                                                        </div>
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDarkHR" align="right" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                    <td class="formDetailHR" colspan="1" align="left" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Chargeable:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$chkChargeable" id="ctl00_phFormContent_chkChargeable"
                                                            class="checkBox" onclick="__doPostBack('__Page','REFRESHPAGE')" type="checkbox">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDarkHR" align="right" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                    <td class="formDetailHR" colspan="1" align="left" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        Start Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <select name="ctl00$phFormContent$dteStartDate$cmbMonth" id="ctl00_phFormContent_dteStartDate_cmbMonth"
                                                            class="comboBox">
                                                            <option selected="selected" value=""></option>
                                                            <option value="1">Jan</option>
                                                            <option value="2">Feb</option>
                                                            <option value="3">Mar</option>
                                                            <option value="4">Apr</option>
                                                            <option value="5">May</option>
                                                            <option value="6">Jun</option>
                                                            <option value="7">Jul</option>
                                                            <option value="8">Aug</option>
                                                            <option value="9">Sep</option>
                                                            <option value="10">Oct</option>
                                                            <option value="11">Nov</option>
                                                            <option value="12">Dec</option>
                                                        </select>
                                                        <select name="ctl00$phFormContent$dteStartDate$cmbDayUS" id="ctl00_phFormContent_dteStartDate_cmbDayUS"
                                                            class="comboBox">
                                                            <option selected="selected" value=""></option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select>
                                                        <input name="ctl00$phFormContent$dteStartDate$txtYear" id="ctl00_phFormContent_dteStartDate_txtYear"
                                                            class="textBox" size="6" maxlength="4" type="text">
                                                        <img src="../../Content/images/common/pick.gif" id="ctl00_phFormContent_dteStartDate_imgSelect" style="vertical-align: middle;
                                                            cursor: pointer;" alt="Select" title="Select" onclick="com_dateinput_showDatePick('/common/com_calendar.aspx?CalendarMode=','ctl00_phFormContent_dteStartDate','ctl00_phFormContent_dteStartDate_cmbDayUS','ctl00_phFormContent_dteStartDate_cmbMonth','ctl00_phFormContent_dteStartDate_txtYear');"
                                                            border="0">
                                                      
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        End Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <select name="ctl00$phFormContent$dteEndDate$cmbMonth" id="ctl00_phFormContent_dteEndDate_cmbMonth"
                                                            class="comboBox">
                                                            <option selected="selected" value=""></option>
                                                            <option value="1">Jan</option>
                                                            <option value="2">Feb</option>
                                                            <option value="3">Mar</option>
                                                            <option value="4">Apr</option>
                                                            <option value="5">May</option>
                                                            <option value="6">Jun</option>
                                                            <option value="7">Jul</option>
                                                            <option value="8">Aug</option>
                                                            <option value="9">Sep</option>
                                                            <option value="10">Oct</option>
                                                            <option value="11">Nov</option>
                                                            <option value="12">Dec</option>
                                                        </select>
                                                        <select name="ctl00$phFormContent$dteEndDate$cmbDayUS" id="ctl00_phFormContent_dteEndDate_cmbDayUS"
                                                            class="comboBox">
                                                            <option selected="selected" value=""></option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select>
                                                        <input name="ctl00$phFormContent$dteEndDate$txtYear" id="ctl00_phFormContent_dteEndDate_txtYear"
                                                            class="textBox" size="6" maxlength="4" type="text">
                                                       <img src="../../Content/images/common/pick.gif" id="Img1" style="vertical-align: middle;
                                                            cursor: pointer;" alt="Select" title="Select" onclick="com_dateinput_showDatePick('/common/com_calendar.aspx?CalendarMode=','ctl00_phFormContent_dteStartDate','ctl00_phFormContent_dteStartDate_cmbDayUS','ctl00_phFormContent_dteStartDate_cmbMonth','ctl00_phFormContent_dteStartDate_txtYear');"
                                                            border="0">
                                                    </td>
                                                </tr>
                                              
                                                <tr>
                                                    <td class="formDetailDarkNoPadding" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormFooter_img1" width="180"
                                                            height="1">
                                                    </td>
                                                    <td class="formDetailNoPadding" colspan="2" width="100%" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormFooter_img2" height="1">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="masterpage_divFoot" class="formFoot">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td align="left" valign="middle">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td align="left">
                                                        <input name="ctl00$phFormButtonBar$btnSave" id="ctl00_phFormButtonBar_btnSave" class="button"
                                                            value="Save" type="submit">                                                       
                                                        <input name="ctl00$phFormButtonBar$btnClose" id="ctl00_phFormButtonBar_btnClose"
                                                            class="button" value="Cancel" type="submit">
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
