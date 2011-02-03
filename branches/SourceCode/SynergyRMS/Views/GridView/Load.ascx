<%@ Control Language="C#" AutoEventWireup="true" 
Inherits="System.Web.Mvc.ViewUserControl" %>

<script src="Grid/GridE.js"> </script>
<link href="Styles/Examples.css" rel="stylesheet" type="text/css" />


<div style="width: 100%; height: 520px;">
    <%--<bdo debug="1" layout_url="Gantt/GanttBasicDef.xml" data_url="Gantt/GanttBasicDBData.aspx"
        upload_url="Gantt/GanttBasicDBUpload.aspx"></bdo>--%>
        <bdo debug="0" layout_url="Gantt/GanttBasicDef.xml" data_url="Gantt/GanttBasicDBData.aspx"
        upload_url="Gantt/GanttBasicDBUpload.aspx"></bdo>
       
</div>
