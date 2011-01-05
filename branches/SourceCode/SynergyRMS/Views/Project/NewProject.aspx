<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

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
    

	

  <script>
      $(document).ready(function() {
          $("#projectstartdate").datepicker();
      });
      $(document).ready(function() {
          $("#projectenddate").datepicker();
      });

  </script>

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
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace"
                                                                width="5" height="1">
                                                        </td>
                                                        <td class="tabSelected" nowrap="nowrap">
                                                            General
                                                        </td>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0"
                                                                width="1" height="1">
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
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormHeader_img1"
                                                            width="180" height="1">
                                                    </td>
                                                    <td class="formDetailNoPadding" colspan="2" width="100%" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormHeader_img2"
                                                            height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                         <label for="code">Code</label>Code:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                   
                                                        <input name="txtCode" id="code" class="textBox"
                                                            size="20" maxlength="20" type="text">
                                                           

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="description">Description</label>Description:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="txtDescription" id="description"
                                                            class="textBox" size="70" maxlength="70" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="active"></label>Active:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="ctl00$phFormContent$chkActive" id="active" class="checkBox"
                                                            checked="checked" type="checkbox">
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
                                                        <label for="client">Client</label>Client:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxClient$txtValue" id="client"
                                                            class="textBox" type="text">
                                                        <div id="ctl00_phFormContent_pbxClient_divDescription" style="display: inline;">
                                                        </div>
                                                    </td>
                                                </tr>
                                               
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectLevel"></label>Project Level:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <select name="ctl00$phFormContent$cboProjectLevel" id="projectLevel"
                                                            class="comboBox">
                                                            <option selected="selected" value="Select">Select</option>
                                                            <option value="Top">Top</option>
                                                            <option value="Medium">Medium</option>
                                                            <option value="Low">Low</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="location">Location</label>Location:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxLocation$txtValue" id="location"
                                                            class="textBox" type="text">
                                                        <div id="ctl00_phFormContent_pbxLocation_divDescription" style="display: inline;">
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectManger">Project Manager</label>Project Manager:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxProjectManager$txtValue" id="projectManger"
                                                            class="textBox" type="text">
                                                        <div id="ctl00_phFormContent_pbxProjectManager_divDescription" style="display: inline;">
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                       <label for="projectSponser">Project Sponsor</label>Project Sponsor:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxProjectSponsor$txtValue" id="projectSponser"
                                                            class="textBox" type="text">
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
                                                    <td class="formDetailDarkHR" align="right" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                    <td class="formDetailHR" colspan="1" align="left" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectstartdate">Start Date</label>Start Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">                                                 
                                                        <input name="ctl00$phFormContent$dteStartDate$txtYear" id="projectstartdate"
                                                            class="textBox" size="15" maxlength="4" type="text">
                                                        <img src="../../Content/images/common/pick.gif" id="ctl00_phFormContent_dteStartDate_imgSelect"
                                                            style="vertical-align: middle; cursor: pointer;" alt="Select" title="Select" border="0">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                       <label for="projectenddate">End Date</label> End Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                      
                                                        <input name="ctl00$phFormContent$dteEndDate$txtYear" id="projectenddate"
                                                            class="textBox" size="15" maxlength="4" type="text">
                                                        <img src="../../Content/images/common/pick.gif" id="Img1" style="vertical-align: middle;
                                                            cursor: pointer;" alt="Select" title="Select" border="0">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDarkNoPadding" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormFooter_img1"
                                                            width="180" height="1">
                                                    </td>
                                                    <td class="formDetailNoPadding" colspan="2" width="100%" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormFooter_img2"
                                                            height="1">
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
                                                            class="button" value="Cancel" type="reset">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    
                    <div style="padding-left: 10px; padding-right: 10px;"></div>
                </td>
            </tr>
            
        </tbody>
    </table>
</asp:Content>
