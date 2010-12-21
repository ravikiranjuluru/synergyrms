// JScript File
var com_menulist_currentDisplayPopup = '';
var com_menulist_currentmenu = null;
var com_menulist_currentmenu_backgroundcolor;
var com_menulist_clickHandlerRegistered = false;
var com_menulist_cancelTimeout = false;


function com_menulist_timeoutHider() {

    if (!com_menulist_cancelTimeout) {
        com_menulist_hideMyPopups();
    }
}

function com_menulist_doSetTimeoutHider() {

    if (!com_menulist_cancelTimeout) {
        //call code to do timeout 1 second later (in case cancelled)
        window.setTimeout('com_menulist_timeoutHider()', 1000);
    }

}

function com_menulist_setTimeoutHider() {
    com_menulist_cancelTimeout = false;
    //call code to register timeout hider called 1 second later (in case cancelled)
    window.setTimeout('com_menulist_doSetTimeoutHider()', 1000);
}


function com_menulist_popupOnMouseOver() {
    com_menulist_cancelTimeout = true;
}

function com_menulist_popupOnMouseOut() {
    com_menulist_setTimeoutHider();
}

function com_menulist_menuOnMouseOver(item, backgroundColor, borderColor) {

    if (item != com_menulist_currentmenu) {
        item.style.backgroundColor = backgroundColor;

        //item.style.borderColor = borderColor;


        getFirstChild(item).tBodies[0].rows[0].cells[0].style.borderColor = borderColor || backgroundColor;
        if (getFirstChild(item).tBodies[0].rows[0].cells[1]) {
            getFirstChild(item).tBodies[0].rows[0].cells[1].style.borderColor = borderColor || backgroundColor;
        }

        //item.firstChild.firstChild.firstChild.childNodes[0].style.borderColor = borderColor; 
        //item.firstChild.firstChild.firstChild.childNodes[1].style.borderColor = borderColor;


    } else {
        com_menulist_cancelTimeout = true;
    }
}

function com_menulist_menuOnMouseOut(item, backgroundColor) {

    //window.status = 'mouseout';

    if (item != com_menulist_currentmenu) {
        item.style.backgroundColor = backgroundColor;

        //item.style.borderColor = backgroundColor;

        getFirstChild(item).tBodies[0].rows[0].cells[0].style.borderColor = backgroundColor;
        if (getFirstChild(item).tBodies[0].rows[0].cells[1]) {
            getFirstChild(item).tBodies[0].rows[0].cells[1].style.borderColor = backgroundColor;
        }
        //item.firstChild.firstChild.firstChild.childNodes[0].style.borderColor = backgroundColor; 
        //item.firstChild.firstChild.firstChild.childNodes[1].style.borderColor = backgroundColor;    


    } else {
        com_menulist_setTimeoutHider();
    }
}

function com_menulist_showPopup(evt, owner, popupId, alignment, backgroundColor, highlightColor, borderColor) {

    // show the appropriate popup

    var x;
    var y;
    var popup;


    popup = document.getElementById(popupId);


    // if the user clicks on a different menu flag to menuhidden to hide other menu
    if (com_menulist_currentDisplayPopup == popupId) {

        //popup currently displayed, just hide it 
        com_menulist_hideAllPopups(window.top);
        com_menulist_menuOnMouseOver(owner, backgroundColor, borderColor);
    }
    else {

        //hide any existing popups & cancel timeouts
        com_menulist_cancelTimeout = true;
        com_menulist_hideAllPopups(window.top);
        popup.style.zindex = 1000;

        //position the box then show it       
        com_menulist_movebox(owner, popup, alignment);

        popup.style.visibility = 'visible';
        com_menulist_currentDisplayPopup = popupId;
        com_menulist_currentmenu = owner;
        com_menulist_currentmenu_backgroundcolor = backgroundColor;
        owner.style.backgroundColor = highlightColor;

        //        owner.firstChild.firstChild.firstChild.childNodes[0].style.borderColor = borderColor;
        //        owner.firstChild.firstChild.firstChild.childNodes[1].style.borderColor = borderColor;

        owner.style.borderColor = borderColor;
    }


    //Prevent the document catching the on click
    evt.cancelBubble = true;
    if (evt.stopPropogation) {
        evt.stopPropogation();
    }

}


function com_menulist_hideMyPopups() {

    //code to hide all popups on current window
    var popup;
    var popupId;

    try {
        if (com_menulist_divIds) {
            for (var counter = 0; counter < com_menulist_divIds.length; counter++) {
                popupId = com_menulist_divIds[counter];
                popup = document.getElementById(popupId);
                if (popup) {
                    popup.style.visibility = 'hidden';
                }
            }
        }
        com_menulist_lastDisplayPopup = com_menulist_currentDisplayPopup;
        com_menulist_currentDisplayPopup = '';
        if (com_menulist_currentmenu) {
            com_menulist_currentmenu.style.backgroundColor = com_menulist_currentmenu_backgroundcolor;
            com_menulist_currentmenu.style.borderColor = com_menulist_currentmenu_backgroundcolor;
            com_menulist_currentmenu = null;
        }
    }
    catch (err) {

    }
}


function com_menulist_hideAllPopups(topWindow) {


    if (topWindow.com_menulist_hideMyPopups) {
        topWindow.com_menulist_hideMyPopups();
    }

    //Hide child popus
    if (topWindow.frames) {
        for (var i = 0; i < topWindow.frames.length; i++) {
            if (topWindow.frames[i].com_menulist_hideAllPopups) {
                topWindow.frames[i].com_menulist_hideAllPopups(topWindow.frames[i]);
            }
        }
    }
}


function com_menulist_registerHandler() {

    var bIE = document.all ? true : false; // initialize var to identify IE

    if (!com_menulist_clickHandlerRegistered) {
        if (bIE) {
            document.attachEvent('onclick', com_menulist_documentOnClickHandler);
        } else {
            document.addEventListener('click', com_menulist_documentOnClickHandler, false);
        }
        com_menulist_clickHandlerRegistered = true;
    }
}


function com_menulist_documentOnClickHandler() {

    //call to hide popups
    com_menulist_hideAllPopups(window.top);
}


// Moves the box object to be directly beneath an object.
function com_menulist_movebox(owner, box, alignment) {

    var cleft = 0;
    var ctop = 0;
    var obj = owner;

    while (obj.offsetParent) {
        cleft += obj.offsetLeft;
        ctop += obj.offsetTop;
        obj = obj.offsetParent;
    }


    //align the box to the right if set.
    if (alignment.toLowerCase() == 'right') {
        cleft = cleft - (box.clientWidth - owner.offsetWidth) - 2;
    }

    box.style.left = cleft + 'px';

    ctop += owner.offsetHeight + 1;

    // Handle Internet Explorer body margins,
    // which affect normal document, but not
    // absolute-positioned stuff.
    if (document.body.currentStyle &&
        document.body.currentStyle['marginTop']) {

        ctop += parseInt(document.body.currentStyle['marginTop']);
    }

    //box.style.top = ctop + 'px';

}

