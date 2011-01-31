<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<div id="masterpage_divHead" class="formHead">
    <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
            <tr>
                <td align="left" valign="middle">
                    Project Schedule
                </td>
            </tr>
        </tbody>
    </table>
    </div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
            <tr>
                <td>
                    <table class="dashboardOperationsBarOuter" cellpadding="0" cellspacing="0" width="100%">
                        <tbody>
                            <tr>
                                <td class="dashboardOperationsBar">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td align="left" valign="middle">
                                                    <!-- Toolbar Content Goes Here -->
                                                    <table border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td style="white-space: nowrap;" align="left">
                                                                    Project:
                                                       <select name="ctl00$phFormContent$cboProjectLevel" id="Select1"
                                                            class="comboBox">
                                                            <option value="Select">Select</option>
                                                            <option value="Project1" selected="selected">Project 1</option>
                                                            <option value="Project2">Project 2</option>
                                                            <option value="Project3">Project 3</option>
                                                        </select>
                                                         <%--<%=Html.DropDownList("feedbackcategory", (SelectList)ViewData["SectorList"], new { @class = "frmInputElements" })%>--%>
                                                                </td>
                                                                <td align="left">
                                                                    &nbsp;
                                                                </td>
                                                                <td id="td1" style="white-space: nowrap;" 
                                                                    align="left">
                                                                    <div id="div1" class="tabPopupMenu" onclick="this.style.cursor='pointer'; displayHierarchyPopup(event, 'tdMyProjects','divMyProjects','ifrmMyProjects');"
                                                                        style="z-index: 99; padding: 3px; overflow: auto; margin: 1em 0em 3em 3em; position: absolute;
                                                                        left: 0px; top: 0px; background-color: rgb(255, 255, 255); visibility: hidden;
                                                                        border: 1px solid rgb(153, 153, 153); width: 325px; max-height: 400px;">
                                                                        <table border="0" cellpadding="0" cellspacing="0">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <table border="0" cellpadding="2" cellspacing="0">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td class="normal" style="font-weight: bold;">
                                                                                                        <a href="">PROJECT1 - Demonstration
                                                                                                            Project </a>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    &nbsp;
                                                                    <img src="../../Content/images/common/space.gif" style="border-width: 0px;"
                                                                        alt="" width="3px" height="0px">
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                                
  <td style="padding-right: 0px;" align="right" valign="middle">
                                                    <table border="0px" cellpadding="0" cellspacing="1">
                                                        <tbody>
                                                            <tr>
                                                                <td style="white-space: nowrap;" align="right" valign="middle">
                                                                   
                                                                </td>
                                                                <td class="" style="padding: 0px; white-space: nowrap;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="padding-left: 2px; padding-right: 4px;" align="right" valign="middle">
                                                                    &nbsp;</td>
                                                                <td class="" style="padding-right: 10px;" align="right" valign="middle">
                                                                    &nbsp;</td>
                                                                <td class="" style="white-space: nowrap;" align="right" valign="middle">
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
                            <tr><td>
                            
                            
                            
                            
                                            
                            
                            
                            
                            
                            </td></tr>
                        </tbody>
                    </table>
                    <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                </td>
            </tr>
            <tr><td>
            <%Html.RenderPartial("Load"); %>
            </td></tr>
        </tbody>
    </table>
   
    
     

</asp:Content>
