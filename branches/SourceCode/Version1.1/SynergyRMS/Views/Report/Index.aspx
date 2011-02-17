<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Report Home</h2>

<div class="outer">
                    <div class="boxtitle">
                        <table style="background-color: white;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img id="img3" src="../../Content/images/common/manage_projects.gif" alt="">
                                    </td>
                                    <td>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="td2" class="BoxTitle" 
                                                        style="background-color: rgb(255, 255, 255); 
                                                        height: 24px; 
                                                        padding-left: 4px; padding-right: 5px;">                                                   
                                                        Reports
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="t">
                        <div class="b">
                            <div class="l">
                                <div class="r">
                                    <div class="bl">
                                        <div class="br">
                                            <div class="tl">
                                                <div class="tr">
                                                    <div class="content">
                                                        <style type="text/css">
                                                            </style>
                                                    </div>
                                                    <style type="text/css">

                                                            </style>
                                                    <table style="padding-left: 10px; width: 100%;">
                                                        <tbody>
                                                            <tr>
                                                                <td style="padding-left: 10px;">
                                                                    <table id="Table1" style="width: 100%;">
                                                                        <tbody>
                                                                            <tr id="Tr8">
                                                                                <td padding-left="6px" width="5%">
                                                                                        &nbsp;</td>
                                                                                <td>
                                                                                        &nbsp;</td>
                                                                            </tr>
                                                                            <tr id="Tr8">
                                                                                <td padding-left="6px" width="5%">
                                                                                    <a id="A8" href="#">&nbsp;</a></td>
                                                                                <td>
                                                                                    <a id="A8" href="#"></a>
                                                                                      <%--      <a id="A9" title="Click here to Add a New Project" href="../Project/NewProject"><img src="../../Content/images/common/newproject.png" id="Img13" 
                                                                                            title="Click for more information">New Project</a>--%><a id="Report" title="Click here to View Report" href="../../Reports/Project_Resources.aspx" ><img src="../../Content/images/common/cross.gif" id="Img18" title="Click for more information" />Project Resources Report</a>
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="Tr9">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A10" title="Click here to View Report" href="../../Reports/ResourceAllocation.aspx" target="_blank">
                                                                                    <img src="../../Content/images/common/cross.gif" id="Img1" title="Click for more information" />Resource Allocation Report</a>
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="Tr2">
                                                                                <td padding-left="6px" width="5%">
                                                                                </td>
                                                                                <td>
                                                                                    <a id="A3" title="Click here to View Report" href="../../Reports/ViewProjectByResources.aspx" target="_blank">
                                                                                    <img src="../../Content/images/common/cross.gif" id="Img2" title="Click for more information" />Resource Detail Report</a>
                                                                                </td>
                                                                            </tr>
                                                                             <%-- 
                                                                                <tr id="Tr12">
                                                                                    <td padding-left="6px" width="5%">
                                                                                        <%--<img src="../../Content/images/common/cross.gif" id="Img17" title="Click for more information" />--%>
                                                                                   <%-- </td>
                                                                                   <td>
                                                                                   
                                                                                        <a id="A13" title="Click here to Create a Project Status Report" href="../Report/Index">
                                                                                          <img src="../../Content/images/common/ReportsMain.jpg" id="Img4" 
                                                                                            title="Click for more information" />  Reports</a>
                                                                                    </td>
                                                                                </tr>--%>
                                                                            
                                                                            
                                                                                 <tr id="Tr1">
                                                                                     <td padding-left="6px" width="5%">
                                                                                        &nbsp;
                                                                                     </td>
                                                                                     <td>
                                                                                        
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


<br />
<%--<a id="A1" href="../../Reports/ResourceAllocation.aspx" target="_blank">Resource Allocation</a>--%>
<br/>
<%--<a id="A2" href="../../Reports/ViewProjectByResources.aspx" target="_blank">Resource Detail Report</a>
--%>
</asp:Content>
