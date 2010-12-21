// TabStrip.js JScript File
var mDisplayPopup;

function displayPopup(menuName, popupName) {
    var x;
    var y;
    var menu;
    var popup;

    if (mDisplayPopup != popupName) {
        doHidePopup(mDisplayPopup)
    }

    mDisplayPopup = popupName;
    popup = document.getElementById(popupName);
    if (popup.style.visibility == 'hidden') {
        menu = document.getElementById(menuName);

        x = (event.clientX - popup.offsetWidth) + 8;
        y = event.clientY + 4;

        popup.style.zindex = 1;
        popup.style.left = x + 'px';
        popup.style.top = y + 'px';
        popup.style.visibility = 'visible';
    }
}

function hidePopup(popupName, timeout) {
    mDisplayPopup = '';
    setTimeout("doHidePopup('" + popupName + "');", timeout);
}

function doHidePopup(popupName) {
    var popup;

    if (mDisplayPopup != popupName) {
        popup = document.getElementById(popupName)
        if (popup) {
            popup.style.visibility = 'hidden';
        }
    }
}


// --------------------------------
// tab control resize / scroll code
// --------------------------------
var com_tabstripheaderScriptPropertyHandlers = new Array();
var scrollLeftImage;
var scrollLeftImageDisabled;
var scrollRightImage;
var scrollRightImageDisabled;

function com_tabstripheader_Properties(controlClientId, divTabContainerId, tabStripId, imgScrollLeftId, imgScrollRightId, btnScrollLeftId, btnScrollRightId, tdStretchId) {

    var m_strClientId = controlClientId;
    this.ClientId = controlClientId;
    this.DivTabContainerClientId = divTabContainerId;
    this.TabStripClientId = tabStripId;
    this.ImageScrollLeftClientId = imgScrollLeftId;
    this.ImageScrollRightClientId = imgScrollRightId;
    this.ButtonScrollLeftClientId = btnScrollLeftId;
    this.ButtonScrollRightClientId = btnScrollRightId;
    this.CellStretchId = tdStretchId;
    this.Interval = -1;
    this.Timeout = -1;

    function onresize() {
        com_tabstripheader_resizeControl(m_strClientId);
    }

    this.onresize = onresize;

    function onload() {
        com_tabstripheader_loadControl(m_strClientId);
    }

    this.onload = onload;
}

function com_tabstripheader_getControlProperties(controlClientId) {

    var i = 0;

    while (i <= com_tabstripheaderScriptPropertyHandlers.length) {
        if (com_tabstripheaderScriptPropertyHandlers[i].ClientId == controlClientId) {
            return com_tabstripheaderScriptPropertyHandlers[i];
            break;
        }

        i += 1;
    }

}


function com_tabstripheader_tabScrollLeft(controlClientId) {

    var control = com_tabstripheader_getControlProperties(controlClientId);

    com_tabstripheader_doScroll(controlClientId, 'left');
    var nTimeout = setTimeout("com_tabstripheader_startScrolling('" + controlClientId + "', 'left')", 500);

    control.Timeout = nTimeout;

}

function com_tabstripheader_tabScrollRight(controlClientId) {

    var control = com_tabstripheader_getControlProperties(controlClientId);

    com_tabstripheader_doScroll(controlClientId, 'right');
    var nTimeout = setTimeout("com_tabstripheader_startScrolling('" + controlClientId + "', 'right')", 500);

    control.Timeout = nTimeout;

}


function com_tabstripheader_loadControl(controlClientId) {

    var control = com_tabstripheader_getControlProperties(controlClientId);

    var divTabContainer = document.getElementById(control.DivTabContainerClientId);
    var imgScrollRight = document.getElementById(control.ImageScrollRightClientId);
    var btnScrollRight = document.getElementById(control.ButtonScrollRightClientId);
    var tdStretch = document.getElementById(control.CellStretchId);

    setDivContainerWidth(divTabContainer, tdStretch);

    if (divTabContainer.scrollWidth > divTabContainer.style.pixelWidth) {
        if ((btnScrollRight) && (imgScrollRight)) {
            btnScrollRight.className = 'tabScrollButtonEnabled';
            imgScrollRight.src = scrollRightImage;
        }
    }

}

function setDivContainerWidth(divTabContainerObject, tdStretchObject) {

    //varStatus = divTabContainerObject.parentNode.parentNode.parentNode.parentNode.tagName + '-' + divTabContainerObject.parentNode.parentNode.parentNode.parentNode.id;
    //varWidth = divTabContainerObject.parentNode.parentNode.parentNode.parentNode.clientWidth - 50;
    varWidth = document.body.clientWidth - 70;

    divTabContainerObject.style.pixelWidth = varWidth;
    //window.status = varStatus + '-' + varWidth;
    //tdStretchObject.style.pixelWidth = divTabContainerObject.style.pixelWidth;

}


