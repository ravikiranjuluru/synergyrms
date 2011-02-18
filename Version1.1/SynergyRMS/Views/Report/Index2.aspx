<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
  <link type="text/css" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.8.6.custom.css" rel="stylesheet" />
      <link type="text/css" href="<%= ResolveUrl("~") %>Content/AeroWindow.css" rel="stylesheet" />
      <script type="text/javascript" src="<%= ResolveUrl("~") %>Scripts/jquery-1.4.2.min.js"></script>
      <script type="text/javascript" src="<%= ResolveUrl("~") %>Scripts/jquery-ui-1.8.1.custom.min.js"></script>
      <script type="text/javascript" src="<%= ResolveUrl("~") %>Scripts/jquery.easing.1.3.js"></script>
      <script type="text/javascript" src="<%= ResolveUrl("~") %>Scripts/jquery-AeroWindow.js"></script>

<h2>Report Home</h2>

 <style>
      * {
        margin: 0px;
        padding: 0px;
      }
     
      #LightboxTeaser {
        position: absolute;
        top: 50px;
        right: 300px;
        width: 350px;
        -moz-border-radius: 5px;
        background: white;
        padding: 20px;
        color: #222222
      }
      #LightboxTeaser a {
        color: blue;
      }
      #LightboxTeaser img {
        margin: 10px;
        border: 0px;
        float: left;
      }
      #LightboxTeaser p {
        margin-bottom: 15px;
      }
    </style>

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
                                                                                            title="Click for more information">New Project</a>--%>
                                                                                            <a id="Report" title="Click here to View Report" href="../../Reports/Project_Resources.aspx" target="_blank">
                                                                                            <img src="../../Content/images/common/cross.gif" id="Img18" title="Click for more information"  />Project Resources Report</a>
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
                                                                            
                                                                            
                                                                            
                                                                            <tr id="Tr1">
                                                                                <td padding-left="6px" width="5%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td>
                                                                                   
                                                                                     
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
    <div id="iconContainer">
        <div id="Firefoxicon">
            <img src="http://www.soyos.net/tl_files/demos/aero-window/images/DesktopIcon-Firefox.png">
        </div>
    </div>
    <div id="Firefoxapp" style="display: none;">
        <iframe src="http://www.google.com/firefox" width="100%" height="100%" style="border: 0px;"
            frameborder="0"></iframe>
        <div id="iframeHelper">
        </div>
    </div>
    
    <div id="Home">
        My Home</div>
    <div id="Homeapp" style="display: none;">
        <iframe src="../Account/Login" width="100%" height="100%" style="border: 0px;"
            frameborder="0"></iframe>
    </div>

    <script type="text/javascript">
       
        $('#Homeapp').AeroWindow({
                WindowTitle: 'Projects',
                WindowDesktopIconFile: '../../Content/images/common/Projects.png',
                WindowPositionTop: 'center',
                WindowPositionLeft: 'center',
                WindowStatus: 'closed',
                WindowOuterWidth: 900,
                WindowOuterHeight: 500

            });
      

    </script>
    
     <style>
     
      #iconContainer {
        position: absolute;
        top:      10px;
        left:     5px;
        width:    auto;
        height:   auto;
      }
      #iconContainer div {
        width:    70px;
        height:   70px;
        margin-bottom: 10px;
      }
      #soyos h2, #soyos h3, #soyos p, #soyos a, #soyos ul li {
        font-family: arial;
        color: white;
      }
      h3 {
        margin: 0px;
      }
      ul {
        margin: 0px; 
        padding-left: 20px; 
      }
      ul li, #soyos a{
        font-family: arial;
        font-size: 10px;
      }
      #soyos a {
      }
    </style>

</asp:Content>
