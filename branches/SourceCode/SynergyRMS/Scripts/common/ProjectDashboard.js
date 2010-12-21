//
// Associated JavaScript File for the Project Dashboard
//
var mDisplayPopup;
var _showHierarchy = false;

// Copied from com_tabstrip.js and modified to position the popup to the right (rather than left) of the event source

//MR46s - now pass in e - event
//NF@#53 - frameName parameter is only used in IE6
//NF@#53s
//function displayHierarchyPopup(e, menuName, popupName) {
function displayHierarchyPopup(e, menuName, popupName, frameName) {
    //NF@#53e
    var x;
    var y;
    var menu;
    var popup;
    //NF@#53s
    var frame;
    //NF@#53e
    //MR46s
    var oEvent = e || window.event;
    //MR46e

    //NF13s
    //    if (mDisplayPopup != popupName) {
    //        doHidePopup(mDisplayPopup)
    //    }
    if (mDisplayPopup != popupName) {
        //NF@#53s
        //        popup = document.getElementById(mDisplayPopup)
        //        if (popup) {
        //            popup.style.visibility = 'hidden';
        //        }
        com_menulist_hideMyPopups();
        //NF@#53e
    }
    //NF13e

    mDisplayPopup = popupName;
    popup = document.getElementById(popupName);
    if (popup.style.visibility == 'hidden') {
        menu = document.getElementById(menuName);

        //MR46s
        x = oEvent.clientX - 8;
        y = oEvent.clientY + 4;
        //MR46e

        popup.style.zindex = 1;
        popup.style.left = x + 'px';
        popup.style.top = y + 'px';
        popup.style.visibility = 'visible';

        //NF@#53s
        if (window.ie6) {
            frame = document.getElementById(frameName);
            frame.style.left = popup.offsetLeft + 'px';
            frame.style.top = popup.offsetTop + 'px';
            frame.style.width = popup.offsetWidth + 'px';
            frame.style.height = popup.offsetHeight + 'px';
            frame.style.visibility = 'visible';
        }
        //NF@#53e

        //Prevent the document catching the on click
        //MR46s
        //window.event.cancelBubble = true;
        cancelBubble(oEvent);
        //MR46e
    }
}

function GetDefaultWidth(txtWidth) {

    var nval
    nval = document.getElementById(txtWidth);
    nval.value = (document.documentElement.clientWidth - 20);

}

function GetDefaultHeight(txtHeight) {

    var nval
    nval = document.getElementById(txtHeight);
    nval.value = (document.documentElement.clientHeight - 75);

}

//NF13s
//function hideHierarchyPopup() {

//        var popup;
//        var popupName;
//        
//    if (_showHierarchy == false) {
//        
//        popupName = 'divTabStrip_mnuHierarchy';
//                                             
//        popup = document.getElementById(popupName);
//        if (popup) {
//            popup.style.visibility = 'hidden';
//            //mDisplayPopup = '';
//            mMenuHidden = true;
//        }                    
//    }
//    
//}
//NF13e

// JScript File
