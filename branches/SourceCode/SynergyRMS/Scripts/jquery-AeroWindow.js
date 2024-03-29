/*
 *
 * Windows 7 UI & Windows Aero for Websites - jQuery Plugin (v2.0)
 * Copyright 2010, Christian Goldbach
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * 
 * Project Website:
 * http://www.soyos.net/Windows_7_UI_and_Windows_Aero_for_Websites.html
 *
 *
 * SOYOS Online Solutions
 * http://www.soyos.net
 *
 * SOYOS Labs
 * http://www.soyos.net/labs.html
 *
 * SOYOS Help & Support
 * http://www.soyos.net/community/
 *
 * SOYOS on Facebook
 * http://facebook.com/soyos.net
 *
 *
 * Requires Easing Plugin for Window Animations:
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Date: 2010-12-05
 *
*/
(function($){
    var AeroWindowPlugin = function(element, options)
    {
      this.id      = element.id;
      var elem     = $(element);
      var obj      = this;
      var settings = $.extend(
      {
        WindowTitle:                      'Windows for jQuery',
        WindowDesktopIconFile:            '../../Content/images/icons/default.png',   
        WindowStatus:                     'window',      /* 'window', 'maximized', 'minimized', 'closed' */
        WindowPositionTop:                200,           /* Posible are pixels or 'center' */
        WindowPositionLeft:               100,           /* Posible are pixels or 'center' */
        WindowOuterWidth:                 300,           /* Only pixels */
        WindowOuterHeight:                300,           /* Only pixels */
        WindowMinWidth:                   100,           /* Only pixels */
        WindowMinHeight:                  100,           /* Only pixels */
        WindowDesktopIcon:                true,          /* true, false */
        WindowResizable:                  true,          /* true, false */
        WindowMaximize:                   true,          /* true, false */
        WindowMinimize:                   true,          /* true, false */
        WindowClosable:                   true,          /* true, false */
        LoadiFrameContentLater:           true,          /* true, false */
        WindowDraggable:                  true,          /* true, false */
        WindowAnimationSpeed:             500,             /*changed500*/
        WindowAnimation: 'easeOutCubic',                    /*easeOutCubic*/
        WindowElementID:                  this.id,
        // Special Aero Style Settings ----------------------------------------
        WindowTransparentAnimationSpeed:  300,
        WindowBorderWidth:                22,            /* do not change */
        WindowBorderHeight: 20,            /* 62do not change */
        WindowBorderMouseCursorSpacing:   25,            /* do not change */
        TaskbarHeight: 40            /*40 do not change */
      }, options || {});

      /*-----------------------------------------------------------------------
      Posible WindowAnimation:
      - easeInQuad
      - easeOutQuad
      - easeInOutQuad
      - easeInCubic
      - easeOutCubic
      - easeInOutCubic
      - easeInQuart
      - easeOutQuart
      - easeInOutQuart
      - easeInQuint
      - easeOutQuint
      - easeInOutQuint
      - easeInSine
      - easeOutSine
      - easeInOutSine
      - easeInExpo
      - easeOutExpo
      - easeInOutExpo
      - easeInCirc
      - easeOutCirc
      - easeInOutCirc
      - easeInElastic
      - easeOutElastic
      - easeInOutElastic
      - easeInBack
      - easeOutBack
      - easeInOutBack
      - easeInBounce
      - easeOutBounce
      - easeInOutBounce      
      -----------------------------------------------------------------------*/
      
      
      
      // ----------------------------------------------------------------------
      // Window HTML Wrapper --------------------------------------------------
      // ----------------------------------------------------------------------

      //Generate the new Window HTML-------------------------------------------
      var SourceContent = $(elem).html();

      //BTN ---
      if (settings.WindowMinimize){
        if (settings.WindowMaximize || settings.WindowClosable){
          var WinMinBtn = '<a href="#" class="win-min-btn"></a><div class="win-btn-spacer"></div>';
        } else {
          var WinMinBtn = '<a href="#" class="win-min-btn"></a>';
        }
      } else {
        var WinMinBtn   = '';
      }
      //BTN ---
      if (settings.WindowMaximize){
        if (settings.WindowClosable){
          var WinMaxBtn   = '<div class="WinBtnSet winmax"><a href="#" class="win-max-btn"></a><div class="win-btn-spacer"></div></div>';
          var WinRegBtn   = '<div class="WinBtnSet winreg"><a href="#" class="win-reg-btn"></a><div class="win-btn-spacer"></div></div>';
        } else {
          var WinMaxBtn   = '<div class="WinBtnSet winmax"><a href="#" class="win-max-btn"></a></div>';
          var WinRegBtn   = '<div class="WinBtnSet winreg"><a href="#" class="win-reg-btn"></a></div>';
        }
      } else {
        var WinMaxBtn   = '';
        var WinRegBtn   = '';
      }
      //BTN ---
      if (settings.WindowClosable){
        var WinCloseBtn   = '<a href="#" class="win-close-btn"></a>';
      } else {
        var WinCloseBtn   = '';
      }

      //BTN edge---
      if (settings.WindowMinimize || settings.WindowMaximize || settings.WindowClosable){
        var WinBtnLeftedge  = '<div class="win-btn-leftedge"></div>';
        var WinBtnRightedge = '<div class="win-btn-rightedge"></div>';
      } else {
        var WinBtnLeftedge  = '';
        var WinBtnRightedge = '';
      }

      //Set Window Position
      if(settings.WindowPositionTop == 'center'){
        settings.WindowPositionTop = ($(window).height()/2) - settings.WindowOuterHeight/2;
      }
      if(settings.WindowPositionLeft == 'center'){
        settings.WindowPositionLeft = ($(window).width()/2) - settings.WindowOuterWidth/2;
      }

      $(elem).css({'z-index': '5000', width: settings.WindowOuterWidth+'px', height: settings.WindowOuterHeight+'px', top: settings.WindowPositionTop+'px', left: settings.WindowPositionLeft+'px', position: 'absolute'});
      $(elem).addClass('AeroWindowContainer');
      $(elem).html(
        '<div class="AeroWindow">' +
        '  <table cellpadding="0" cellspacing="0" border="0">' +
        '    <tr>' +
        '      <td class="table-tl"></td>' +
        '      <td class="table-tm"></td>' +
        '      <td class="table-tr"></td>' +
        '    </tr>' +
        '    <tr>' +
        '      <td class="table-lm"></td>' +
        '      <td class="table-mm" align="right">' +
        '        <div class="title"><nobr><img src="'+settings.WindowDesktopIconFile+'"><span>'+settings.WindowTitle+'</span></nobr></div>' +
        '        <div class="buttons">' +
                   WinBtnLeftedge +
                   WinMinBtn +
                   WinMaxBtn +
                   WinRegBtn +
                   WinCloseBtn +
                   WinBtnRightedge +
        '        </div>' +
        '        <div class="table-mm-container" align="left">' +
        '          <div class="table-mm-content" style="width: '+(settings.WindowOuterWidth-settings.WindowBorderWidth)+'px; height: '+(settings.WindowOuterHeight-settings.WindowBorderHeight)+'px;">' +
                     SourceContent +
        '          </div>' +
        '        </div>' +
        '      </td>' +
        '      <td class="table-rm"></td>' +
        '    </tr>' +
        '    <tr>' +
        '      <td class="table-bl"></td>' +
        '      <td class="table-bm"></td>' +
        '      <td class="table-br"></td>' +
        '    </tr>' +
        '  </table>'+
        '</div>'
      );

      //Window Objects ------------------------------------------------------
      var WindowContainer        = $(elem);
      var Window                 = $(elem).find(".AeroWindow");
      var WindowContentContainer = $(elem).find(".table-mm-container");
      var WindowContent          = $(elem).find(".table-mm-content");
      var BTNMin                 = $(elem).find(".win-min-btn");
      var BTNMax                 = $(elem).find(".WinBtnSet.winmax");
      var BTNRes                 = $(elem).find(".WinBtnSet.winreg");
      var BTNClose               = $(elem).find(".win-close-btn");

      //iframe Bug handling
      if (WindowContainer.find('iframe').length > 0){
        WindowContent.addClass('loading');
        WindowContent.find('iframe').css('visibility', 'hidden');
        WindowContent.append('<div class="iframeHelper"></div>');
        WindowContainer.find('iframe').attr({src: $(elem).find('iframe').attr('src')});
        WindowContent.find('iframe').load(function() {
          WindowContent.removeClass('loading');
          WindowContent.find('iframe').css('visibility', 'visible');
        })
      }


      //Support Window Dragging -----------------------------------------------
      WindowContainer.draggable({
        distance: 3,
        /*containment: 'html',*/
        cancel: '.table-mm-content',
        start: function(){
          if (settings.WindowStatus == 'maximized' || 'minimized'){
            obj.ResizeWindow('restoreToMouse');
          }
          obj.FocusWindow();
          Window.find('.iframeHelper').css({'display': 'block'});
        },
        drag: function(){
          WindowTop  = -1*$(this).offset().top;
          WindowLeft = -1*$(this).offset().left;
          Window.css({backgroundPosition: WindowLeft+ 'px ' +WindowTop+ 'px'});
        },
        stop: function(){
          Window.find('.iframeHelper').css({'display': 'none'});
          WindowContainer.draggable({
            cursorAt: null
          });
        }
      });

      
      //Support Window Resizing -----------------------------------------------
      if (settings.WindowResizable){
        WindowContainer.resizable({
          minHeight: settings.WindowMinHeight,
          minWidth:  settings.WindowMinWidth,
          alsoResize: WindowContent,
          handles: 'n, e, s, w, ne, se, sw, nw',
          start: function(){
            WindowContentContainer.css('visibility', 'visible');
            Window.find('.iframeHelper').css({'display': 'block'});
            $(".AeroWindow").removeClass('active');
            Window.addClass('active');
            if (($('body').data('AeroWindowMaxZIndex')) == null){
              $('body').data( 'AeroWindowMaxZIndex' , WindowContainer.css('z-index'));
            }
            i = $('body').data('AeroWindowMaxZIndex');
            i++;
            WindowContainer.css('z-index', i);
            $('body').data( 'AeroWindowMaxZIndex' , WindowContainer.css('z-index'));
          },
          stop: function(){
            //saveWindowData();
            Window.find('.iframeHelper').css({'display': 'none'});
          }
        });
      }

      
      // ----------------------------------------------------------------------
      // Private Methods ------------------------------------------------------
      // ----------------------------------------------------------------------
      var getCurrentWindowSize = function()
      {
        height = $(elem).height();
        width  = $(elem).width();
      };
      var saveWindowData = function()
      {
        settings.WindowOuterHeight = WindowContainer.height();
        settings.WindowOuterWidth  = WindowContainer.width();
        settings.WindowTop         = WindowContainer.offset().top;
        settings.WindowLeft        = WindowContainer.offset().left;
      };

      
      // ----------------------------------------------------------------------
      // Public Object methods ------------------------------------------------
      // ----------------------------------------------------------------------
      this.get = function(key){
        return(settings[key]);
      }

      this.set = function(key,value){
        settings[key] = value;
      }

      this.RefreshIframeURL = function(){
        if (WindowContainer.find('iframe').length > 0){
          WindowContainer.find('iframe').attr({src: $(elem).find('iframe').attr('src')});
        }
      }
      
      this.FocusWindow = function(){
        $(".AeroWindow").removeClass('active');
        $(".AeroWindow").find('.iframeHelper').css({'display': 'block'});

        Window.find('.iframeHelper').css({'display': 'none'});
        Window.addClass('active');
        if (($('body').data('AeroWindowMaxZIndex')) == null){
          $('body').data( 'AeroWindowMaxZIndex' , WindowContainer.css('z-index'));
        }
        i = $('body').data('AeroWindowMaxZIndex');
        i++;
        WindowContainer.css('z-index', i);
        $('body').data( 'AeroWindowMaxZIndex' , WindowContainer.css('z-index'));
        //Taskbar Item
        $("#Taskbar .Taskbar-Item").removeClass('active');
        $("#Taskbar"+this.id).addClass('active');
        WindowContainer.css('display', 'block');
        $('#Taskbar'+this.id).css({display: 'block'});        
      }

      //Taskbar Item Handler --------------------------------------------------
      this.TaskbarHandler = function(){
        $("#Taskbar"+this.id).hover(function (){
          $(this).addClass('hover');  
        }, function (){
          $(this).removeClass('hover');  
        });
        $("#Taskbar"+this.id).mousedown(function (){
          $(this).find('img').css({
            marginTop: '2px',
            marginLeft: '2px'
          });  
        });
        $("#Taskbar"+this.id).mouseup(function (){
          $(this).find('img').css({
            marginTop: '0px',
            marginLeft: '0px'
          });  
        });
        $("#Taskbar"+this.id).click(function (){
          if (settings.WindowStatus == 'minimized'){
            if (settings.WindowStatusBefore == 'maximized') {
              obj.ResizeWindow('maximize');
            } else {
              obj.ResizeWindow('restore');
            }
          } else if (settings.WindowStatus == 'window' || settings.WindowStatus == 'maximized'){
            if ($('#'+obj.id).find('.AeroWindow').hasClass('active')) {
              obj.ResizeWindow('minimize');
            } else {
              obj.FocusWindow();
            }
          }
        });
      }
      //DesktopIcon Handler ---------------------------------------------------
      this.DesktopIconHandler = function(){
        $('#DesktopIcon'+this.id).hover(function (){
          if ($(this).hasClass('mouseoverclickedmouseout')) $(this).removeClass('mouseoverclickedmouseout');
          $(this).addClass('mouseover');
        }, function (){
          $(this).removeClass('mouseover');
          if ($(this).hasClass('mouseoverclicked')) $(this).addClass('mouseoverclickedmouseout');
        });

        $('#DesktopIcon'+this.id).click(function (){
          $('#DesktopIcons .DesktopIconContainer').removeClass('mouseoverclicked');
          $('#DesktopIcons .DesktopIconContainer').removeClass('mouseoverclickedmouseout');
          $(this).addClass('mouseoverclicked');
        });

        $('#DesktopIcon'+this.id).dblclick(function (){
          if (settings.WindowStatus == 'minimized'){
            obj.ResizeWindow('restore');
          } else if (settings.WindowStatus == 'window'){
            obj.FocusWindow();
          } else if (settings.WindowStatus == 'closed'){
            //Set First Window Status
            switch (settings.WindowStatusBefore){
              case 'window':
                obj.ResizeWindow('restore');
                break;
              case 'maximized':
                obj.ResizeWindow('maximize');
                break;
              case 'minimized':
                obj.ResizeWindow('minimize');
                break;
              default:
                break;
            }            
            $('#Taskbar'+element.id).clone(true).appendTo("#Taskbar");
            $('#Taskbar'+element.id).remove();
            obj.RefreshIframeURL();
          }
        });
      }
      
      
      //-----------------------------------------------------------------------
      //Resize Window----------------------------------------------------------
      //-----------------------------------------------------------------------
      this.ResizeWindow = function( NewSize, FocusWindow, WindowStatusBefore ){
        if (settings.WindowStatus == 'window'){
          saveWindowData();
        }
        settings.WindowStatusBefore = settings.WindowStatus;
        if (FocusWindow === undefined) {
          FocusWindow = true;
        }        
        if (FocusWindow == true) {
          obj.FocusWindow();
        }
        switch (NewSize){
          case 'transparent-on': //--------------------------------------------------
            WindowContentContainer.animate({
              opacity:  0.0}, {
              queue:    false,
              duration: settings.WindowTransparentAnimationSpeed
            });
            break;
          case 'transparent-off': //--------------------------------------------------
            WindowContentContainer.animate({
              opacity:  1.0}, {
              queue:    false,
              duration: settings.WindowTransparentAnimationSpeed
            });
            break;
          case 'minimize': //--------------------------------------------------
            $("#Taskbar"+this.id).removeClass('active');
            BTNMin.css('display', 'none');
            BTNRes.css('display', 'block');
            BTNMax.css('display', 'block');
            settings.WindowStatus = 'minimized';

            //Set new Window Position
            if ( $.browser.msie ) {
            } else {
              Window.animate({
                opacity:  'hide'}, {
                queue:    true,
                duration: settings.WindowAnimationSpeed,
                easing:   settings.WindowAnimation
              });
            }
            WindowContainer.animate({
              width:    settings.WindowMinWidth,
              height:   settings.WindowMinHeight,
              top:      -100+$('#Taskbar'+this.id).offset().top,
              left:     $('#Taskbar'+this.id).offset().left}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation,
              complete: function(){
                WindowContainer.css('display', 'none');
              }
            });
            WindowContent.animate({
              width:    settings.WindowMinWidth - settings.WindowBorderWidth,
              height:   settings.WindowMinHeight - settings.WindowBorderHeight}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation
            });
            WindowContainer.draggable({
              cursorAt: { cursor: "crosshair", top: settings.WindowBorderMouseCursorSpacing, left: (settings.WindowOuterWidth/2) }
            });
            WindowContainer.resizable('disable');
            break;            
          case 'maximize': //--------------------------------------------------
            BTNMin.css('display', 'block');
            BTNRes.css('display', 'block');
            BTNMax.css('display', 'none');
            if ( $.browser.msie ) {
            } else {
              Window.animate({
                opacity:  'show'}, {
                queue:    true,
                duration: settings.WindowAnimationSpeed,
                easing:   settings.WindowAnimation
              });
            }
            WindowContainer.draggable({ disabled: true });            
            WindowContainer.animate({
              width:    $(window).width(),
              height:   (ShowTaskbar == true ? $(window).height()-settings.TaskbarHeight : $(window).height()),
              top:      $(window).scrollTop(),
              left:     $(window).scrollLeft()}, {
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation
            });
            WindowContent.animate({
              width:    $(window).width()-settings.WindowBorderWidth,
              height:   (ShowTaskbar == true ? $(window).height()-settings.WindowBorderHeight-settings.TaskbarHeight : $(window).height()-settings.WindowBorderHeight)}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation,
              complete: function(){
                WindowContainer.resizable({ disabled: true });
                WindowContainer.draggable({ disabled: false });            
              }
            });
            WindowContainer.draggable({
              cursorAt: { cursor: "crosshair", top: settings.WindowBorderMouseCursorSpacing, left: (settings.WindowOuterWidth/2) }
            });
            settings.WindowStatus = 'maximized';
            break;
          case 'restore': //---------------------------------------------------
            BTNMin.css('display', 'block');
            BTNRes.css('display', 'none');
            BTNMax.css('display', 'block');
            settings.WindowStatus = 'window';
            Window.animate({
              opacity:  'show'}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation
            });
            if ( $.browser.msie ) {
              WindowContainer.animate({
                width:    settings.WindowOuterWidth,
                height:   settings.WindowOuterHeight,
                top:      settings.WindowTop + $(window).scrollTop(),
                left:     settings.WindowLeft + $(window).scrollLeft()}, {
                queue:    true,
                duration: settings.WindowAnimationSpeed,
                easing:   settings.WindowAnimation
              });
            } else {
              WindowContainer.animate({
                opacity:  1,
                width:    settings.WindowOuterWidth,
                height:   settings.WindowOuterHeight,
                top:      settings.WindowTop,
                left:     settings.WindowLeft}, {
                queue:    true,
                duration: settings.WindowAnimationSpeed,
                easing:   settings.WindowAnimation
              });
            }
            WindowContent.animate({
              width:    settings.WindowOuterWidth - settings.WindowBorderWidth,
              height:   settings.WindowOuterHeight - settings.WindowBorderHeight}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation
            });
            WindowContainer.draggable({
              cursorAt: null
            });
            WindowContainer.resizable('enable');
           break;
          case 'changeSize': //---------------------------------------------------
            settings.WindowStatus = 'window';
            WindowContent.find('iframe').css('display', 'none');
            Window.animate({
              opacity:  'show'}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation
            });
            WindowContainer.animate({
              width:    settings.WindowOuterWidth,
              height:   settings.WindowOuterHeight,
              top:      settings.WindowTop + $(window).scrollTop(),
              left:     settings.WindowLeft + $(window).scrollLeft()}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation
            });
            WindowContent.animate({
              width:    settings.WindowOuterWidth - settings.WindowBorderWidth,
              height:   settings.WindowOuterHeight - settings.WindowBorderHeight}, {
              queue:    true,
              duration: settings.WindowAnimationSpeed,
              easing:   settings.WindowAnimation
            });
            WindowContent.find('iframe').animate({
              opacity: 'show'}, {
              queue:    true,
              duration: 2000
            });
           break;
          case 'restoreToMouse': //--------------------------------------------
            BTNMin.css('display', 'block');
            BTNRes.css('display', 'none');
            BTNMax.css('display', 'block');
            settings.WindowStatus = 'window';
            WindowContainer.css({
              width:    settings.WindowOuterWidth,
              height:   settings.WindowOuterHeight
            });
            WindowContent.css({
              width:    settings.WindowOuterWidth - settings.WindowBorderWidth,
              height:   settings.WindowOuterHeight - settings.WindowBorderHeight
            });
            WindowContainer.resizable('enable');
            break;
          case 'close': //-----------------------------------------------------
            if (WindowStatusBefore === undefined) {
              settings.WindowStatusBefore = settings.WindowStatus;
            } else {
              settings.WindowStatusBefore = WindowStatusBefore;
            }     
            if ( $.browser.msie ) {
              WindowContainer.css('display', 'none');
            } else {
              WindowContainer.animate({
                opacity:  0}, {
                queue:    true,
                duration: settings.WindowAnimationSpeed,
                easing:   settings.WindowAnimation,
                complete: function() {
                  WindowContainer.css('display', 'none');
                }
              });
            }
            $('#Taskbar'+this.id).css({display: 'none'});
            settings.WindowStatus = 'closed';
            break;
            default:
            break;
        }
      };

      // ----------------------------------------------------------------------
      // initialisation--------------------------------------------------------
      // ----------------------------------------------------------------------
      function init(id){
        //Disable Window scrollbar if content is an iframe
        if ($('#'+id).find('iframe').length > 0){
          WindowContent.css({overflow: 'hidden'});
        }
        if ($('#'+id).next('img').length > 0){
          WindowContent.css({overflow: 'hidden'});
        }
        
        //Build Taskbar -------------------------------------------------------
        if ($('#Taskbar').length == 0) {



          $('body').append('<div id="Taskbar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
'Main Menu' +



/*'<div id="menuDoc">'+
'<a href="#"><img src="../../Content/images/taskbar/StartButtonIcon.png" alt="" title="Menu 1" /></a>'+
'<a href="#"><img src="../../Content/images/taskbar/StartButtonIcon.png" alt="" title="Menu 1" /></a>'+
'<a href="#"><img src="../../Content/images/taskbar/StartButtonIcon.png" alt="" title="Menu 1" /></a>'+
'<a href="#"><img src="../../Content/images/taskbar/StartButtonIcon.png" alt="" title="Menu 1" /></a>'+
'<a href="#"><img src="../../Content/images/taskbar/StartButtonIcon.png" alt="" title="Menu 1" /></a>'+
'<a href="#"><img src="../../Content/images/taskbar/StartButtonIcon.png" alt="" title="Menu 1" /></a>'+
'</div>' +*/




'</div>');



          $('#Taskbar').append('<div style="float: left;" id="Start-Menu-Button">&nbsp;</div>');
          $('#Taskbar').append('<div id="TaskbarPoints">&nbsp;</div>');
          $('body').append('<div id="Start-Menu">&nbsp;</div>');
          $('#Taskbar').append('<div title="Show Desktop" id="TaskbarShowDesktop"></div>');          
          //---------------------------------------------------------------------------
          //Load ajax Contents --------------------------------------------------------
          //---------------------------------------------------------------------------
          //$('#Start-Menu').load('ajax/StartmenuContent.html');
        }
        if (ShowTaskbar == true){
          $('#Taskbar').css('display', 'block');
        }
        
        //Build Taskbar Item --------------------------------------------------
        $('#Taskbar').append('<div id="Taskbar'+id+'" class="Taskbar-Item" title="'+settings.WindowTitle+'"><img src="'+settings.WindowDesktopIconFile+'"></div>');
        
        //Save Window Positions
        saveWindowData();
        
        //Set First Window Status
        switch (settings.WindowStatus){
          case 'closed':
            obj.ResizeWindow('close', false, 'window');
            break;
          case 'window':
            obj.ResizeWindow('restore');
            break;
          case 'maximized':
            obj.ResizeWindow('maximize');
            break;
          case 'minimized':
            obj.ResizeWindow('minimize');
            break;
          default:
            break;
        }
        
        // Deskop Icons
        if ($('#DesktopIcons').length == 0) $('body').append('<div id="DesktopIcons"></div>');
        if (settings.WindowDesktopIcon == true){
          var temp = new Array();
          temp = settings.WindowTitle.split(' ');
          DesktopIconCaption = '';
          $.each(temp, function(index, value) { 
            if (value.length > 17) {
              DesktopIconCaption += value.substr(0, 17)+'... '; 
            } else {
              DesktopIconCaption += value+' '; 
            }
          });
          
          $('#DesktopIcons').append(
            '<div class="DesktopIconContainer" id="DesktopIcon'+id+'">' +
               '<table cellpadding="0" cellspacing="0" border="0" title="'+settings.WindowTitle+'">' +
               '  <tr>' +
               '    <td class="bg-top"></td>' +
               '  </tr>' +
               '  <tr>' +
               '    <td class="bg-middle"><img src="'+settings.WindowDesktopIconFile+'" width="48" height="48"></td>' +
               '  </tr>' +
               '  <tr>' +
               '    <td class="bg-bg"><p>'+DesktopIconCaption+'</p></td>' +
               '  </tr>' +
               '  <tr>' +
               '    <td class="bg-bottom"></td>' +
               '  </tr>' +
               '</table>' +
             '</div>');
          $('#DesktopIcon'+id).draggable({
            helper:  "original",
            start: function(){
              $('#DesktopIcons .DesktopIconContainer').removeClass('mouseoverclicked');
              $('#DesktopIcons .DesktopIconContainer').removeClass('mouseoverclickedmouseout');
              $(this).addClass('mouseoverclicked');
            }
          });
        }
      };
      init(this.id);

      // ----------------------------------------------------------------------
      //Objekt event handling -------------------------------------------------
      // ----------------------------------------------------------------------
      BTNMin.click(function (){
        obj.ResizeWindow('minimize');
        return(false);
      });
      BTNRes.click(function (){
        obj.ResizeWindow('restore');
        return(false);
      });
      BTNMax.click(function (){
        obj.ResizeWindow('maximize');
        return(false);
      });
      BTNClose.click(function (){
        obj.ResizeWindow('close');
        return(false);
      });
       //Support Focus on Window by Click -------------------------------------
       Window.click(function (){
         if(!Window.hasClass('active')) {
           obj.FocusWindow();
         }         
       });

      //Attach user events to the Window --------------------------------------
      if (settings.WindowMaximize){
        WindowContainer.dblclick(function(){
          switch (settings.WindowStatus){
            case 'window':
              obj.ResizeWindow('maximize');
              break;
            case 'maximized':
              obj.ResizeWindow('restore');
              break;
            case 'minimized':
              obj.ResizeWindow('restore');
              break;
            default:
              break;
          }
        });
      } else {
        WindowContainer.dblclick(function(){
          switch (settings.WindowStatus){
            case 'maximized':
              obj.ResizeWindow('restore');
              break;
            case 'minimized':
              obj.ResizeWindow('restore');
              break;
            default:
              break;
          }
        });
      }

   };

   $.fn.AeroWindow = function(options)
   {
    return this.each(function()
    {
      var element = $(this);
    
      // Return early if this element already has a plugin instance
      if (element.data('AeroWindow')) return;
    
      var AeroWindow = new AeroWindowPlugin(this, options);
    
      // Store plugin object in this element's data
      element.data('AeroWindow', AeroWindow);
    
      //Init code after object is completely loaded
      AeroWindow.TaskbarHandler();
      AeroWindow.DesktopIconHandler();
    
      //Store AeroWindows in Array
      if (($('body').data('AeroWindows')) == null){
        $('body').data('AeroWindows', [AeroWindow]);
      } else {
        $('body').data('AeroWindows').push(AeroWindow);
      }
    });
   };
})(jQuery);
  
  
$(document).ready(function(){
  // Global Window Functions --------------------------------------------------
  function minallDelay(Counter) {
    Windows = $('body').data('AeroWindows');
    if (Counter === undefined) {
      Counter = Windows.length;
    }
    if(Counter > 0) {    
      Counter = Counter-1;
      if (
        Windows[Counter].get('WindowStatus') != 'minimized' &&
        Windows[Counter].get('WindowStatus') != 'closed' 
      ) {
        AnimationSpeed = Windows[Counter].get('WindowAnimationSpeed');
        Windows[Counter].ResizeWindow('minimize', false);
        setTimeout(function() { minallDelay(Counter); }, AnimationSpeed-200);
      } else {
        minallDelay(Counter);
      }
    } 
  }
  function getOpenWindowsCount() {
    i = 0;
    jQuery.each($('body').data('AeroWindows'), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        i += 1;
      }
    });
    return(i);
  };      
  function minall() {
    jQuery.each($('body').data('AeroWindows'), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        this.ResizeWindow('minimize', false);
      }
    });
  };      
  function SortGrid() {
    var WindowsTotal   = 0;
    var WindowCount    = 0;
    var CurrentGridRow = 0;
    var GridRowsTotal  = 0;
    
    jQuery.each($('body').data('AeroWindows'), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        WindowsTotal += 1;
      }
    });
    BrowserWindowWidth  = $(window).width();
    BrowserWindowHeight = $(window).height();

    GridRowsTotal = (Math.sqrt(WindowsTotal));
    if (parseInt(GridRowsTotal)!=GridRowsTotal) {
      GridRowsTotal = Math.floor(GridRowsTotal)+1;
    }
    
    jQuery.each($('body').data('AeroWindows'), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        if ((GridRowsTotal*GridRowsTotal) - WindowsTotal >= GridRowsTotal) {
          AeroWindowWidth  = BrowserWindowWidth/GridRowsTotal;
          AeroWindowHeight = BrowserWindowHeight/(GridRowsTotal-1);
          ShowGridRows = GridRowsTotal - 1;
        } else {
          AeroWindowWidth  = BrowserWindowWidth/GridRowsTotal;
          AeroWindowHeight = BrowserWindowHeight/GridRowsTotal;
          ShowGridRows = GridRowsTotal;
        }

        if (ShowTaskbar == true) {
          RowSpaceForTaskbar = (this.get('TaskbarHeight')/ShowGridRows);
        } else {
          RowSpaceForTaskbar = 0;
        }
        
        
        if (WindowCount == GridRowsTotal) {
          CurrentGridRow  += 1;
          AeroWindowPositionLeft = 0;
          AeroWindowPositionTop  = (AeroWindowHeight-RowSpaceForTaskbar) *CurrentGridRow;
          WindowCount = 0;
        } else {
          AeroWindowPositionLeft = AeroWindowWidth  * WindowCount;
          AeroWindowPositionTop  = (AeroWindowHeight-RowSpaceForTaskbar) * CurrentGridRow;
        }
        WindowCount     += 1;

        $('#'+this.id).css({
          top:    AeroWindowPositionTop,
          left:   AeroWindowPositionLeft,
          width:  AeroWindowWidth,
          height: AeroWindowHeight-RowSpaceForTaskbar
        });
        $('#'+this.id).find(".table-mm-content").css({
          width:  AeroWindowWidth  - this.get('WindowBorderWidth'),
          height: AeroWindowHeight-RowSpaceForTaskbar - this.get('WindowBorderHeight')
        });        
      }
    });
  };      

  function SortOverlapping() {
    var counter  = 0;
    var counter2 = 0;
    jQuery.each($('body').data('AeroWindows').reverse(), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        this.FocusWindow();
        counter += 1;
      }
    });
    BrowserWindowWidth  = $(window).width();
    BrowserWindowHeight = $(window).height();
    OverlappingX = 50;
    OverlappingY = 50;
    AeroWindowWidth  = 400;
    AeroWindowHeight = 200;
    jQuery.each($('body').data('AeroWindows').reverse(), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        AeroWindowPositionLeft = (((BrowserWindowWidth/2)  - (AeroWindowWidth/2))  + (OverlappingX*counter2) - (OverlappingX/2*(counter-1)));
        AeroWindowPositionTop  = (((BrowserWindowHeight/2) - (AeroWindowHeight/2)) + (OverlappingY*counter2) - (OverlappingY/2*(counter-1)));
        if (ShowTaskbar == true) {
          AeroWindowPositionTop -= (this.get('TaskbarHeight')/2);
        };
        $('#'+this.id).css({
          top:    AeroWindowPositionTop,
          left:   AeroWindowPositionLeft,
          width:  AeroWindowWidth,
          height: AeroWindowHeight
        });
        $('#'+this.id).find(".table-mm-content").css({
          width:  AeroWindowWidth  - this.get('WindowBorderWidth'),
          height: AeroWindowHeight - this.get('WindowBorderHeight')
        });        
        counter2 += 1;
      }
    });
  };      
  function transparentallon() {
    jQuery.each($('body').data('AeroWindows'), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        this.ResizeWindow('transparent-on', false);
      }
    });
  };      
  function transparentalloff() {
    jQuery.each($('body').data('AeroWindows'), function() {
      if (
        this.get('WindowStatus') != 'minimized' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        this.ResizeWindow('transparent-off', false);
      }
    });
  };      
  function resallDelay(Counter) {
    Windows = $('body').data('AeroWindows');
    if (Counter === undefined) {
      Counter = Windows.length;
    }
    if(Counter > 0) {    
      Counter = Counter-1;
      if (
        Windows[Counter].get('WindowStatus') != 'window' &&
        Windows[Counter].get('WindowStatus') != 'closed' 
      ) {
        AnimationSpeed = Windows[Counter].get('WindowAnimationSpeed');
        Windows[Counter].ResizeWindow('restore', false);
        setTimeout(function() { resallDelay(Counter); }, AnimationSpeed-200);
      } else {
        resallDelay(Counter);
      }
    } 
  }
  
  function resall() {
    jQuery.each($('body').data('AeroWindows'), function() {
      if (
        this.get('WindowStatus') != 'window' &&
        this.get('WindowStatus') != 'closed' 
      ) {
        this.ResizeWindow('restore', false);
      }
    });
  };      

  function GenerateNewWindow(NewWindowURL, WindowType, ShowDesktopIcon) {
    Randomnumber = Math.floor(Math.random()*1000000);
    if (NewWindowURL == null) {
      NewWindowURL = prompt("URL for the new Window", "http://www.google.com");
    }
    if (WindowType != 'image') {
      if (NewWindowURL.substr(0, 10) == 'http://www') {
        //do nothing
      } else if (NewWindowURL.substr(0, 3) == 'www') {
        NewWindowURL = 'http://'+NewWindowURL;
      } else {
        NewWindowURL = 'http://www.'+NewWindowURL;
      }
    }
    if (NewWindowURL == 'http://www.google.com') {
      NewWindowURL = 'http://www.google.com/cse/home?cx=partner-pub-7201128898371258:sth57t3rplw&ie=ISO-8859-1';
    }
    
    
    
    
    //Generate new WindowContent
    if (WindowType == 'image') {
      $('body').append(
        '<div id="'+Randomnumber+'">' +
        '  <image src="'+NewWindowURL+'" style="border: 0px;">' +
        '</div>');    
      //Resize to big Images to Viewport
      if (
        (($(window).width()-32-50)  < $('#'+Randomnumber).find('img').width()) ||
        (($(window).height()-72-50) < $('#'+Randomnumber).find('img').height())
      ) {
        a = $(window).width()+32+50  - $('#'+Randomnumber).find('img').width();
        b = $(window).height()+72+50 - $('#'+Randomnumber).find('img').height();
        if (a < b) {
          WindowOuterWidth  = $(window).width()-50-72;
          WindowOuterHeight = ($('#'+Randomnumber).find('img').height() / ($('#'+Randomnumber).find('img').width()/($(window).width())))-50-72;
        } else {
          WindowOuterWidth  = ($('#'+Randomnumber).find('img').width() / ($('#'+Randomnumber).find('img').height()/($(window).height())))-50-72;
          WindowOuterHeight = $(window).height()-50-72;
        }
      } else {
        WindowOuterWidth  = 32+($('#'+Randomnumber).find('img').width());
        WindowOuterHeight = 72+($('#'+Randomnumber).find('img').height());
      }
      $('#'+Randomnumber).find('img').css({
        width: '100%',
        height: '100%'
      });
    } else {
      $('body').append(
        '<div id="'+Randomnumber+'">' +
        '  <iframe src="'+NewWindowURL+'" width="100%" height="100%" style="border: 0px;" frameborder="0"></iframe>' +
        '</div>');    
      WindowOuterWidth  = 800;
      WindowOuterHeight = 500;
    }

    //Generate new AeroWindow
    if (NewWindowURL == 'http://www.google.com/cse/home?cx=partner-pub-7201128898371258:sth57t3rplw&ie=ISO-8859-1') {
      NewWindowURL = 'Google - Web Search';
    }

    image = '../../Content/images/icons/default.png';
    $('#'+Randomnumber).AeroWindow({
      WindowDesktopIconFile: image,
      WindowTitle:           NewWindowURL,
      WindowPositionTop:     'center',
      WindowPositionLeft:    'center',
      WindowStatus:          'window',   
      WindowOuterWidth:      WindowOuterWidth,
      WindowOuterHeight:     WindowOuterHeight,
      WindowDesktopIcon:     ShowDesktopIcon
    });
    $("body #tmpIcon").remove();
  }

  function GenerateNewWindowLightbox(NewWindowURL, WindowTitle, ShowDesktopIcon, e) {
    //Generate Random ID
    var Randomnumber = Math.floor(Math.random()*1000000);
    //Config
    StartWindowOuterWidth  = 200;
    StartWindowOuterHeight = 100;      
    EndWindowOuterWidth    = 800;
    EndWindowOuterHeight   = 400;      
    //If Windows to big
    MinSpacing = 20;

    if (NewWindowURL == null) {
      NewWindowURL = prompt("URL for the new Window", "http://www.google.com");
    }
    if (NewWindowURL.substr(0, 10) == 'http://www') {
      //do nothing
    } else if (NewWindowURL.substr(0, 3) == 'www') {
      NewWindowURL = 'http://'+NewWindowURL;
    }
    
    
    if (NewWindowURL == 'http://www.google.com') {
      NewWindowURL = 'http://www.google.com/cse/home?cx=partner-pub-7201128898371258:sth57t3rplw&ie=ISO-8859-1';
      WindowTitle  = 'Google - Web Search';
    }
    if (WindowTitle == null) WindowTitle = NewWindowURL;

    
    
    
    //#########################################################################
    //Check Content Type ------------------------------------------------------
    //#########################################################################
    var ext = NewWindowURL.split('.').pop().toLowerCase();
    var allow = new Array('gif','png','jpg','jpeg');
    if(jQuery.inArray(ext, allow) != -1) {
      WindowType = 'Image';
    } else {
      WindowType = 'Link';
    }
    if (WindowType == 'Image') {
      //#######################################################################
      //Image Type ------------------------------------------------------------
      //#######################################################################
      $('body').append('<div id="'+Randomnumber+'"></div>');    
      //Window Icon
      image = '../../Content/images/icons/default.png';
      ShowWindow();
      var img = new Image();
      $(img).load(function () {
        $(this).hide();
        $('#'+Randomnumber)
          .find('.table-mm-content').html(this);
          $(this).fadeIn();
          //Resize to big Images to Viewport
          MinSpacing = 20;
          if (
            (($(window).width()-32-MinSpacing)  < $(this).width()) ||
            (($(window).height()-72-MinSpacing) < $(this).height())
          ) {
            a = $(window).width()+32+MinSpacing  - $(this).width();
            b = $(window).height()+72+MinSpacing - $(this).height();
            if (a < b) {
              EndWindowOuterWidth  = $(window).width()-MinSpacing;
              EndWindowOuterHeight = ($(this).height() / ($(this).width()/($(window).width())))-MinSpacing;
            } else {
              EndWindowOuterWidth  = ($(this).width() / ($(this).height()/($(window).height())))-MinSpacing;
              EndWindowOuterHeight = $(window).height()-MinSpacing;
            }
          } else {
            EndWindowOuterWidth  = 32+($(this).width());
            EndWindowOuterHeight = 72+($(this).height());
          }
          $('#'+Randomnumber).find('.table-mm-content').find('img').css({
            width: '100%',
            height: '100%'
          });
          $('#'+Randomnumber).find('.table-mm-content').removeClass('loading');
          AnimateWindows();
        })
        .error(function () {
          $('#'+Randomnumber).find('.table-mm-content').removeClass('loading');
          $('#'+Randomnumber).find('.table-mm-content').html(
            '<p>This Picture was not found...</p>'
          );
          AnimateWindows();
        })
        .attr('src', NewWindowURL);        
    } else {
      //#######################################################################
      //Link Type -------------------------------------------------------------
      //#######################################################################
      $('body').append('<div id="'+Randomnumber+'"></div>');    
      //Resize to big Windows to Viewport
      if (
        (($(window).width()-MinSpacing)  < EndWindowOuterWidth) ||
        (($(window).height()-MinSpacing) < EndWindowOuterHeight)
      ) {
        a = $(window).width()+MinSpacing  - EndWindowOuterWidth;
        b = $(window).height()+MinSpacing - EndWindowOuterHeight;
        if (a < b) {
          WindowOuterWidth  = $(window).width()-MinSpacing;
          WindowOuterHeight = (EndWindowOuterHeight / (EndWindowOuterWidth/($(window).width())))-MinSpacing;
        } else {
          WindowOuterWidth  = (EndWindowOuterWidth / (EndWindowOuterHeight/($(window).height())))-MinSpacing;
          WindowOuterHeight = $(window).height()-MinSpacing;
        }
        EndWindowOuterWidth  = WindowOuterWidth;
        EndWindowOuterHeight = WindowOuterHeight;
      }
      //Window Icon
      var icon = new Image();
      $(icon).load(function () {
          image = NewWindowURL+'/favicon.ico';
          ShowWindow();
          AnimateWindows();
          DropContent();
        })
        .error(function () {
          if (NewWindowURL == 'http://www.google.com/cse/home?cx=partner-pub-7201128898371258:sth57t3rplw&ie=ISO-8859-1') {
            image = '../../Content/images/icons/google.png';
          } else {
            image = '../../Content/images/icons/default.png';
          }
          ShowWindow();
          AnimateWindows();
          DropContent();
        })
        .attr('src', NewWindowURL+'/favicon.ico');        
        
    }
    //#########################################################################
    //#########################################################################
    //#########################################################################    
    //Set Opacity 50%
    function ShowWindow() {
      if ( !$.browser.msie ) {
        $('#'+Randomnumber).css({
          opacity: 0.5
        });
      } 
      //Build Window
      $('#'+Randomnumber).AeroWindow({
        WindowDesktopIconFile: image,
        WindowTitle:           WindowTitle,
        WindowPositionTop:     e.pageY-(StartWindowOuterHeight/2),
        WindowPositionLeft:    e.pageX-(StartWindowOuterWidth/2),
        WindowStatus:          'window',   
        WindowOuterWidth:      StartWindowOuterWidth,
        WindowOuterHeight:     StartWindowOuterHeight,
        WindowDesktopIcon:     false,
        WindowMinimize:        true,
        WindowDesktopIcon:     ShowDesktopIcon      
      });
      $('#'+Randomnumber).find('.table-mm-content').addClass('loading');
    }
    function AnimateWindows() {
      //Animate Window
      
      $('#'+Randomnumber).data('AeroWindow').set('WindowStatus', 'onChange');
      $('#'+Randomnumber).data('AeroWindow').set('WindowTop',  ($(window).height()/2) - $('#'+Randomnumber).data('AeroWindow').get('WindowOuterHeight')/2);
      $('#'+Randomnumber).data('AeroWindow').set('WindowLeft', ($(window).width()/2) - $('#'+Randomnumber).data('AeroWindow').get('WindowOuterWidth')/2);
      $('#'+Randomnumber).data('AeroWindow').ResizeWindow('changeSize');
      //Animate Window
      $('#'+Randomnumber).data('AeroWindow').set('WindowStatus', 'onChange');
      $('#'+Randomnumber).data('AeroWindow').set('WindowOuterWidth',  EndWindowOuterWidth);
      $('#'+Randomnumber).data('AeroWindow').set('WindowOuterHeight', EndWindowOuterHeight);
      $('#'+Randomnumber).data('AeroWindow').set('WindowTop',  ($(window).height()/2) - $('#'+Randomnumber).data('AeroWindow').get('WindowOuterHeight')/2);
      $('#'+Randomnumber).data('AeroWindow').set('WindowLeft', ($(window).width()/2) - $('#'+Randomnumber).data('AeroWindow').get('WindowOuterWidth')/2);
      $('#'+Randomnumber).data('AeroWindow').ResizeWindow('changeSize');
    }
    function DropContent() {
      //Drop Content 
      if(WindowType == 'Link') {
        window.setTimeout(function() {
          $('#'+Randomnumber).find('.table-mm-content').html('<iframe src="'+NewWindowURL+'" width="100%" height="100%" style="border: 0px;" frameborder="0"></iframe><div class="iframeHelper"></div>');
          $('#'+Randomnumber).find('.iframeHelper').css({'display': 'none'});
          if ( !$.browser.msie ) {
            $('#'+Randomnumber).find('iframe').css('visibility', 'hidden');
          } 
          var ContentsLoaded = false;
          var ContentsTimer = setTimeout(function() {
            //If Content not loaded -------------------------------------------
            $('#'+Randomnumber).find('.table-mm-content').removeClass('loading');
            $('#'+Randomnumber).find('.table-mm-content').html(
              '<p>This website was not found... <br>Your URL must be start with <i>HTTP://www...</i></p>'
            );
          }, 5000);

          $('#'+Randomnumber).find('iframe').load(function() {
            $('#'+Randomnumber).find('.table-mm-content').removeClass('loading');
            $(this).css('visibility', 'visible');            
            //Clear Timeout ---------------------------------------------------
            ContentsLoaded = true;
            clearTimeout(ContentsTimer);
          })
        }, 2500);      
      }
    }
  }


  //---------------------------------------------------------------------------
  // Global Button Handling ---------------------------------------------------
  //---------------------------------------------------------------------------
  // Taskbar ------------------------------------------------------------------
  $('#TaskbarShowDesktop').hover(function (){
     $(this).addClass('hover');
     transparentallon();
  }, function (){
     $(this).removeClass('hover');
     transparentalloff();
  });  
  $('#TaskbarShowDesktop').click(function () {
     transparentalloff();
     if (getOpenWindowsCount() > 0) {
       minall();
     } else {
       resall();
     }
  });
  // Links --------------------------------------------------------------------
  $('#AeroWindowLinks').find('a').click(function (e) {
    GenerateNewWindowLightbox($(this).attr('href'), $(this).attr('title'), false, e);
    return(false);
  });
  $('.AeroWindowLink').click(function (e) {
    GenerateNewWindow($(this).attr('href'), null, false, e);
    return(false);
  });
  $('.AeroWindowImageLink').click(function (e) {
    GenerateNewWindow($(this).attr('href'), 'image', false, e);
    return(false);
  });