function com_tabstripheader_resizeControl(controlClientId) {

    var control = com_tabstripheader_getControlProperties(controlClientId);

    var divTabContainer = document.getElementById(control.DivTabContainerClientId);
    var tabStrip = document.getElementById(control.TabStripClientId);
    var imgScrollLeft = document.getElementById(control.ImageScrollLeftClientId);
    var imgScrollRight = document.getElementById(control.ImageScrollRightClientId);
    var btnScrollLeft = document.getElementById(control.ButtonScrollLeftClientId);
    var btnScrollRight = document.getElementById(control.ButtonScrollRightClientId);
    var tdStretch = document.getElementById(control.CellStretchId);


    //divTabContainer.style.pixelWidth = document.body.clientWidth - 70;
    setDivContainerWidth(divTabContainer, tdStretch);
    //tdStretch.style.pixelWidth = divTabContainer.style.pixelWidth;
    //imgScrollRight.pixelLeft = divTabContainer.style.pixelLeft + divTabContainer.style.pixelWidth + 10;

    if ((divTabContainer.style.pixelLeft < 0) && (divTabContainer.style.pixelWidth + (tabStrip.style.pixelLeft * -1) > divTabContainer.scrollWidth)) {
        tabStrip.style.pixelLeft = com_tabstripheader_min((divTabContainer.scrollWidth - divTabContainer.style.pixelWidth) * -1, 0);
    }

    if (divTabContainer.scrollWidth > divTabContainer.style.pixelWidth) {
        if (tabStrip.style.pixelLeft == 0) {
            if ((btnScrollLeft) && (imgScrollLeft)) {
                btnScrollLeft.className = 'tabScrollButtonDisabled';
                imgScrollLeft.src = scrollLeftImageDisabled;
            }
        }

        if ((divTabContainer.style.pixelWidth + (tabStrip.style.pixelLeft * -1)) < divTabContainer.scrollWidth) {
            if ((btnScrollRight) && (imgScrollRight)) {
                btnScrollRight.className = 'tabScrollButtonEnabled';
                imgScrollRight.src = scrollRightImage;
            }
        } else {
            if ((btnScrollRight) && (imgScrollRight)) {
                btnScrollRight.className = 'tabScrollButtonDisabled';
                imgScrollRight.src = scrollRightImageDisabled;
            }
        }
    } else {
        if (btnScrollLeft) {
            btnScrollLeft.className = 'tabScrollButtonDisabled';
        }
        if (imgScrollLeft) {
            imgScrollLeft.src = scrollLeftImageDisabled;
        }
        if (btnScrollRight) {
            btnScrollRight.className = 'tabScrollButtonDisabled';
        }
        if (imgScrollRight) {
            imgScrollRight.src = scrollRightImageDisabled;
        }
    }
}



function com_tabstripheader_doScroll(controlClientId, tDirection) {

    var control = com_tabstripheader_getControlProperties(controlClientId);

    //    var divTabContainer = document.getElementById("divTabContainer");
    //    var tabStrip = document.getElementById("tabStrip");
    //    var imgScrollLeft = document.getElementById("imgScrollLeft");
    //    var imgScrollRight = document.getElementById("imgScrollRight");
    //    var btnScrollLeft =  document.getElementById("btnScrollLeft");
    //    var btnScrollRight =  document.getElementById("btnScrollRight");
    var divTabContainer = document.getElementById(control.DivTabContainerClientId);
    var tabStrip = document.getElementById(control.TabStripClientId);
    var imgScrollLeft = document.getElementById(control.ImageScrollLeftClientId);
    var imgScrollRight = document.getElementById(control.ImageScrollRightClientId);
    var btnScrollLeft = document.getElementById(control.ButtonScrollLeftClientId);
    var btnScrollRight = document.getElementById(control.ButtonScrollRightClientId);

    if (divTabContainer.scrollWidth > divTabContainer.style.pixelWidth) {
        if (tDirection == 'left') {

            if ((btnScrollRight) && (imgScrollRight)) {
                btnScrollRight.className = 'tabScrollButtonEnabled';
                imgScrollRight.src = scrollRightImage;
            }

            if (tabStrip.style.pixelLeft < 0) {
                tabStrip.style.pixelLeft += com_tabstripheader_min(tabStrip.style.pixelLeft * -1, 10);
            }

            if (tabStrip.style.pixelLeft == 0) {
                if ((btnScrollLeft) && (imgScrollLeft)) {
                    btnScrollLeft.className = 'tabScrollButtonDisabled';
                    imgScrollLeft.src = scrollLeftImageDisabled;
                }

                com_tabstripheader_stopScrolling(controlClientId);
            }
        } else {

            if ((btnScrollLeft) && (imgScrollLeft)) {
                btnScrollLeft.className = 'tabScrollButtonEnabled';
                imgScrollLeft.src = scrollLeftImage;
            }

            if ((divTabContainer.scrollWidth + tabStrip.style.pixelLeft) > divTabContainer.style.pixelWidth) {
                tabStrip.style.pixelLeft -= com_tabstripheader_min((divTabContainer.scrollWidth + tabStrip.style.pixelLeft) - divTabContainer.style.pixelWidth, 10);
            }

            if ((divTabContainer.scrollWidth + tabStrip.style.pixelLeft) == divTabContainer.style.pixelWidth) {
                if ((btnScrollRight) && (imgScrollRight)) {
                    btnScrollRight.className = 'tabScrollButtonDisabled';
                    imgScrollRight.src = scrollRightImageDisabled;
                }
                com_tabstripheader_stopScrolling(controlClientId);
            }
        }
    }
}



