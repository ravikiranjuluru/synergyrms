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
                                                         <label for="code">Code</label>Code:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                   
                                                        <input name="txtCode" id="code" class="textBox"
                                                            size="20" maxlength="20" type="text">
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                         <label for="txtprojectname">Please Enter Project name</label>Project Name:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                   
                                                        <input name="txtprojectname" id="txtprojectname" class="textBox"
                                                           type="text" style="width: 253px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="txtDescription">Description</label>Description:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="txtDescription" id="txtDescription"
                                                            class="textBox" size="70" maxlength="70" type="text">
                                                    </td>
                                                </tr>
                                                
                                               <%if (ViewData["ProTypes"]!= null){ %>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectLevel"></label>Project Type:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <%=Html.DropDownList("ddProTypes", (SelectList)ViewData["ProTypes"], new { @class = "comboBox" })%>
                                                    </td>
                                                </tr>
                                                <%} %>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectstartdate">Start Date</label>Start Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">  
                                                        <input name="projectstartdate" id="projectstartdate"
                                                            class="textBox" size="15" maxlength="4" type="text">
                                                        <img src="../../Content/images/common/pick.gif" id="calstartdate"
                                                            style="vertical-align: middle; cursor: pointer;" alt="Select" title="Select" border="0">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                       <label for="projectenddate">End Date</label> End Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                      
                                                        <input name="projectenddate" id="projectenddate"
                                                            class="textBox" size="15" maxlength="4" type="text">
                                                        <img src="../../Content/images/common/pick.gif" id="calenddate" style="vertical-align: middle;
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
                                                        <input name="btnSave" id="btnSave" class="button"
                                                            value="Save" type="submit">
                                                        <input name="btnClear" id="btnClear"
                                                            class="button" value="Clear" type="button" onclick="javascript:history.go(-1)">
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
                    
                    <div style="padding-left: 10px; padding-right: 10px;"></div>
                </td>
            </tr>
            
        </tbody>
    </table>
    
    <script>
        function GoBack() {
            window.location(history - 1);
        }
    </script>
</asp:Content>
