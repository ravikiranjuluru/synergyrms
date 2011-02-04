<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit User Info</title>
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" />
    <link id="lnkStyle" rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" />
    
</head>
<body>
    <% using (Html.BeginForm("EditUser", "Resource"))
       {
           if (ViewData["EditUser"] != null)
           {
               MembershipUser edituser = (MembershipUser)ViewData["EditUser"];
               ProfileCommon Userprofile = Profile.GetProfile(edituser.UserName);
               string userkey = edituser.ProviderUserKey.ToString();
                %>
                <input type="hidden" name="hdnid" value="<%=userkey%>">
    <div class="formBody" id="masterpage_divBody">
        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;"
            id="masterPage_tblFormContentRoot">
            <tbody>
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
                    <td class="form">
                        <table class="formContent">
                            <tbody>
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        First Name:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                        <input type="text" maxlength="70" size="70" class="textBox"
                                         id="txtfirstname" name="txtfirstname" value="<%=Userprofile.FirstName%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                       Last Name:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                        <input type="text" maxlength="70" size="70" class="textBox" id="txtlastname" 
                                        name="txtlastname" value="<%=Userprofile.LastName%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        Email Address:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                        <input type="text" maxlength="70" size="70" class="textBox" 
                                        id="txtemail" name="txtemail" value="<%=edituser.Email%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        Telephone:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                        <input type="text" maxlength="30" size="30" class="textBox" id="txtphone" 
                                        value="<%=Userprofile.Phone%>" name="txtphone">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        User Name:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                        <input type="text" maxlength="70" size="70" class="textBox" 
                                        id="txtusername" name="txtusername" disabled="disabled" value="<%=edituser.UserName%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        <label for="txtpwd">
                                        </label>
                                        Reset Password:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                         <%=Html.ActionLink("Reset Password", "ResetPassword", "Resource", new { @id = edituser.UserName }, null)%>   
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
                                        <input type="submit" value="Save" class="button" id="btnSave" name="btnSave">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <%}
      } %>
</body>
</html>
