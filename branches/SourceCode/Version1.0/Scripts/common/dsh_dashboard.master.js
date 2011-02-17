// variable instance of the resize handler class
var var_dashboardmasterResizeHandler;

// class to act as handler for resizing the dashboard elements table
function dsh_dashboardmaster_resizeHandler(resizeableTableId, intColumnCount, intRowCount) {

    var m_tableId = resizeableTableId;
    var m_intColumnCount = intColumnCount;
    var m_intRowCount = intRowCount;

    function onresize() {
        dsh_dashboardmaster_resizeElements(m_tableId, m_intColumnCount, m_intRowCount);
    }
    this.onresize = onresize;
}


function dsh_dashboardmaster_registerResizeElements(resizeableTableId, colCount, rowCount) {

    var_dashboardmasterResizeHandler = new dsh_dashboardmaster_resizeHandler(resizeableTableId, colCount, rowCount);

    addEvent(window, 'resize', var_dashboardmasterResizeHandler.onresize);

    dsh_dashboardmaster_resizeElements(resizeableTableId, colCount, rowCount);

}


function dsh_dashboardmaster_resizeElements(resizeableTableId, colCount, rowCount) {

    var oTable = document.getElementById(resizeableTableId);
    var oContainer = getParentNode(oTable);
    var intCanvasWidth = document.documentElement.clientWidth - getOuterWidth(oContainer) - getOuterWidth(oTable);
    var intCanvasHeight = document.documentElement.clientHeight - oTable.offsetTop - oContainer.style.paddingBottom.toInteger(0) - oContainer.style.borderBottomWidth.toInteger(0) - oTable.style.paddingBottom.toInteger(0) - oTable.style.borderBottomWidth.toInteger(0);
    var intHeight = 0;
    var intHeightDif = 0;
    var intHeightDifProp = 0;
    var oLastElement = null;

    for (var intIndex = 0, oElement = null; intIndex < document.getElementsByTagName('div').length, oElement = document.getElementsByTagName('div')[intIndex]; intIndex++) {
        if (oElement.id.contains('dsh_dashboard_divElement') == true) {
            intHeight = ((intCanvasHeight / rowCount) * getParentNode(oElement).getAttribute('rowspan')) - oElement.offsetTop - getOuterHeight(getParentNode(oElement)) - getOuterHeight(oElement) - 2;

            //Need to element heights that exceed the amount that should have assigned - this may cause subsequent element exceed available screen space - we will sort this later
            if (100 > intHeight) {
                intHeightDif += 100 - intHeight;
            }

            oElement.style.height = Math.max(100, intHeight) + 'px';

            //We set the height first and then determine the available width as scrollbars may have been present at the document level prior to setting the height, this affects the clientWidth measure.
            var intCanvasWidth = document.documentElement.clientWidth - getOuterWidth(oContainer) - getOuterWidth(oTable);

            if (window.webkit == true) {
                oElement.style.width = Math.max(100, ((intCanvasWidth / colCount) * getParentNode(oElement).getAttribute('colspan'))) + 'px';
            } else {
                oElement.style.width = Math.max(100, ((intCanvasWidth / colCount) * getParentNode(oElement).getAttribute('colspan')) - getOuterWidth(getParentNode(oElement)) - getOuterWidth(oElement)) + 'px';
            }

            oLastElement = oElement;
        }
    }

    //Run through each element and remove a relevant proportion of the height if the overall client height has been exceeded - reduce the posibility of a vertical scrollbar appearing on the main window
    if (intHeightDif > 0) {
        for (var intIndex = 0, oElement = null; intIndex < document.getElementsByTagName('div').length, oElement = document.getElementsByTagName('div')[intIndex]; intIndex++) {
            if (oElement.id.contains('dsh_dashboard_divElement') == true) {
                if (oElement.offsetHeight > 100) {
                    intHeightDifProp = Math.min(oElement.offsetHeight - 100, parseInt((intHeightDif / rowCount) * getParentNode(oElement).getAttribute('rowspan')) + 1);
                    intHeightDif -= intHeightDifProp;

                    if (oElement == oLastElement) {
                        intHeightDifProp += intHeightDif;
                    }

                    oElement.style.height = Math.max(100, (oElement.offsetHeight - intHeightDifProp)) + 'px';
                }

                //We set the height first and then determine the available width as scrollbars may have been present at the document level prior to setting the height, this affects the clientWidth measure.
                var intCanvasWidth = document.documentElement.clientWidth - getOuterWidth(oContainer) - getOuterWidth(oTable);

                if (window.webkit == true) {
                    oElement.style.width = Math.max(100, ((intCanvasWidth / colCount) * getParentNode(oElement).getAttribute('colspan'))) + 'px';
                } else {
                    oElement.style.width = Math.max(100, ((intCanvasWidth / colCount) * getParentNode(oElement).getAttribute('colspan')) - getOuterWidth(getParentNode(oElement)) - getOuterWidth(oElement)) + 'px';
                }
            }
        }
    }

    for (var intIndex = 0, oElement = null; intIndex < document.getElementsByTagName('div').length, oElement = document.getElementsByTagName('div')[intIndex]; intIndex++) {
        if (oElement.id.contains('dsh_dashboard_divElement') == true) {
            //fireEvent('foobar', oElement);
            if (oElement.onresize) {
                oElement.onresize.call();
            }
        }
    }
}





function fireEvent(name, target) {
    //Ready: create a generic event
    var evt = document.createEvent("Events")
    //Aim: initialize it to be the event we want
    evt.initUIEvent(name, true, true, window, 1); //true for can bubble, true for cancelable
    //FIRE!
    target.dispatchEvent(evt);
}

