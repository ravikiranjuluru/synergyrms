<%--<%@ Control Language="C#" AutoEventWireup="true" 
 Inherits="System.Web.Mvc.ViewUserControl" %>--%>
 
 <%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="SynergyRMS.Models" %>
 
 <script src="Grid/GridE.js"> </script>
<link href="Styles/Examples.css" rel="stylesheet" type="text/css" />


<div style="width: 100%; height: 99%">

<% 
    List<PM_ProjectResources> listResorce = (List<PM_ProjectResources>)ViewData["LoadResourceList"];
    Session["LoadResourceListDisplay"] = listResorce;
%>


    <bdo debug='1' 
    layout_url="Gantt/GridLayout.aspx" 
    data_url="Gantt/GridData.aspx"
        upload_url="Gantt/GridUpload.aspx" 
        upload_format="Internal" 
        upload_data="TGData"
        export_url="Framework/Export.aspx" 
        export_data="TGData" 
        export_param_file="Grid.xls">
    </bdo>
</div>
