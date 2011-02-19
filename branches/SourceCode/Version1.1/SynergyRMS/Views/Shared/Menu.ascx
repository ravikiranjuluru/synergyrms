<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="SynergyRMS.Models" %>

  <div id="divTabStrip" style="overflow: hidden;">

      <%
        
        var isAdmin = false;
        isAdmin = HttpContext.Current.User.IsInRole("Admin");
        var currentusername = HttpContext.Current.User.Identity.Name.ToString();  
      %>

      <script type="text/javascript">

          function siteNavigation_selectTab(item) {

              if (item) {
                  if (typeof item == 'string') {
                      item = document.getElementById(item);
                  }

                  if (item) {
                      siteNavigation.doSelectItem(item, true);
                  }
              }
          }   

      </script>
      
         <!-- mac doc menu-->
  <%--  <link rel="Stylesheet" type="text/css" href="../../Content/macdoc/macdoc.css" />
    <link rel="Stylesheet" type="text/css" href="../../Content/macdoc/spook.css" />
    <link rel="Stylesheet" type="text/css" href="../../Content/macdoc/spookSkin.css" />--%>
   
   <%-- <script type="text/javascript" src="../../Scripts/Macdoc/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/spook.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/jquery.jqDock.min.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/macdoc.js"></script>--%>
  <!-- end mac doc menu-->  
   <!-- mac doc menu-->
<%--<script type="text/javascript">
    var opts =
    // horizontal Dock with images expanding downwards in the vertical axis...
    //top/middle/bottom 
  {align: 'middle'
  // set the maximum minor axis (vertical) image dimension to 48px
  , size: 25    //48
  // add labels..
  , labels: true
  // swap the GIF extension for PNG extension for the larger image...
  , source: function(i) { return this.src.replace(/gif$/, 'png'); }
};

    jQuery(document).ready(function($) {
        // Apply jqDock with no options...
        $('#menuDoc').jqDock(opts);
    });
</script>--%>
<!-- end mac doc menu-->
      
   
   
   
 <div id="divmenu">
          <table id="snTabbedUI" 
          class="agnav_default" border="0" cellpadding="0" cellspacing="0">
              <tr>
                  <td>
                 

                           
                  </td>
                  <td>
                      <div>
                          <table border="0" cellpadding="0" cellspacing="0" style="margin-left: auto;">
             <%--             <tr><td>
                                                      <div id="menuDoc" style="text-align: right">
<a href="#" class="myMacdocmenu"><img src="../../Content/images/Macdoc/Addressbook.png" alt="" title="Menu 1" /></a>
<a href="#" class="myMacdocmenu"><img src="../../Content/images/Macdoc/DVD-Player.png" alt="" title="Menu 1" /></a>
<a href="#" class="myMacdocmenu"><img src="../../Content/images/Macdoc/eMail.png" alt="" title="Menu 1" /></a>
<a href="#" class="myMacdocmenu"><img src="../../Content/images/Macdoc/Instant_Messaging.png" alt="" title="Menu 1" /></a>
<a href="#" class="myMacdocmenu"><img src="../../Content/images/Macdoc/Safari.png" alt="" title="Menu 1" /></a>
<a href="#" class="myMacdocmenu"><img src="../../Content/images/Macdoc/Terminal.png" alt="" title="Menu 1" /></a>
</div>
</td></tr>--%>
                              <tr>
                                  <td id="Td1" class="item level1">
                                      <a class="link " href="../Dashboard/Index"><span class="text ">Home</span> </a>
                                  </td>
                                <%--  <%if (isAdmin)
                                    { %>--%>
                                    <td class="item level1" >
                                    </td>
                                     <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProject))
                                       { %>
                                  <td id="DASHBOARD-PROJECT" class="item level1" onmouseenter="this.className += ' hover';"
                                      onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../Project/EditProject"><span class="text ">Project</span></a>
                                  </td>
                                  <%} %>
                                  <td class="item level1" >
                                    </td>
                                  <td id="Td2" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../Resource"><span class="text ">Resources</span> </a>
                                  </td>
                                  <td class="item level1" >
                                    </td>
                                    <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProjectSchedule))
                                      { %>
                                  <td id="Td6" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../GridView/Index"><span class="text ">Scheduling</span></a>
                                  </td>
                                  <%} %>
                                  <td class="item level1" >
                                    </td>
                                    <%if (SynergyService.isUserFunctionAllow(currentusername, SynergyConstents.viewProjectReports))
                                      { %>
                                  <td id="Td4" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../Report"><span class="text ">Reports</span></a>
                                  </td>
                                  <%} %>
                                   <td class="item level1" >
                                   &nbsp;&nbsp;
                                    </td>
                                    <td class="item level1" >
                                    </td>
                                 <%-- <%}
                                    else
                                    {%>--%>
                                 <%-- <td id="DASHBOARD-MYWORK" class="item level1" onmouseenter="this.className += ' hover';"
                                      onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../MyWork"><span class="text ">My Work</span> </a>
                                  </td>
                                  <td id="Td4" class="item level1">
                                      &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                  </td>--%>
                                 <%-- <%} %>--%>
                            
                               <%-- <td>
                                    <div id="menuDoc">
                                        <a href="#">
                                            <img src="../../Content/images/Macdoc/Addressbook.png" alt="" title="Menu 1" /></a>
                                        <a href="#">
                                            <img src="../../Content/images/Macdoc/DVD-Player.png" alt="" title="Menu 1" /></a>
                                        <a href="#">
                                            <img src="../../Content/images/Macdoc/eMail.png" alt="" title="Menu 1" /></a>
                                        <a href="#">
                                            <img src="../../Content/images/Macdoc/Instant_Messaging.png" alt="" title="Menu 1" /></a>
                                        <a href="#">
                                            <img src="../../Content/images/Macdoc/Safari.png" alt="" title="Menu 1" /></a>
                                        <a href="#">
                                            <img src="../../Content/images/Macdoc/Terminal.png" alt="" title="Menu 1" /></a>
                                    </div>
                                </td>
                            </tr>--%>
                            
                        </table>
                    </div>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
</div>
