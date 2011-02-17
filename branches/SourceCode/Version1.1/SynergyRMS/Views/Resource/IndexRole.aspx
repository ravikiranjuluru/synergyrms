<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>
    
<%@ Import Namespace="SynergyRMS.Controllers" %>
<%@ Import Namespace="Microsoft.Web.Mvc"%>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript">
//    function lnkAssignRole_onClick(userkey) {
//        AECWinPopup.open('AssignRoles?id=' + userkey, 300, 300, popupCallback, '', false);
//    }
    function lnkEditUser_onClick(userkey) {
        AECWinPopup.open('EditUser?id=' + userkey, 600,300, popupCallback, '', false);
    }
    
</script>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_page.css"
        type="text/css" />
            <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_table.css"
        type="text/css" />
<script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.js"></script>
<script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.dataTables.js"></script>
    
    <div class="formContainer" id="masterpage_divMain">
        <div class="formHead" id="masterpage_divHead">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
                <tbody>
                    <tr>
                        <td valign="middle" align="left">
                            Edit User
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
                                                                Edit Users
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace3" src="/images/space.gif">
                                                            </td>
                                                            <%--<td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','SKILLS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/AddSkill">Skills</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace4" src="/images/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','INTERESTED PROJECTS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="/Resource/InterestProjects">Interested Projects</a>
                                                            </td>--%>
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
                            <table width="100%" cellspacing="0" cellpadding="0" 
                            border="0" style="border-collapse: collapse;"
                                id="masterPage_tblFormContentRoot">
                                <tbody>
                                    <tr>
                                        <td height="5">
                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="../../Content/images/common/space.gif">
                                        </td>
                                       
                                    </tr>
                                    <tr>
                                        <td height="5">
                                            Current User list
                                        </td>
                                       
                                    </tr>
                                    <tr>
                                        <td height="5">
                                            <img height="1" width="180" id="Img3" src="../../Content/images/common/space.gif">
                                            <a href="#" title="Refresh the Project List" onclick="window.location.reload( true );">
                                   <img src="../../Content/images/common/menuitem_rollback.gif"   
                                    alt="Refresh the Project List" title="Refresh the Project List"/>Refresh
                                    </a>
                                        </td>
                                       
                                    </tr>
                                    <tr>
                                        <td height="5">
                                            <img height="1" width="180" id="Img4" src="../../Content/images/common/space.gif">
                                        </td>
                                       
                                    </tr>
                                    <tr>
                                        
                                        <td valign="middle" align="left">
                                          
                                          <%if (ViewData["UserList"] != null)
                                              { %>
                                              <p><br />
                            <table id="tbluser" width="100%" border="0" cellspacing="0" cellpadding="0" class="display">
                                <thead>
                                    <tr>
                                        <th id="uname" align="left" height="30" class="tableColumnTitleStart" 
                                            style="width: 25%">
                                            <a href="#">User Name
                                                <img src="../../Content/images/icon/Sort-Icon.gif" width="7" height="10" border="0"
                                                    class="pdn-tp" alt="Sort by User Name" border="0" title="Sort by Role Name" /></a>
                                        </th>
                                        <th id="fname" width="12%" align="left" class="tableColumnTitleStart">
                                            <a href="#">First Name</a>
                                        </th>
                                        <th id="lname" width="20%" align="left" class="tableColumnTitle">
                                            <a href="#">Last Name</a>
                                        </th>
                                        <th id="email" width="10%" align="left" class="tableColumnTitle">
                                            <a href="#">Email</a>
                                        </th>
                                        <th id="edit" width="2%">
                                        </th>
                                        <th id="Delete" width="2%">
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
                                        <td headers="uname" class="oddrow-mdl" align="left" height="12" 
                                            style="width: 25%">
                                            <%= user.UserName%>
                                        </td>
                                        <td headers="fname" class="oddrow-mdl" align="left" width="20%">
                                            <%= Userprofile.FirstName%>
                                        </td>
                                        <td headers="lname" class="oddrow-mdl" align="left" width="20%">
                                            <%= Userprofile.LastName%>
                                        </td>
                                        <td headers="email" class="oddrow-mdl" align="left" width="20%">
                                            <%= user.Email%>
                                        </td>
                                        <td headers="edit" class="evnrow-mdl" align="left" width="20%">
                                            <a class="link" href="#" onclick="lnkEditUser_onClick('<%= user.ProviderUserKey.ToString()%>');"
                                                title="Edit User Roles"><strong><span class="text">Edit User</span></strong>
                                            </a>
                                        </td>
                                        <td headers="Delete" class="evnrow-mdl" align="left" width="2%">
                                            <a href="#"><strong></strong></a>
                                        </td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                            <% }  %>
                                          </p>
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
       <script>
           $(document).ready(function() {
           $('#tbluser').dataTable({ //
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
    
</asp:Content>
