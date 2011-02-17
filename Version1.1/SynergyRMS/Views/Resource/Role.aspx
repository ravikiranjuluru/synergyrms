<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" 
Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="SynergyRMS.Controllers" %>
<%@ Import Namespace="Microsoft.Web.Mvc"%>
<%@ Import Namespace="SynergyRMS.Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_page.css"
        type="text/css" />
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_table.css"
        type="text/css" />

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.js"></script>

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.dataTables.js"></script>
<script type="text/javascript">
    function lnkRolePermission_onClick(role) {
        AECWinPopup.open('LoadRolePermission?role=' + role, 550, 500, popupCallback, '', false);
    }
     
</script>

<% var currentusername = HttpContext.Current.User.Identity.Name.ToString();%>
    <div class="formContainer" id="masterpage_divMain">
        <div class="formHead" id="masterpage_divHead">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
                <tbody>
                    <tr>
                        <td valign="middle" align="left">
                            Add New Role
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
                                                                <img height="1" width="5" id="ctl00_phTabstripHeader_tabMain_imgTabSpace" src="/images/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" class="tabSelected">
                                                                General Info
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
                       <% using (Html.BeginForm("Role", "Resource"))
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
                                                    <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.addRole))
                                                      { %>
                                                    <tr>
                                                       
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="txtRole">
                                                                Please Enter Role name here</label>Role Name:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                        <input type="text" maxlength="30" size="30" class="textBox"
                                                             id="txtRole"
                                                                name="txtRole">
                                                           <%-- <% if (ViewData["editRole"] != null)
                                                               {
                                                                   var rolename = ViewData["EditRole"].ToString();
                                                            %>
                                                            <input type="text" maxlength="70" size="70" class="textBox" id="txtRole" name="txtRole"
                                                                style="width: 185px" value="<%=rolename %>" />
                                                            <%}
                                                               else
                                                               { %>
                                                            <input type="text"  class="textBox" id="txtRole" name="txtRole"
                                                                style="width: 185px" />
                                                            <%} %>--%>
                                                            &nbsp;<input type="submit" value="Save" class="button" id="btnSave" name="btnSave"/>
                                                        </td>
                                                       
                                                    </tr>
                                                    <%} %>
                                                    
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            &nbsp;
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                            <br /><br />
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            &nbsp;
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            &nbsp;
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                     <td valign="middle" align="right" class="formDetailDarkHR">
                                                            &nbsp;
                                                        </td>
                                                        <td valign="top" align="left" style="width:80%">
                                                           
                                                            
                                <%if (ViewData["roleList"] != null)
                                  { %>
                                <table id="tblRoles" class="display">
                                    <thead>
                                        <tr>
                                            <th id="rname" align="left" height="30" class="tableColumnTitle">
                                                <a href="#">Role Name
                                                    <img src="../../Content/images/icon/Sort-Icon.gif" width="7" height="10" border="0"
                                                        class="pdn-tp" alt="Sort by Role Name" border="0" title="Sort by Role Name" /></a>
                                            </th>
                                            <th id="Permission" align="left" class="tableColumnTitle">
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                           

                                            foreach (SelectListItem role in (SelectList)ViewData["roleList"])
                                            {
                                           
                                        %>
                                        <tr>
                                            <td headers="rname" class="oddrow-mdl" align="left">
                                                <%= role.Text%>
                                            </td>
                                            
                                            <td headers="email" class="oddrow-mdl" align="left" >
                                                <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.editRolePermission))
                                                  { %>
                                                <a class="link" onclick="lnkRolePermission_onClick('<%=role.Text%>');" title="Edit Roles Permissions"
                                                    href="#">Edit Permissions </a>
                                                    <%} %>
                                            </td>
                                        </tr>
                                        <%} %>
                                    </tbody>
                                </table>
                                <%}%>
                                                            
                                                           
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
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            &nbsp;
                                                        </td>
                                                        <td valign="middle" align="left" style="width: 80%">
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
                                                    
                                                    
                                                    
                                                    <%--<tr>
                                                        <td valign="top" align="right" class="formDetailDark">
                                                           <label for="txtNote"></label> Notes:
                                                        </td>
                                                        <td valign="top" align="left" class="formDetail">
                                                            <textarea rows="2" cols="62" class="textArea" 
                                                            id="txtNote" name="txtNote"></textarea>
                                                        </td>
                                                    </tr>--%>
                                                   
                                                   
                                                    
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
                        
                         <%} %>
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
                                                            &nbsp;
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
    
    <script>
        $(document).ready(function() {
        $('#tblRoles').dataTable({
                "bPaginate": true,
                "bLengthChange": true,
                "bFilter": true,
                "bSort": true,
                "bInfo": true,
                "bAutoWidth": true,
                "sPaginationType": 'full_numbers',
                //"bJQueryUI": true,
                'sDom': '<"top"lf>t<"clear"><"bottom"ip><"clear">'
            });
        });
    </script>
    

    <script type="text/javascript">

        function deleteConfirm() {
            if (confirm("Are you sure you want to delete this Role?")) {
                $('#msgsuccess').hide();
                $('#msgerror').hide();
                return true;
            }
            else {
                $('#msgsuccess').hide();
                $('#msgerror').hide();
                return false;
            }
        }

    </script>

</asp:Content>
