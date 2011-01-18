<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Test</title>
    
      <!-- mac doc menu-->
    <link rel="Stylesheet" type="text/css" href="../../Content/macdoc/macdoc.css" />
    <link rel="Stylesheet" type="text/css" href="../../Content/macdoc/spook.css" />
    <link rel="Stylesheet" type="text/css" href="../../Content/macdoc/spookSkin.css" />
    <script type="text/javascript" src="../../Scripts/Macdoc/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/spook.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/jquery.jqDock.min.js"></script>
    <script type="text/javascript" src="../../Scripts/Macdoc/macdoc.js"></script>
  <!-- end mac doc menu-->  
  
</head>
<body>

   <!-- mac doc menu-->
<script type="text/javascript">
    var opts =
    // horizontal Dock with images expanding downwards in the vertical axis...
  {align: 'top'
  // set the maximum minor axis (vertical) image dimension to 48px
  , size: 48
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
</body>
</html>