$('#Start-Menu').load('../../Content/iFrameContent/StartmenuContent.html', function () {
    // Startmenu Items hover style --------------------------------------------
    $('#Start-Menu #NavItems li').hover(function (){
       $(this).addClass('hover');
    }, function (){
       $(this).removeClass('hover');
    }); 
    // Startmenu Items --------------------------------------------------------
    $('#StartmenuItem_RestoreMinWindowsDelay').click(function () {
      resallDelay();
    });
    $('#StartmenuItem_RestoreMinWindows').click(function () {
      resall();
    });
    $('#StartmenuItem_SortOverlapping').click(function () {
      SortOverlapping();
    });
    $('#StartmenuItem_SortGrid').click(function () {
      SortGrid();
    });
    $('#StartmenuItem_MinimizeOpenWindowsDelay').click(function () {
      minallDelay();
    });
    $('#StartmenuItem_MinimizeOpenWindows').click(function () {
      minall();
    });
    $('#StartmenuItem_CreateNewWindow').click(function (e) {
      GenerateNewWindowLightbox(null, null, false, e);
    });
    $('#StartmenuItem_CreateNewWindowAndIcon').click(function (e) {
      GenerateNewWindowLightbox(null, null, true, e);
  });


      $('#StartmenuItem_CreateNewWindowLogin').click(function(e) {
          GenerateNewWindowLightbox("../Account/Login", "Synergy HRM", false, e);
      });

      $('#StartmenuItem_CreateNewWindowDashboard').click(function(e) {
          GenerateNewWindowLightbox("../Dashboard/Index", "Synergy HRM", false, e);
      });


    $('#SearchBox').submit(function(e) {
      GenerateNewWindowLightbox('http://www.google.com/cse?cx=partner-pub-7201128898371258%3Asth57t3rplw&ie=ISO-8859-1&q='+this.q.value, 'Google Web Search', false, e);      
      $('#Start-Menu').css({visibility: 'hidden'});
      $('#Start-Menu-Button').removeClass('active');
      $(this.q).attr('value', 'Web Search');
      return(false);
    });      
  });  


  
  
  // Startmenu ----------------------------------------------------------------
  $('#Start-Menu-Button').hover(function (){
     $(this).addClass('hover');
  }, function (){
     $(this).removeClass('hover');
  });  
  $('#Start-Menu-Button').click(function () {
     $(this).addClass('active');
     $('#Start-Menu').css({visibility: 'visible'});
  });
  $('#Start-Menu #NavItems li').hover(function (){
     $(this).addClass('hover');
  }, function (){
     $(this).removeClass('hover');
  });  




  
  
  //---------------------------------------------------------------------------
  //Refresh iframes even with a soft Refresh ----------------------------------
  //---------------------------------------------------------------------------
  //Store AeroWindows in Array
  if (($('body').data('AeroWindows')) == null){
    $('body').data('AeroWindows', Array());
  }   
  $.each( $('body').data('AeroWindows'), function(k, v){
    v.RefreshIframeURL();
  });
  
  //---------------------------------------------------------------------------
  //Outclick Function --------------------------------------------------------
  //---------------------------------------------------------------------------
  $('html').click(function(event){
    var outClicked_startmenu   = true;
    var outClicked_desktopicon = true;
    var outClicked_aerowindow  = true;
    //Build setting -----------------------------------------------------------
    if( 
        (event.target.id == 'Start-Menu') || 
        ($(event.target).parents('#Start-Menu-Button').length || event.target.id == 'Start-Menu-Button') ||
        ($(event.target).parents('#SearchBox').length || event.target.id == 'SearchBox')
    ) {
      outClicked_startmenu = false;
    }
    if( $(event.target).parents('#DesktopIcons').length){
      outClicked_desktopicon = false;
    }
    if( 
      $(event.target).parents('.AeroWindowContainer').length || $(event.target).hasClass('AeroWindowContainer') ||
      $(event.target).parents('.Taskbar-Item').length || $(event.target).hasClass('Taskbar-Item') 
    ){
      outClicked_aerowindow = false;
    }
    //Action for setting ------------------------------------------------------
    if (outClicked_startmenu == true) {
      $('#Start-Menu').css({visibility: 'hidden'});
      $('#Start-Menu-Button').removeClass('active');
    }
    if (outClicked_desktopicon == true) {
      $('#DesktopIcons div').removeClass('mouseoverclicked');
      $('#DesktopIcons div').removeClass('mouseoverclickedmouseout');
    }
    if (outClicked_aerowindow == true) {
      $(".AeroWindow").removeClass('active');
    }
  });

});