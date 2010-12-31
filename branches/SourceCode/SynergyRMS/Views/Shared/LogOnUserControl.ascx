<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
        Welcome <b><%= Html.Encode(Page.User.Identity.Name) %></b>!
        <a href="/Account/LogOff" id="popup">[ Log Off]</a>
        
        
         <table id="Table1" class="agnav_defaultmenu" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <div>
                                            <table border="0" cellpadding="0" cellspacing="0" style="margin-left: auto;">
                                                <tr>
                                                    <td id="Td2" class="item level1" onmouseenter="this.className += ' hover';"
                                                        onmouseleave="this.className = this.className.replace(' hover', '');">
                                                        <a class="link arrow" href="#"><span class="text ">My Account</span> </a>
                                                        <div class="slide">
                                                            <table border="0" cellpadding="0" cellspacing="1">
                                                                <tr>
                                                                    <td class="item level2">
                                                                        <a class="link" href="#" onclick="lnkMyAccount_onClick();">
                                                                            <span class="text">Login</span> </a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="item level2">
                                                                        <div class="hr" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="item level2">
                                                                        <a class="link" href="#" onclick="lnkMyAccount_onClick();">
                                                                            <span class="text">Change Password</span> </a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="item level2">
                                                                        <a class="link" href="#" onclick="lnkMyAccount_onClick();">
                                                                            <span class="text">Register</span> </a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
<%
    }
    else {
%> 
        <a href="/Account/Login" id="popup">[Log On]</a>
        
         
<%
    }
%>
 <%--[ <%= Html.ActionLink("Log On", "LogOn", "Account") %> ]--%>