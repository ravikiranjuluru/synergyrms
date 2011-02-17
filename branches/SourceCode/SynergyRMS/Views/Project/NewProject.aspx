<%@ Page Title="" UICulture="en" Culture="en-US" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
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

    <script type="text/javascript">


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
                        <% using (Html.BeginForm("NewProject", "Project"))
                           { %>
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
                                                    <td valign="middle" align="right" class="formDetailDark">
                                                        &nbsp;
                                                    </td>
                                                    <td valign="middle" align="left">
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
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="code">
                                                            Code</label>Code:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="txtCode" id="code" class="textBox" size="20" maxlength="20" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="txtprojectname">
                                                            Please Enter Project name</label>Project Name:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="txtprojectname" id="txtprojectname" class="textBox" type="text" style="width: 253px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="txtDescription">
                                                            Description</label>Description:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <%--  <input name="txtDescription" id="txtDescription"
                                                            class="textBox" size="70" maxlength="70" type="text">--%>
                                                        <textarea id="txtDescription" name="txtDescription" cols="160" rows="10" class="textBox">
                                                        </textarea>
                                                    </td>
                                                </tr>
                                                <%if (ViewData["ProTypes"] != null)
                                                  { %>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectLevel">
                                                        </label>
                                                        Project Type:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <%--<%=Html.DropDownList("ddProTypes", (SelectList)ViewData["ProTypes"], new { @class = "comboBox" })%>--%>
                                                        <%=Html.DropDownList("ddProTypes", (SelectList)ViewData["ProTypes"], new { @class = "comboBox" })%>
                                                    </td>
                                                </tr>
                                                <%} %>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectstartdate">
                                                            Start Date</label>Start Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="projectstartdate" id="projectstartdate" class="textBox" size="15" maxlength="4"
                                                            type="text">&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectenddate">
                                                            End Date</label>
                                                        End Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="projectenddate" id="projectenddate" class="textBox" size="15" maxlength="4"
                                                            type="text">&nbsp;
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
                                                        <input name="btnSave" id="btnSave" class="button" value="Save" type="submit" onclick="return validateForm()">
                                                        <input name="btnClear" id="btnClear" class="button" value="Clear" type="button" onclick="javascript:history.go(-1)">
                                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Reports/Project_Resources.aspx"
                                                            Visible="False">View Report</asp:HyperLink>
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
                            var a = document.forms[0]["code"].value

                            if (a == null || a == "") {
                                alert("Please enter Project Code");
                                return false;
                            }

                            var b = document.forms[0]["txtprojectname"].value

                            if (b == null || b == "") {
                                alert("Please enter Project Name");
                                return false;
                            }

                            var c = document.forms[0]["projectstartdate"].value

                            if (c == null || c == "") {
                                alert("Please select Project Start Date");
                                return false;
                            }
                            else {
                                if (isDate(c) == false) {
                                    return false
                                }
                            }

                            var d = document.forms[0]["projectenddate"].value

                            if (d == null || d == "") {
                                alert("Please select Project End Date");
                                return false;
                            }
                            else {
                                if (isDate(d) == false) {
                                    return false
                                }
                            }
                            return true
                        }

                        var dtCh = "/";
                        var minYear = 1900;
                        var maxYear = 2100;

                        function isInteger(s) {
                            var i;
                            for (i = 0; i < s.length; i++) {
                                var c = s.charAt(i);
                                if (((c < "0") || (c > "9"))) return false;
                            }
                            return true;
                        }

                        function stripCharsInBag(s, bag) {
                            var i;
                            var returnString = "";
                            for (i = 0; i < s.length; i++) {
                                var c = s.charAt(i);
                                if (bag.indexOf(c) == -1) returnString += c;
                            }
                            return returnString;
                        }

                        function daysInFebruary(year) {
                            return (((year % 4 == 0) && ((!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28);
                        }
                        function DaysArray(n) {
                            for (var i = 1; i <= n; i++) {
                                this[i] = 31
                                if (i == 4 || i == 6 || i == 9 || i == 11) { this[i] = 30 }
                                if (i == 2) { this[i] = 29 }
                            }
                            return this
                        }

                        function isDate(dtStr) {
                            var daysInMonth = DaysArray(12)
                            var pos1 = dtStr.indexOf(dtCh)
                            var pos2 = dtStr.indexOf(dtCh, pos1 + 1)
                            var strMonth = dtStr.substring(0, pos1)
                            var strDay = dtStr.substring(pos1 + 1, pos2)
                            var strYear = dtStr.substring(pos2 + 1)
                            strYr = strYear
                            if (strDay.charAt(0) == "0" && strDay.length > 1) strDay = strDay.substring(1)
                            if (strMonth.charAt(0) == "0" && strMonth.length > 1) strMonth = strMonth.substring(1)
                            for (var i = 1; i <= 3; i++) {
                                if (strYr.charAt(0) == "0" && strYr.length > 1) strYr = strYr.substring(1)
                            }
                            month = parseInt(strMonth)
                            day = parseInt(strDay)
                            year = parseInt(strYr)
                            if (pos1 == -1 || pos2 == -1) {
                                alert("The date Format should be : MM/DD/YYYY")
                                return false
                            }
                            if (strMonth.length < 1 || month < 1 || month > 12) {
                                alert("Please enter a Valid Month")
                                return false
                            }
                            if (strDay.length < 1 || day < 1 || day > 31 || (month == 2 && day > daysInFebruary(year)) || day > daysInMonth[month]) {
                                alert("Please enter a Valid Day")
                                return false
                            }
                            if (strYear.length != 4 || year == 0 || year < minYear || year > maxYear) {
                                alert("Please enter a Valid 4 digit Year between " + minYear + " and " + maxYear)
                                return false
                            }
                            if (dtStr.indexOf(dtCh, pos2 + 1) != -1 || isInteger(stripCharsInBag(dtStr, dtCh)) == false) {
                                alert("Please enter a Valid Date")
                                return false
                            }
                            return true
                        }
                    </script>

                    <%} %>
                    <div style="padding-left: 10px; padding-right: 10px;">
                    </div>
                </td>
            </tr>
        </tbody>
    </table>

    <script>
        function GoBack() {
            window.location(history - 1);
        }
    </script>

    </form>
</asp:Content>
