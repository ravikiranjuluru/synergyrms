<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="formContainer" id="masterpage_divMain">
        <div class="formHead" id="masterpage_divHead">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
                <tbody>
                    <tr>
                        <td valign="middle" align="left">
                            Add New Department
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
                                                                <img height="1" width="5" id="ctl00_phTabstripHeader_tabMain_imgTabSpace" src="/../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" class="tabSelected">
                                                                General Info
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
                                                                src="../../Content/images/icon/arrowleft_grey.gif">
                                                        </td>
                                                        <td width="100%">
                                                        </td>
                                                        <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
                                                            <img align="middle" style="display: none;" id="ctl00_phTabstripHeader_tabMain_imgScrollRight"
                                                                src="../../Content/images/icon/arrowright_grey.gif">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <% using (Html.BeginForm("Department", "Resource"))
                               { %>
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;"
                                id="masterPage_tblFormContentRoot">
                                <tbody>
                                    <tr>
                                        <td class="form">
                                            <table class="formContent">
                                                <tbody>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            View Department
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail" style="width: 211px">
                                                            <select name="ctl00$phFormContent$cboProjectLevel" id="projectLevel" class="comboBox">
                                                                <option selected="selected" value="Select">Select</option>
                                                                <option value="Top">Department 1</option>
                                                                <option value="Medium">Department 2</option>
                                                                <option value="Low">Department 3</option>
                                                            </select>
                                                            &nbsp;&nbsp;
                                                            <input type="submit" value="View" class="button" id="View" name="btnView" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="../../Content/images/common/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" colspan="2" class="formDetailNoPadding">
                                                            <img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="../../Content/images/common/space.gif">
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
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtDeptCode">
                                                                Code:</label>
                                                            Code:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail" style="width: 211px">
                                                            <input type="text" maxlength="20" size="20" class="textBox" id="txtDeptCode" name="txtDeptCode">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtDeptName">
                                                                Name:</label>
                                                            Name:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail" style="width: 211px">
                                                            <input type="text" maxlength="20" size="20" class="textBox" id="txtDeptName" name="txtDeptName">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtDeptDesc">
                                                                Description</label>Description:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail" style="width: 211px">
                                                            <input type="text" maxlength="70" size="70" class="textBox" id="txtDeptDesc" name="txtDeptDesc">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="manager">
                                                                Manager</label>Manager:
                                                        </td>
                                                        <td valign="top" align="left" class="formDetail" style="width: 211px">
                                                            <input type="text" checked="checked" class="textBox" id="manager" name="ctl00$phFormContent$chkActive">
                                                        </td>
                                                    </tr>
                                                    <%--<tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormFooter_img1" src="../../Content/images/common/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" colspan="2" class="formDetailNoPadding">
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
                                                            <input type="submit" value="Save" class="button" id="btnSave" name="btnSave" onclick="return validateForm()" />&nbsp;&nbsp;
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <script language="javascript">
                            function validateForm() {
                                var a = document.forms[0]["txtDeptCode"].value

                                if (a == null || a == "") {
                                    alert("Please enter Department Code");
                                    return false;
                                }

                                var b = document.forms[0]["txtDeptName"].value

                                if (b == null || b == "") {
                                    alert("Please enter Department Name");
                                    return false;
                                }

                                var c = document.forms[0]["manager"].value

                                if (c == null || c == "") {
                                    alert("Please enter Manager Name");
                                    return false;
                                }
                            }
                        </script>

                        <%} %>
                        <div style="padding-left: 10px; padding-right: 10px;">
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
