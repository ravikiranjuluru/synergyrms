<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit User Info</title>
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" />
    <link id="lnkStyle" rel="stylesheet" 
    href="<%= ResolveUrl("~") %>Content/common/styles.css" />
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Site.css" type="text/css"/>
    
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
                        
                    
                        <% if ((ViewData["status"]) != null)
                           {
                               var status = ViewData["status"].ToString();
                               var msg = ViewData["msg"].ToString();
                        %>
                        <% if (status == "Success")
                           { %>
                        <div id="msgsuccess" class="success-msg">
                            <% if (ViewData["resetpwd"] != null)
                               {
                                   var pwd = ViewData["resetpwd"].ToString();
                                   %>
                            User new password is <strong><%=pwd%></strong>
                            <%}
                               else
                               {%>
                            <%= msg%>
                            
                            <%} %>
                            
                            </div>
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
                                        NIC:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                        <input type="text" maxlength="30" size="30" class="textBox" id="txtnic" 
                                        value="<%=ViewData["NIC"]==null?"":ViewData["NIC"].ToString()%>" name="txtnic" disabled="disabled">
                                          <input type="hidden" name="hdnic" value="<%=ViewData["NIC"]==null?"":ViewData["NIC"].ToString()%>">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        Role:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                       <%=Html.DropDownList("ddRoles", (SelectList)ViewData["RoleList"],new { @class = "comboBox" })%> 
                                    </td>
                                </tr>
                                    <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        Department:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                     <%if (ViewData["DepartmentList"] != null)
                                                          { %>
                                                            <%=Html.DropDownList("ddlDepartments", (SelectList)ViewData["DepartmentList"], new { @class = "comboBox" })%> 
                                                            
                                                            <%}
                                                          else
                                                          {
                                                              var name = "";
                                                          }
                                                              %>
                                                            
                                    
                                    
                                    </td>
                                </tr>
                                
                                
                                
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        <label for="txtpwd">
                                        </label>
                                        Reset Password:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                         <%=Html.ActionLink("Reset Password", "PasswordReset", "Resource", new { @id = edituser.ProviderUserKey }, null)%>   
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td valign="middle" align="right" class="formDetailDark">
                                        Effort:
                                    </td>
                                    <td valign="middle" align="left" class="formDetail">
                                        <input type="text" maxlength="30" size="30" class="textBox" id="Text1" 
                                        value="<%=ViewData["Effort"]==null?"":ViewData["Effort"].ToString()%>" name="txteffort">
                                          
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
                                        <input type="submit" value="Save" class="button" id="btnSave" name="btnSave" onclick="return validateForm()">
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
            var a = document.forms[0]["txtfirstname"].value

            if (a == null || a == "") {
                alert("Please enter First Name");
                return false;
            }

            var b = document.forms[0]["txtlastname"].value

            if (b == null || b == "") {
                alert("Please enter Last Name");
                return false;
            }

            var c = document.forms[0]["txtemail"].value

            if (c == null || c == "") {
                alert("Please enter Email Address");
                return false;
            }
            else {
                if (emailValidationCheck(c) == false) {
                    return false
                }
            }

            function emailValidationCheck(str) {

                var at = "@"
                var dot = "."
                var lat = str.indexOf(at)
                var lstr = str.length
                var ldot = str.indexOf(dot)
                if (str.indexOf(at) == -1) {
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(at) == -1 || str.indexOf(at) == 0 || str.indexOf(at) == lstr) {
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(dot) == -1 || str.indexOf(dot) == 0 || str.indexOf(dot) == lstr) {
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(at, (lat + 1)) != -1) {
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.substring(lat - 1, lat) == dot || str.substring(lat + 1, lat + 2) == dot) {
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(dot, (lat + 2)) == -1) {
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(" ") != -1) {
                    alert("Invalid E-mail ID")
                    return false
                }

                return true
            }
        }
    </script>
    
    <%}
      } %>
</body>
</html>
