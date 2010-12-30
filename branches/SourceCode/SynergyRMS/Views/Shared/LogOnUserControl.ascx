<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
        Welcome <b><%= Html.Encode(Page.User.Identity.Name) %></b>!
        <a href="/Account/LogOff" id="popup">[ Log Off]</a>
<%
    }
    else {
%> 
        <a href="/Account/Login" id="popup">[Log On]</a>
<%
    }
%>
 <%--[ <%= Html.ActionLink("Log On", "LogOn", "Account") %> ]--%>