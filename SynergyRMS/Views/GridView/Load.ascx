<%@ Control Language="C#" AutoEventWireup="true" 
Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="SynergyRMS.Models" %>
<%@ Import Namespace="System.Web.Mvc" %>


<script src="Grid/GridE.js"> </script>
<link href="Styles/Examples.css" rel="stylesheet" type="text/css" />

<%
   
    if (ViewData["LoadProject"] != null)
    { PM_Projects project = (PM_Projects)ViewData["LoadProject"];
    int projectid = project.ProjectId;
         %>

<div style="width: 100%; height: 520px;">
 <%--<bdo debug="0" 
        layout_url="Gantt/GanttBasicDef.xml" 
        data_url="Gantt/GanttBasicDBData.aspx"
        upload_url="Gantt/GanttBasicDBUpload.aspx">
        </bdo>--%>
    <%
        string data_url = "Gantt/GanttBasicDBData.aspx?projectid=" + projectid;
        string upload_url = "Gantt/GanttBasicDBUpload.aspx?projectid=" + projectid;
         %>
        <bdo debug="0" 
        layout_url="Gantt/GanttBasicDef.xml" 
        data_url=<%= data_url %>
        upload_url=<%= upload_url%>>
        </bdo>
       
</div>
<%} %>
