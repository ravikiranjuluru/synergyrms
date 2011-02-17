var siteNavigation = {

    initialise: function(item) {

        if (item) {
            if (typeof item == 'string') {
                item = document.getElementById(item);
            }

            if (item) {
                if (window.ie) {
                    addEvent(getParentNode(item), 'resize', function() {
                        window.siteNavigation.doResize(item);
                    });
                } else {
                    getParentNode(item).resizeInterval = window.setInterval(window.siteNavigation.doResize, 100, item, null);
                }
            }
        }
    },


    doResize: function(item) {

        var oContainer = getParentNode(item);
        var oNavStrip = item.getElementsByTagName('DIV')[0];
        var oScrollLeft = getPreviousSibling(getParentNode(oNavStrip));
        var oScrollRight = getNextSibling(getParentNode(oNavStrip));

        //Determine the Width of the Navigation Strip
        oNavStrip.style.width = oContainer.offsetWidth - (oScrollLeft ? oScrollLeft.offsetWidth + oScrollRight.offsetWidth : 0) + 'px';

        //Configure the appearance of the Scrollers
        if (oScrollLeft) {
            oScrollLeft.className = (oNavStrip.scrollLeft > 0) ? 'scrollleft scrollenabled' : 'scrollleft scrolldisabled';
            oScrollRight.className = (oNavStrip.scrollLeft < (oNavStrip.scrollWidth - oNavStrip.offsetWidth)) ? 'scrollright scrollenabled' : 'scrollright scrolldisabled';
        }

        //Firefox Bug: 
        //Firefox maintains scroll position even when there is no scrollable area, we need to manage this manually
        if (window.mozilla) {
            if (oNavStrip.offsetWidth + oNavStrip.scrollLeft > getFirstChild(oNavStrip).offsetWidth) {
                oNavStrip.scrollLeft = getFirstChild(oNavStrip).offsetWidth - oNavStrip.offsetWidth;
            }
        }

        //Ensure the Menu's are in sync with their owner
        window.siteNavigation.doSyncMenus(oNavStrip);
    },


    doScroll: function(item, direction) {

        //Register the onScroll Event - Enable/Disable the scrollers as required
        item.onscroll = function() {
            getPreviousSibling(getParentNode(this)).className = (this.scrollLeft > 0) ? 'scrollleft scrollenabled' : 'scrollleft scrolldisabled';
            getNextSibling(getParentNode(this)).className = (this.scrollLeft < (this.scrollWidth - this.offsetWidth)) ? 'scrollright scrollenabled' : 'scrollright scrolldisabled';

            if (this.scrollBar) {
                if (this.scrollBar.style.display != 'none') {
                    this.scrollBar.style.left = this.scrollLeft / (this.scrollWidth / this.offsetWidth) + 'px';
                }
            }
        };

        //Start scrolling
        doScrollStart(item, direction, new window.siteNavigation.onScrollCompleteHandler(item));
    },


    onScrollCompleteHandler: function(item) {

        function onScrollComplete() {
            window.siteNavigation.doSyncMenus(item);
        }

        return onScrollComplete;
    },


    doSyncMenus: function(navStrip) {

        var oNavStrip = navStrip;
        var colMenus = getElementsByClassName(oNavStrip, 'slide');
        var oMenuItems = null;
        var intPadding = 0;
        var oParent = null;

        for (var intIndex = 0; intIndex < colMenus.length; intIndex++) {
            //Determine the Owner of the current Menu
            oParent = getParentNode(colMenus[intIndex]);

            //Ensure all 'Flat' menu's fit within the Window (they have thier own scrolling capability so we can shrink at will)
            if (getFirstChild(colMenus[intIndex]).className == 'flat') {
                //Initialise variables                
                oMenuItems = colMenus[intIndex].getElementsByTagName('DIV')[0];

                //Determine the padding by which to offset - this is the width of the 2 scrollers (left and right)
                intPadding = getOuterWidth(colMenus[intIndex]) + getPreviousSibling(getParentNode(oMenuItems)).offsetWidth + getNextSibling(getParentNode(oMenuItems)).offsetWidth;

                //Size the Menu and its content based on the size of the Window
                oMenuItems.style.width = Math.max(oParent.offsetWidth - getOuterWidth(oParent), Math.min(oMenuItems.scrollWidth + intPadding, document.documentElement.clientWidth - 32)) - intPadding + 'px';
                colMenus[intIndex].style.width = oMenuItems.offsetWidth + (intPadding - getOuterWidth(colMenus[intIndex])) + 'px';

                //Configure the Menu scrollers        
                getPreviousSibling(getParentNode(oMenuItems)).className = (oMenuItems.scrollLeft > 0) ? 'scrollleft scrollenabled' : 'scrollleft scrolldisabled';
                getNextSibling(getParentNode(oMenuItems)).className = (oMenuItems.scrollLeft < (oMenuItems.scrollWidth - oMenuItems.offsetWidth)) ? 'scrollright scrollenabled' : 'scrollright scrolldisabled';
            }

            //Position the Menu in relation to its Parent and the Window - the menu should never be wider than the available screen width (unles the screen is really small)
            if (!window.ie6) {
                colMenus[intIndex].style.left = Math.max(16, Math.min(document.documentElement.clientWidth - (getOuterWidth(colMenus[intIndex]) + getFirstChild(colMenus[intIndex]).offsetWidth + 16), (getAbsoluteLeft(oParent) - oNavStrip.scrollLeft - ((getOuterWidth(colMenus[intIndex]) + getFirstChild(colMenus[intIndex]).offsetWidth) - oParent.offsetWidth)) - 1)) + 'px';
            } else {
                getFirstChild(colMenus[intIndex]).style.width = colMenus[intIndex].offsetWidth - 4 + 'px';
                getFirstChild(colMenus[intIndex]).style.height = colMenus[intIndex].offsetHeight - 4 + 'px';
            }
        }
    },


    doSelectItem: function(sender, scrollIntoView) {

        if (sender) {
            if (typeof sender == 'string') {
                sender = document.getElementById(sender);
            }

            if (sender) {
                var oCurrentElement = sender;
                var oLevel1Item = null;
                var colLevel1Items = null;

                while (oLevel1Item == null) {
                    if (oCurrentElement.className.contains('level1') == true) {
                        oLevel1Item = oCurrentElement;
                        colLevel1Items = getChildNodes(getParentNode(oLevel1Item));
                    }

                    oCurrentElement = getParentNode(oCurrentElement);
                }

                for (var intIndex = 0; intIndex < colLevel1Items.length; intIndex++) {
                    colLevel1Items[intIndex].className = colLevel1Items[intIndex].className.replace(' selected', '');
                }

                if (oLevel1Item != null) {
                    oLevel1Item.className += ' selected';

                    if (scrollIntoView == true) {
                        var oNavStrip = getParentNode(getParentNode(getParentNode(getParentNode(oLevel1Item))));

                        if (window.ie) {
                            if (oLevel1Item.offsetLeft + oLevel1Item.offsetWidth > oNavStrip.offsetWidth + oNavStrip.scrollLeft) {
                                oNavStrip.scrollLeft = (oLevel1Item.offsetLeft + oLevel1Item.offsetWidth) - oNavStrip.offsetWidth;
                            } else {
                                if (oLevel1Item.offsetLeft < oNavStrip.scrollLeft) {
                                    oNavStrip.scrollLeft = oLevel1Item.offsetLeft;
                                }
                            }
                        } else {
                            oLevel1Item.scrollIntoView(false);
                        }

                        siteNavigation.doSyncMenus(oNavStrip);
                    }
                }
            }
        }
    },


    doRefresh: function(item) {

        if (item) {
            if (typeof item == 'string') {
                item = document.getElementById(item);
            }

            if (item) {
                var oRoot = null;
                var oCurrentElement = item;

                while (oRoot == null) {
                    if (oCurrentElement.className.startsWith('agnav_') == true) {
                        oRoot = oCurrentElement;
                    }

                    oCurrentElement = getParentNode(oCurrentElement);
                }

                window.siteNavigation.doCallback(oRoot.id, 'doRefresh:' + item.id, 'doRefresh:' + item.id);
            }
        }
    },


    doShowPopup: function(url) {

        url += url.contains('?') ? '&' : '?';
        url += 'WindowMode=1';

        AECWinPopup.open(url, 850, 500, window.siteNavigation.popupCallback, '', true, null, window.top.window.document);
    },


    popupCallback: function(context, returnValue) {


    },


    doCallback: function(target, argument, context) {

        //<%Response.Write(Page.ClientScript.GetCallbackEventReference(Me, "argument", "window.siteNavigation.callbackHandler", "context", true))%>;
        WebForm_DoCallback(target, argument, window.siteNavigation.callbackHandler, context, null, true);
    },


    callbackHandler: function(returnValue, context) {

        var strContext = context;
        var strArgument = null;

        if (context.contains(':') == true) {
            strContext = context.substring(0, context.indexOf(":"));
            strArgument = context.substring(strContext.length + 1)
        }

        switch (strContext) {
            case 'doRefresh':
                var oItem = document.getElementById(strArgument);

                if (oItem) {
                    oItem.innerHTML = returnValue;
                    oItem.className = oItem.className.replace(' hover', '');

                    //Ensure the menu is resized accodingly - this assumes oItem is at level 1 for now, this may be extended in the future to support further levels
                    window.siteNavigation.doSyncMenus(getParentNode(getParentNode(getParentNode(getParentNode(oItem)))));
                }

                break;

            default:
                break;
        }
    }
}