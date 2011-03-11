// com_pickbox.ascx associated JScript File

function com_pickbox_setDescription(divId, hdnId, value) {

    var div = document.getElementById(divId);
    var hdn = document.getElementById(hdnId);

    if (hdn) {
        hdn.value = value;
    }
    if (div) {
        if (value != '') {
            div.innerText = '| ' + value;
        } else {
            div.innerText = '';
        }
    }
}

function com_pickbox_getDescription(hdnId) {

    var hdn = document.getElementById(hdnId);
    if (hdn) {
        return hdn.value;
    } else {
        return null;
    }
}

function com_pickbox_handleRefreshCallback(returnValue, context) {

    com_pickbox_setDescription(context + '_divDescription', context + '_hdnDescription', returnValue);

}

function com_pickbox_onKeyDown(e, sender, selectLinkId, refreshLinkId, allowKeyboardSelect) {

    if (allowKeyboardSelect && e.altKey && e.keyCode == 40) {
        var selectLink = document.getElementById(selectLinkId);
        if (selectLink) {
            if (document.all) {
                e.cancelBubble = true;
                e.returnValue = false;
                selectLink.click();
            }
            else {
                e.stopPropagation();
                if (e.cancelable) {
                    e.preventDefault();
                }
                var blnContinue = true;
                if (selectLink.onclick) {
                    blnContinue = selectLink.onclick();
                }
                if (blnContinue) {
                    if (selectLink.href) {
                        if (selectLink.href.length > 0) {
                            window.location.href = selectLink.href;
                        }
                    }
                }
            }
        }
    } else if (e.keyCode == 13) {
        var refreshLink = document.getElementById(refreshLinkId);
        if (refreshLink) {
            if (document.all) {
                e.cancelBubble = true;
                e.returnValue = false;
                refreshLink.click();
            }
            else {
                e.stopPropagation();
                if (e.cancelable) {
                    e.preventDefault();
                }
                var blnContinue = true;
                if (refreshLink.onclick) {
                    blnContinue = refreshLink.onclick();
                }
                if (blnContinue) {
                    if (refreshLink.href) {
                        if (refreshLink.href.length > 0) {
                            window.location.href = refreshLink.href;
                        }
                    }
                }
            }
        }
    }
}

