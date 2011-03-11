// JScript File
var AECWinPopup = new function() {

    //Declare Window Object
    var AECWindow = function(url, width, height, callbackHandler, callbackContext, onClose) {
        this.url = url;
        this.width = width;
        this.height = height;
        this.callbackHandler = callbackHandler;
        this.callbackContext = callbackContext;
        this.modal = false;
        this.isOpen = false;
        this.onClose = onClose;
    };

    AECWindow.prototype.open = function(modal) {
        openAECWindow(this, modal);
    };

    AECWindow.prototype.close = function() {
        closeAECWindow(this);
    };

    AECWindow.prototype.callback = function(returnValue) {
        this.callbackHandler(this.callbackContext, returnValue);
    };

    this.open = function(url, width, height, callbackHandler, callbackContext, modal, onClose, owner) {

        var theWindow = new AECWindow(url, width, height, callbackHandler, callbackContext, onClose);
        openAECWindow(theWindow, modal, owner)

        return theWindow;
    };

    this.getAECWindow = function() {
        var oWindow = null;
        if (window.AECWindow) {
            oWindow = window.AECWindow;

        }
        else if (window.frameElement) {
            if (window.frameElement.AECWindow) {
                oWindow = window.frameElement.AECWindow;
            }
        }
        return oWindow;
    };

    this.closeCurrentWindow = function() {
        var oWindow = this.getAECWindow();
        if (oWindow != null) {
            oWindow.close();
        }
        else {
            self.close();
        }
    };

    //Private functions
    function doResize(element, startWidth, startHeight, finishWidth, finishHeight, steps, interval, power, onComplete) {

        var intCurrentStep = 0;

        if (element.resizeInterval) window.clearInterval(element.resizeInterval);

        element.resizeInterval = window.setInterval(
            function() {
                element.style.width = easeInOut(startWidth, finishWidth, steps, intCurrentStep, power) + 'px';
                element.style.height = easeInOut(startHeight, finishHeight, steps, intCurrentStep, power) + 'px';

                //Assume centre align
                element.style.top = (document.documentElement.clientHeight - element.clientHeight) / 2 + 'px';
                element.style.left = (document.documentElement.clientWidth - element.clientWidth) / 2 + 'px';

                intCurrentStep++;

                if (intCurrentStep > steps) {
                    window.clearInterval(element.resizeInterval);
                    onComplete.call();
                }
            }

        , interval)
    }


    function doFade(element, startOpacity, finishOpacity, steps, interval, power) {

        var intCurrentStep = 0;

        if (element.fadeInterval) window.clearInterval(element.fadeInterval);

        element.fadeInterval = window.setInterval(
            function() {
                if (window.ie == true) {

                    element.style.filter = 'alpha(opacity:' + easeInOut(startOpacity, finishOpacity, steps, intCurrentStep, power) + ')';
                } else {
                    element.style.MozOpacity = easeInOut(startOpacity, finishOpacity, steps, intCurrentStep, power) / 100;
                }

                intCurrentStep++;

                if (intCurrentStep > steps) {
                    window.clearInterval(element.fadeInterval);

                    if (finishOpacity == 100) {
                        element.style.filter = '';
                    }
                }
            }

        , interval)
    }


    function easeInOut(minValue, maxValue, totalSteps, actualStep, power) {

        //return Math.ceil((((maxValue - minValue) / totalSteps) * actualStep) + minValue);
        return Math.ceil(minValue + (Math.pow(((1 / totalSteps) * actualStep), power) * (maxValue - minValue)));
    }


    function openAECWindow(theWindow, modal, owner) {

        var oDocument = owner ? owner : document;
        //var oDocument = window.top.window.document;

        theWindow.Overlay = oDocument.createElement('div');
        theWindow.Canvas = oDocument.createElement('div');
        theWindow.Container = oDocument.createElement('iframe');
        theWindow.modal = modal;

        theWindow.height = Math.min(theWindow.height, oDocument.documentElement.clientHeight - 40);
        theWindow.width = Math.min(theWindow.width, oDocument.documentElement.clientWidth - 40);

        theWindow.Overlay.id = 'divAECWindowOverlay';
        //theWindow.Overlay.style.top = '0px';
        //theWindow.Overlay.style.width = oDocument.documentElement.scrollWidth + 'px';
        //theWindow.Overlay.style.height = oDocument.documentElement.scrollHeight + 'px';
        //theWindow.Overlay.style.position = 'absolute';
        //theWindow.Overlay.style.backgroundColor = '#444444';
        //theWindow.Overlay.style.filter = 'alpha(opacity:75)';
        //theWindow.Overlay.style.MozOpacity = 0.8;
        //theWindow.Overlay.style.opacity = 0.8;
        //theWindow.Overlay.style.zIndex = 998;

        addEvent(window.top.window, 'resize', new resizeHandler(theWindow));

        if (modal != true) {
            theWindow.Overlay.style.cursor = 'pointer';
            theWindow.Overlay.onclick = function() {
                closeAECWindow(theWindow);
            }
        }

        addEvent(document, 'keydown', new keyDownHandler(theWindow));
        //oDocument.body.appendChild(theWindow.Overlay);

        theWindow.Canvas.id = 'divAECWindow_'+ new Date().getTime();
        theWindow.Canvas.style.backgroundColor = '#FFFFFF';
        theWindow.Canvas.style.border = 'solid 2px #BDDFFF';
        theWindow.Canvas.style.width = theWindow.width + 'px'; // 300 + 'px';
        theWindow.Canvas.style.height = theWindow.height + 'px';  //200 + 'px';
        theWindow.Canvas.style.top = Math.floor((oDocument.documentElement.clientHeight - theWindow.height) / 2) + 'px';
        theWindow.Canvas.style.left = Math.floor((oDocument.documentElement.clientWidth - theWindow.width) / 2) + 'px';
        theWindow.Canvas.style.padding = '10px';
        theWindow.Canvas.style.position = 'absolute';
        theWindow.Canvas.style.zIndex = 9999; ;

        theWindow.Container.style.width = '100%';
        theWindow.Container.style.height = '100%';
        theWindow.Container.frameBorder = 0;
        theWindow.Container.scrolling = 'auto';

        /*
        if (window.ie == true) {
        theWindow.Container.style.filter = 'alpha(opacity:0)';
        } else {
        theWindow.Container.style.MozOpacity = 0;
        }
        */

        theWindow.Container.src = theWindow.url;
        theWindow.Container.AECWindow = theWindow;

        //Hide SelectLists in IE6 as they will appear above the floating layer
        if (window.ie6 == true) {
            for (var intIndex = document.getElementsByTagName('select').length - 1; intIndex >= 0; intIndex--) {
                oSelectList = document.getElementsByTagName('select')[intIndex];
                oSelectList.setAttribute('aecVisibility', oSelectList.style.visibility ? oSelectList.style.visibility : 'visible');
                oSelectList.style.visibility = 'hidden';
            }
        }

        theWindow.Canvas.appendChild(theWindow.Container);
        oDocument.body.appendChild(theWindow.Overlay);
        oDocument.body.appendChild(theWindow.Canvas);

        theWindow.isOpen = true;

        //RMC 15/11/2010 - Hack to make sure help links can be displayed - needs to be looked into as catching the onBlur event is not the best way to do this,
        //need to monitor first and last focusable elements on the form and deal with accordingly - far reaching change.
        if (window.location != window.top.window.location) {
            theWindow.Container.onblur = function() {
                theWindow.Container.focus();
            }
        }

        /*
        doResize(theWindow.Canvas, 300, 200, theWindow.width, theWindow.height, 10, 1, 1, function() {
        theWindow.Canvas.appendChild(theWindow.Container);
        theWindow.Container.focus();
        doFade(theWindow.Container, 0, 100, 10, 1, 1);
        });
        */

        // IE doing some strange stuff re positioning if we set attributes before the elements are placed in the DOM - so we set attributes now
        theWindow.Overlay.style.top = '0px';
        theWindow.Overlay.style.width = oDocument.documentElement.scrollWidth + 'px';
        theWindow.Overlay.style.height = oDocument.documentElement.scrollHeight + 'px';
        theWindow.Overlay.style.position = 'absolute';
        theWindow.Overlay.style.backgroundColor = '#444444';
        theWindow.Overlay.style.filter = 'alpha(opacity:75)';
        theWindow.Overlay.style.MozOpacity = 0.8;
        theWindow.Overlay.style.opacity = 0.8;
        theWindow.Overlay.style.zIndex = 9998;

        return theWindow;

    }

    function closeAECWindow(theWindow) {

        if (theWindow.isOpen && theWindow.Overlay) {
            if (window.ie6 == true) {
                for (var intIndex = document.getElementsByTagName('select').length - 1; intIndex >= 0; intIndex--) {
                    oSelectList = document.getElementsByTagName('select')[intIndex];
                    oSelectList.style.visibility = oSelectList.getAttribute('aecVisibility');
                }
            }

            theWindow.Overlay.parentNode.removeChild(theWindow.Canvas);
            theWindow.Overlay.parentNode.removeChild(theWindow.Overlay);
            theWindow.isOpen = false;

            removeEvent(document, 'keydown', theWindow.keyDownHandler);
            removeEvent(window.top.window, 'resize', theWindow.resizeHandler);

            if (theWindow.onClose) {
                theWindow.onClose.call();
            }
        }

    }

    function keyDownHandler(windowToClose) {

        var theWindow = windowToClose;

        function onKeyDown() {
            if (event.keyCode == 27) {
                theWindow.close();
            }
        }

        theWindow.keyDownHandler = onKeyDown;
        return onKeyDown;

    }

    function resizeHandler(windowToResize) {

        var theWindow = windowToResize;
        var oDocument = window.top.window.document;

        function onResize() {
            theWindow.Overlay.style.width = oDocument.documentElement.scrollWidth + 'px';
            theWindow.Overlay.style.height = oDocument.documentElement.scrollHeight + 'px';
            theWindow.Canvas.style.top = (oDocument.documentElement.clientHeight - theWindow.Canvas.clientHeight) / 2 + 'px';
            theWindow.Canvas.style.left = (oDocument.documentElement.clientWidth - theWindow.Canvas.clientWidth) / 2 + 'px';
        }

        theWindow.resizeHandler = onResize;
        return onResize;

    }

    function addEvent(element, eventName, functionName) {

        if (element.addEventListener) {
            element.addEventListener(eventName, functionName, false);
        } else {
            if (element.attachEvent) {
                element.attachEvent('on' + eventName, functionName);
            }
        }
    }


    function removeEvent(element, eventName, functionName) {

        if (element.removeEventListener) {
            element.removeEventListener(eventName, functionName, false);
        } else {
            if (element.detachEvent) {
                element.detachEvent('on' + eventName, functionName);
            }
        }
    }

}
