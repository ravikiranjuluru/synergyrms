<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
  <div id="divTabStrip" style="overflow: hidden;">

      <%var isAdmin = false;
        isAdmin = HttpContext.Current.User.IsInRole("Admin");  
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
    <script type="text/javascript" src="../../Scripts/Macdoc/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/spook.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/jquery.jqDock.min.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/macdoc.js"></script>
  <!-- end mac doc menu-->  
   <!-- mac doc menu-->
<script type="text/javascript">
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
</script>
<!-- end mac doc menu-->
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
   
   
   
  </div>