function com_tabstripheader_startScrolling(controlClientId, tDirection) {

    var control = com_tabstripheader_getControlProperties(controlClientId);
    var i = 0;

    //	nInterval = setInterval("com_tabstripheader_doScroll('" + controlClientId + "', '" + divTabContainerId + "', '" + tabStripId + "', '" + imgScrollLeftId + "', '" + imgScrollRightId + "', '" + btnScrollLeftId + "', '" + btnScrollRightId + "' ,'" + tDirection + "')", 25);
    var nInterval = setInterval("com_tabstripheader_doScroll('" + controlClientId + "', '" + tDirection + "')", 25);

    //    while (i <= com_tabstripheaderTimerHandlers.length -1)
    //        {
    //            if (com_tabstripheaderTimerHandlers[i].TabControlClientID == ControlClientId)
    //                {
    //                    com_tabstripheaderTimerHandlers[i].ControlInterval = nInterval;
    //                    break;
    //                }
    //        
    //            i+=1;
    //        }
    control.Interval = nInterval;
}


function com_tabstripheader_stopScrolling(controlClientId) {

    var control = com_tabstripheader_getControlProperties(controlClientId);

    //    // find the interval and timeout values from the array
    //    var i = 0;
    //    var nInterval = -1;
    //    var nTimeout = -1;
    //      
    //    while (i <= com_tabstripheaderTimerHandlers.length -1)
    //    {
    //        if (com_tabstripheaderTimerHandlers[i].TabControlClientID == controlClientId)
    //            {
    //                nTimeout = com_tabstripheaderTimerHandlers[i].ControlTimeout;
    //                nInterval = com_tabstripheaderTimerHandlers[i].ControlInterval;
    //                break;
    //            }
    //    
    //        i+=1;
    //    }

    if (control.Interval != -1) {
        clearInterval(control.Interval);
        clearTimeout(control.Timeout);
    }

}


function com_tabstripheader_min(nValue1, nValue2) {

    var nReturnValue = nValue1;

    if (nValue2 < nValue1) {
        nReturnValue = nValue2;
    }

    return nReturnValue;
}

function com_tabstripheader_registerScriptHandler(controlClientId, divTabContainerId, tabStripId, imgScrollLeftId, imgScrollRightId, btnScrollLeftId, btnScrollRightId, tdStretchId) {

    var index;
    var bIE = document.all ? true : false; // initialize var to identify IE

    // store the control client ids
    index = com_tabstripheaderScriptPropertyHandlers.length;
    com_tabstripheaderScriptPropertyHandlers[index] = new com_tabstripheader_Properties(controlClientId, divTabContainerId, tabStripId, imgScrollLeftId, imgScrollRightId, btnScrollLeftId, btnScrollRightId, tdStretchId);

    if (bIE) {
        window.attachEvent('onresize', com_tabstripheaderScriptPropertyHandlers[index].onresize);
        window.attachEvent('onload', com_tabstripheaderScriptPropertyHandlers[index].onload);
    } else {
        window.addEventListener('resize', com_tabstripheaderScriptPropertyHandlers[index].onresize, false);
        window.addEventListener('load', com_tabstripheaderScriptPropertyHandlers[index].onload, false);
    }

    com_tabstripheader_loadControl(controlClientId);
    com_tabstripheader_resizeControl(controlClientId);

}


function com_tabstripheader_registerImageFilePaths(scrollLeft, scrollLeftDisabled, scrollRight, scrollRightDisabled) {

    scrollLeftImage = scrollLeft;
    scrollLeftImageDisabled = scrollLeftDisabled;
    scrollRightImage = scrollRight;
    scrollRightImageDisabled = scrollRightDisabled;

}

// --------------------------------
//              End    
// --------------------------------
