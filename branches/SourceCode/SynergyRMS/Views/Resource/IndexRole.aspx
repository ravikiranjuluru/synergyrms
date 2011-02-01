<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>
    
<%@ Import Namespace="SynergyRMS.Controllers" %>
<%@ Import Namespace="Microsoft.Web.Mvc"%>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="formContainer" id="masterpage_divMain">
        <div class="formHead" id="masterpage_divHead">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
                <tbody>
                    <tr>
                        <td valign="middle" align="left">
                            Add Resource to Role
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
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','GENERAL')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/Index">General Info</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0" src="/images/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" class="tabSelected">
                                                                Roles
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace3" src="/images/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','SKILLS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/AddSkill">Skills</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace4" src="/images/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','INTERESTED PROJECTS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/InterestProjects">Interested Projects</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace7" src="/images/space.gif">
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
                                        <td height="5" class="formDetailDarkNoPadding">
                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="../../Content/images/common/space.gif">
                                        </td>
                                        <td height="5" width="100%" class="formDetailNoPadding">
                                            <img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="../../Content/images/common/space.gif">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="middle" align="right" class="formDetailDark">
                                            Select User
                                        </td>
                                        <td valign="middle" align="left" class="formDetail" style="width: 211px">
                                            <%if (ViewData["UserList"] != null)
                                              { %>
                                            <table id="Table1" class="table">
                                                <thead>
                                                    <tr>
                                                        <th id="rolename" class="tableColumnTitle" width="219" align="left" height="30">
                                                            <strong>First Name</strong> <a href="#">
                                                                <img src="../../Content/images/icon/Sort-Icon.gif" width="7" height="10" border="0"
                                                                    class="pdn-tp" alt="Sort by Role Name" border="0" title="Sort by Role Name" /></a>
                                                        </th>
                                                        <th id="Th1" class="tableColumnTitle" width="219" align="left" height="30">
                                                            <strong>Last Name</strong> <a href="#">
                                                                <img src="../../Content/images/icon/Sort-Icon.gif" width="7" height="10" border="0"
                                                                    class="pdn-tp" alt="Sort by Role Name" border="0" title="Sort by Role Name" /></a>
                                                        </th>
                                                        <th id="Th2" class="tableColumnTitle" width="100" align="left" height="30">
                                                           
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%  foreach (MembershipUser user in (MembershipUserCollection)ViewData["Userlist"])
                                                        {
                                                            ProfileCommon Userprofile = Profile.GetProfile(user.UserName);
                                                            string keyid = user.ProviderUserKey.ToString();        
                                                    %>
                                                    <tr>
                                                        <td headers="ufname" class="tableRowDark" align="left" height="25">
                                                            <strong>
                                                                <%= Userprofile.FirstName%></strong>
                                                        </td>
                                                        <td headers="ufname" class="tableRowDark" align="left" height="25">
                                                            <strong>
                                                                <%= Userprofile.LastName%></strong>
                                                        </td>
                                                        <td headers="edit" align="left">
                                                            <a href="#"><strong>
                                                               <%--<%=Html.ActionLink("Edit", "EditUserRole", "ResourceController", new { @id = user.ProviderUserKey.ToString() }, "")%> --%>
                                                               <%--<%=Html.ActionLink<ResourceController>(c => c.EditUserRole(user.ProviderUserKey.ToString()), "Edit",null)%>--%>
                                                               <%= Html.ActionLink("Edit", "EditUserRole", "Resource")%>
                                                               
                                                            </strong></a>
                                                        </td>
                                                        <%--<td headers="Delete" class="evnrow-mdl" align="left">
                                                            <a href="#"><strong>
                                                                <%=Html.ActionLink<ResourceController>(c => c.Delete(user.ProviderUserKey.ToString()), "Delete", new { onclick = "return deleteConfirm();" })%>
                                                            
                                                            </strong></a>
                                                        </td>--%>
                                                    </tr>
                                                    <%} %>
                                                </tbody>
                                            </table>
                                            <%} %>
                                        </td>
                                    </tr>
     <% using (Html.BeginForm("AddRole", "Resource"))
           { %>
            <%if (ViewData["EditUser"] != null)
      {
          var editUsername = ViewData["EditUser"].ToString();
          bool[] permissionList = new bool[7];
          if (ViewData["PermissionList"] != null)
          {
              permissionList = (bool[])ViewData["PermissionList"];
          }
         %>
      
                                              
                         
                                    <tr>
                                        <td valign="middle" align="right" class="formDetailDark">
                                            <label for="resourceType">
                                            </label>
                                            Resource Type:
                                        </td>
                                        <td valign="middle" align="left" class="formDetail">
                                            <select class="comboBox" id="resourceType" name="ctl00$phFormContent$cboResourceType"
                                                style="width: 85px">
                                                <option value="1">Employee</option>
                                                <option value="2">Contractor</option>
                                                <option value="4" selected="selected">Role</option>
                                            </select>
                                            <input type="button" value="Add Roles" class="button" id="btnAddRoles" name="btnAddRoles"
                                                style="width: 85px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" align="right" class="formDetailDark">
                                            Roles:
                                        </td>
                                        <td valign="top" align="left" class="formDetail">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td class="style2">
                                                            <table cellspacing="0" cellpadding="0" style="width: 100%;" class="formTable" id="tblRoles">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="left" style="width: 20%;" class="formTableColumnTitle">
                                                                            Role
                                                                        </td>
                                                                        <td align="left" class="formTableColumnTitle" style="width: 159px">
                                                                            Description
                                                                        </td>
                                                                        <td align="left" class="formTableColumnTitle">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td align="left" class="formTableColumnTitle">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" style="width: 20%;">
                                                                            Developer
                                                                        </td>
                                                                        <td align="left" style="width: 159px">
                                                                            This is basic permission developer role
                                                                        </td>
                                                                        <td align="left">
                                                                            <a href="#">Edit</a>
                                                                        </td>
                                                                        <td align="left">
                                                                            <a href="#">Delete</a>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: left; vertical-align: middle;" class="style2">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            <table cellspacing="0" cellpadding="0" style="border: 0pt none; width: 100%;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="left">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                        <td align="right">
                                                                            &nbsp;
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
                                                        Add Project
                                                    </td>
                                                    <td>
                                                        <%if (permissionList[0])
                                                          { %>
                                                        <input type="checkbox" checked="checked" class="checkBox" id="chkProAdd" name="chkProAdd">
                                                        <%}
                                                          else
                                                          { %>
                                                        <input type="checkbox" class="checkBox" id="chkProAdd" name="chkProAdd">
                                                        <%} %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 165px">
                                                        Edit Project
                                                    </td>
                                                    <td>
                                                        <%if (permissionList[1])
                                                          { %>
                                                        <input type="checkbox" checked="checked" class="checkBox" id="chkProEdit" name="chkProEdit">
                                                        <%}
                                                          else
                                                          { %>
                                                        <input type="checkbox" class="checkBox" id="chkProEdit" name="chkProEdit">
                                                        <%} %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 165px">
                                                        Delete Project
                                                    </td>
                                                    <td>
                                                        <%if (permissionList[2])
                                                          { %>
                                                        <input type="checkbox" checked="checked" class="checkBox" id="chkProDelete" name="chkProDelete">
                                                        <%}
                                                          else
                                                          { %>
                                                        <input type="checkbox" class="checkBox" id="chkProDelete" name="chkProDelete">
                                                        <%} %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 165px">
                                                        Add new Task
                                                    </td>
                                                    <td>
                                                        <%if (permissionList[3])
                                                          { %>
                                                        <input type="checkbox" checked="checked" class="checkBox" id="chkTaskAdd" name="chkTaskAdd">
                                                        <%}
                                                          else
                                                          { %>
                                                        <input type="checkbox" class="checkBox" id="chkTaskAdd" name="chkTaskAdd">
                                                        <%} %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 165px">
                                                        Edit Task
                                                    </td>
                                                    <td>
                                                        <%if (permissionList[4])
                                                          { %>
                                                        <input type="checkbox" checked="checked" class="checkBox" id="chkTaskEdit" name="chkTaskEdit">
                                                        <%}
                                                          else
                                                          { %>
                                                        <input type="checkbox" class="checkBox" id="chkTaskEdit" name="chkTaskEdit">
                                                        <%} %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 165px">
                                                        Delete Task
                                                    </td>
                                                    <td>
                                                        <%if (permissionList[5])
                                                          { %>
                                                        <input type="checkbox" checked="checked" class="checkBox" id="chkTaskDelete" name="chkTaskDelete">
                                                        <%}
                                                          else
                                                          { %>
                                                        <input type="checkbox" class="checkBox" id="chkTaskDelete" name="chkAssgnPro">
                                                        <%} %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 165px">
                                                        Assign to a Project
                                                    </td>
                                                    <td>
                                                        <%if (permissionList[6])
                                                          { %>
                                                        <input type="checkbox" checked="checked" class="checkBox" id="chkAssgnPro" name="chkAssgnPro">
                                                        <%}
                                                          else
                                                          { %>
                                                        <input type="checkbox" class="checkBox" id="chkAssgnPro" name="chkAssgnPro">
                                                        <%} %>
                                                    </td>
                                                </tr>
                                            </table>
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
                        </div>
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
                                        <input type="submit" value="Save" class="button" id="btnSave" name="btnSave">&nbsp;
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
    
    <%} %>
    <div style="padding-left: 10px; padding-right: 10px;">
    </div>
    <%-- </td> </tr> </tbody> </table> </div>--%>
    <script>
        function deleteConfirm() {
            if (confirm("Are you sure you want to delete this Manager?")) {
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
