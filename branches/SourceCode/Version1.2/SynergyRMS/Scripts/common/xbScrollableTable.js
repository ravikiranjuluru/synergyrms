/**************************************************************************************************************************************************
Atlantic Global Cross Browser Scrollable Table Javascript Library
**************************************************************************************************************************************************/

var xbScrollableTable = {

    initialise: function (table, minBodyHeight, overflowX, overflowY) {

        var blnContinue = false;

        with (this.validateTable(table, false)) {
            if (isValid == true) {
                table = tableElement;
                blnContinue = true;
            }
        }

        if (blnContinue == true) {
            var divContainer = table.parentNode.parentNode;
            var divHead = document.createElement('div');
            var tblHead = document.createElement('table');
            var divBody = table.parentNode;
            var divFoot = table.tFoot ? document.createElement('div') : null;
            var tblFoot = table.tFoot ? document.createElement('table') : null;

            //First thing we need to do is ensure all whitespace is removed from the table
            removeWhitespace(table);

            //Create the new Head table				
            tblHead.appendChild(table.tHead.cloneNode(true));

            //CloneNode does not clone the selectedIndex of any SelectLists, we need to tie these up manually
            if (tblHead.getElementsByTagName('SELECT').length > 0) {
                for (var intIndex = 0; intIndex < tblHead.getElementsByTagName('SELECT').length; intIndex++) {
                    tblHead.getElementsByTagName('SELECT')[intIndex].value = table.getElementsByTagName('SELECT')[intIndex].value;
                }
            }

            //Apply relevant styles to the Head table
            tblHead.id = table.id + '_Head';
            tblHead.className = table.className;
            tblHead.border = table.border;
            tblHead.cellSpacing = table.cellSpacing;
            tblHead.cellPadding = table.cellPadding;
            tblHead.width = '100%';

            //			for (var intRowIndex = 0; intRowIndex < table.tHead.rows.length; intRowIndex++) {
            //                for (var intCellIndex = 0; intCellIndex < table.tHead.rows[intRowIndex].cells.length; intCellIndex++) {
            //                    tblHead.rows[intRowIndex].cells[intCellIndex].style = table.tHead.rows[intRowIndex].cells[intCellIndex].style;
            //                } 
            //            }    

            //Remove any Border, Padding and Margin from the bottom of the new Head table
            tblHead.style.borderBottomWidth = tblHead.style.paddingBottom = tblHead.style.marginBottom = '0px';

            //Ensure that Scrollbars are not visible in the Head container
            divHead.style.overflow = 'hidden';

            //Append the Head table to it's container
            divHead.appendChild(tblHead);

            //Add the new Head section to the DOM directly before the Body section
            divContainer.insertBefore(divHead, divBody);

            //Hide the tHead in the original table
            this.hideElement(table.tHead);

            //Transfer any Border, Padding and Margin attributes to the Body container, this will ensure the horizontal scrollbar appears as though it is with in the confinds of the table rather than outside it
            if (tblFoot == null) {
                divBody.style.borderBottomStyle = getStyle(table, 'borderBottomStyle');
                divBody.style.borderBottomWidth = getStyle(table, 'borderBottomWidth');
                divBody.style.borderBottomColor = getStyle(table, 'borderBottomColor');
                divBody.style.paddingBottom = getStyle(table, 'paddingBottom');
                divBody.style.marginBottom = getStyle(table, 'marginBottom');
            }

            //Remove any Border, Padding and Margin from the top and bottom of the table
            table.style.borderTopWidth = table.style.borderBottomWidth = table.style.paddingTop = table.style.paddingBottom = table.style.marginTop = table.style.marginBottom = '0px';

            //Apply relevant styles to the Body container
            divBody.style.overflowX = overflowX || 'auto';
            divBody.style.overflowY = overflowY || 'auto';

            //Initialise the Foot section if one has been specified
            if (tblFoot != null) {
                //Create the new Foot table
                tblFoot.appendChild(table.tFoot.cloneNode(true));

                //Ensure only the Foot will display the Horizontal Scrollbar when required
                divBody.style.overflowX = 'hidden';
                divFoot.style.overflowX = overflowX || 'auto';

                //Apply styles
                tblFoot.id = table.id + '_Foot';
                tblFoot.className = table.className;
                tblFoot.border = table.border;
                tblFoot.cellSpacing = table.cellSpacing;
                tblFoot.cellPadding = table.cellPadding;
                tblFoot.width = '100%';

                //Remove any Border, Padding and Margin from the top of the new Foot table
                tblFoot.style.borderTopWidth = tblFoot.style.paddingTop = tblFoot.style.marginTop = '0px';

                //Append the Foot table to it's container
                divFoot.appendChild(tblFoot);

                //Add the new Foot section to the DOM directly after the Body section
                if (table.parentNode == divContainer.lastChild) {
                    divContainer.appendChild(divFoot);
                } else {
                    divContainer.insertBefore(divFoot, table.parentNode.nextSibling);
                }

                //Hide the tFoot in the original table
                this.hideElement(table.tFoot);

                //Ensure the Body ScrollLeft is synchronised with the Foot
                divFoot.onscroll = function () {
                    this.previousSibling.scrollLeft = this.scrollLeft;
                }
            }

            //Ensure the Head ScrollLeft is synchronised with the Body
            divBody.onscroll = function () {

                if (window.ie != true) {
                    if (this.getElementsByTagName('tFoot').length > 0) {
                        //We need to reset the scrollLeft of the divBody in FF when the table contains a footer as FF seems to be setting it to 0 as a result of hiding the X scrollbar in the divBody
                        this.scrollLeft = this.nextSibling.scrollLeft;
                    }
                }

                this.previousSibling.scrollLeft = this.scrollLeft;
            }

            //Initialise attributes
            table.setAttribute('aecIsInitialised', true);
            table.setAttribute('aecMinBodyHeight', (minBodyHeight ? isNumeric(minBodyHeight) ? Math.min(Math.max(minBodyHeight, 50), table.tBodies[0].offsetHeight) : 50 : 50));
            table.setAttribute('aecContainerSize', '');

            //Listen for the container resizing, no onresize event on DIV in FF so we need to attach an interval and monitor it rather than attach an event
            if (window.ie == true) {
                addEvent(divContainer, 'resize', window.xbScrollableTable.tableContainer_onResize);
            } else {
                divContainer.resizeInterval = window.setInterval(window.xbScrollableTable.resizeTable, 100, table, null);
            }

            //Ensure the table is sized correctly
            window.xbScrollableTable.resizeTable(table);

            //Release object references
            divContainer = null;
            divHead = null;
            tblHead = null;
            divBody = null;
            divFoot = null;
            tblFoot = null;
        }
    },


    validateTable: function (table, initialised) {

        var tblReturnValue = null;
        var blnReturnValue = false;

        if (table) {
            if (typeof table == 'string') {
                table = document.getElementById(table);
            }

            if (table) {
                if (table.tagName.toLowerCase() == 'table') {
                    if (table.tBodies.length > 0 && (table.tHead || table.tFoot)) {
                        if (initialised == true) {
                            if (table.getAttribute('aecIsInitialised') == true || table.getAttribute('aecIsInitialised') == 'true') {
                                tblReturnValue = table;
                                blnReturnValue = true;
                            }
                        } else {
                            tblReturnValue = table;
                            blnReturnValue = true;
                        }
                    }
                }
            }
        }

        return { 'tableElement': tblReturnValue, 'isValid': blnReturnValue };
    },


    tableContainer_onResize: function () {

        window.xbScrollableTable.resizeTable(event.srcElement.childNodes[1].firstChild);
    },


    resizeTable: function (table) {

        var divContainer = table.parentNode.parentNode;
        var tblHead = document.getElementById(table.id + '_Head');
        var tblFoot = document.getElementById(table.id + '_Foot');
        var intOffsetWidth = 0;

        //Only execute this code if the container has been resized, this is monitored here for FF as the resize interval is fired every 1/10th of a second, we do not want to be executing this code if there is no need to
        if (table.getAttribute('aecContainerSize') != divContainer.offsetHeight + ':' + divContainer.offsetWidth) {
            //Resize the width of the Body section, we will do the height later
            table.parentNode.style.width = getInnerWidth(divContainer) + 'px';
            table.style.width = table.parentNode.offsetWidth + 'px';

            //Determine whether the Vertical scrollbar will be visible, if so, we need to cater for the space it will occupy, this has to be determined after the table width has been changed to cater for cells that may wrap as the table height will change
            if (table.parentNode.style.overflowY == 'scroll' || (table.parentNode.style.overflowY != 'hidden' && getInnerHeight(divContainer) - tblHead.offsetHeight - (tblFoot ? tblFoot.offsetHeight : 0) < table.offsetHeight) || (window.ie != true && tblFoot && table.tBodies[0].rows.length > 1)) {
                intOffsetWidth = window.scrollbarSize();
                table.style.width = table.parentNode.offsetWidth - intOffsetWidth + 'px';
            }

            //Resize the Head section
            tblHead.parentNode.style.width = table.parentNode.offsetWidth + 'px';
            tblHead.style.width = table.offsetWidth + intOffsetWidth + 'px';

            //Synchronise the new Head column widths
            for (var intRowIndex = 0; intRowIndex < table.tHead.rows.length; intRowIndex++) {
                for (var intCellIndex = 0; intCellIndex < table.tHead.rows[intRowIndex].cells.length; intCellIndex++) {
                    tblHead.tHead.rows[intRowIndex].cells[intCellIndex].style.width = getInnerWidth(table.tHead.rows[intRowIndex].cells[intCellIndex]) + 'px';
                }

                tblHead.tHead.rows[intRowIndex].lastChild.style.paddingRight = parseInt(getStyle(table.tHead.rows[intRowIndex].lastChild, 'paddingRight')) + intOffsetWidth + 'px';
            }

            if (table.tFoot) {
                //Resize the Foot section
                tblFoot.parentNode.style.width = table.parentNode.offsetWidth + 'px';
                tblFoot.style.width = table.offsetWidth + intOffsetWidth + 'px';

                //Synchronise the new Foot column widths
                for (var intRowIndex = 0; intRowIndex < table.tFoot.rows.length; intRowIndex++) {
                    for (var intCellIndex = 0; intCellIndex < table.tFoot.rows[intRowIndex].cells.length; intCellIndex++) {
                        tblFoot.tFoot.rows[intRowIndex].cells[intCellIndex].style.width = getInnerWidth(table.tFoot.rows[intRowIndex].cells[intCellIndex]) + 'px';
                    }

                    tblFoot.tFoot.rows[intRowIndex].lastChild.style.paddingRight = parseInt(getStyle(table.tFoot.rows[intRowIndex].lastChild, 'paddingRight')) + intOffsetWidth + 'px';
                }

                //Reset the Height of the containing DIV - we add the remove the scrollbar size to overcome bug with Chrome displaying scrollbar when not required					
                tblFoot.parentNode.style.height = tblFoot.offsetHeight + (tblFoot.parentNode.style.overflowX != 'hidden' && tblFoot.offsetWidth > getInnerWidth(tblFoot.parentNode) ? window.scrollbarSize() : 0) + window.scrollbarSize() + 'px';
                tblFoot.parentNode.style.height = getInnerHeight(tblFoot.parentNode) - window.scrollbarSize() + 'px';
            }

            //Update the height of the Body section, we need do this here to prevent any flickering caused by the Foot section resizing to cater for the horizontal scrollbar - we add the remove the scrollbar size to overcome bug with Chrome displaying scrollbar when not required
            table.parentNode.style.height = Math.max(parseInt(table.getAttribute('aecMinBodyHeight')), Math.min(table.offsetHeight + (tblFoot == null ? (table.parentNode.style.overflowX != 'hidden' && (table.parentNode.style.overflowX == 'scroll' || table.parentNode.offsetWidth < table.offsetWidth) ? window.scrollbarSize() : 0) : 0), getInnerHeight(divContainer) - tblHead.parentNode.offsetHeight - (tblFoot ? tblFoot.parentNode.offsetHeight : 0))) + window.scrollbarSize() + 'px';
            table.parentNode.style.height = getInnerHeight(table.parentNode) - window.scrollbarSize() + 'px';

            //Update attributes
            table.setAttribute('aecContainerSize', divContainer.offsetHeight + ':' + divContainer.offsetWidth);
        }

        //Release object references
        divContainer = null;
        tblHead = null;
        tblFoot = null;
    },


    hideElement: function (element) {

        var oTextNode;

        for (var intIndex = element.childNodes.length - 1; intIndex >= 0; intIndex--) {
            this.hideElement(element.childNodes[intIndex]);
        }

        if (element.tagName == 'INPUT' || element.tagName == 'SELECT') {
            var oDiv = document.createElement('div');

            //Set the width of the DIV to that of the element
            oDiv.style.width = element.offsetWidth + 'px';

            //Insert the DIV before the element
            element.parentNode.insertBefore(oDiv, element);

            //Remove the actual element from the DOM
            element.parentNode.removeChild(element);
            element = null;

            element = oDiv;
        } else {
            if (element.tagName == 'IMG') {
                if (element.parentNode.firstChild != element.parentNode.lastChild) {
                    element.parentNode.removeChild(element);
                    element = null;
                }
            }
        }

        if (element != null && element.style) {
            element.style.borderTopWidth = element.style.borderBottomWidth = element.style.paddingTop = element.style.paddingBottom = element.style.marginTop = element.style.marginBottom = element.style.height = element.style.lineHeight = '0px';
            element.style.visibility = 'hidden';
        }
    },


    syncScroll: function (table1, table2, master, syncX, syncY) {

        with (this.validateTable(table1, true)) {
            table1 = isValid ? tableElement : null;
        }

        if (table1 != null) {
            with (this.validateTable(table2, true)) {
                table2 = isValid ? tableElement : null;
            }

            if (table2 != null) {
                if (master != 'both') {
                    with (this.validateTable(master, true)) {
                        master = isValid ? tableElement : null;
                    }
                }
            }
        }

        if (table1 != null && table2 != null && master != null) {
            if (master == 'both' || master == table1) {
                addEvent(table1.parentNode, 'scroll', function () {
                    if (syncX == true) {
                        if (table2.tFoot) {
                            table2.parentNode.nextSibling.scrollLeft = table1.parentNode.scrollLeft;
                        } else {
                            table2.parentNode.scrollLeft = table1.parentNode.scrollLeft;
                        }
                    }

                    if (syncY == true) {
                        if (window.ie == true || table1.parentNode.style.overflowY != 'hidden') {
                            table2.parentNode.scrollTop = table1.parentNode.scrollTop;
                        }
                    }
                });

                if (table1.tFoot && syncX == true) {
                    addEvent(table1.parentNode.nextSibling, 'scroll', function () {
                        if (table2.tFoot) {
                            table2.parentNode.nextSibling.scrollLeft = table1.parentNode.nextSibling.scrollLeft;
                        } else {
                            table2.parentNode.scrollLeft = table1.parentNode.nextSibling.scrollLeft;
                        }
                    });
                }
            }

            if (master == 'both' || master == table2) {
                addEvent(table2.parentNode, 'scroll', function () {
                    if (syncX == true) {
                        if (table1.tFoot) {
                            table1.parentNode.nextSibling.scrollLeft = table2.parentNode.scrollLeft;
                        } else {
                            table1.parentNode.scrollLeft = table2.parentNode.scrollLeft;
                        }
                    }

                    if (syncY == true) {
                        if (window.ie == true || table2.parentNode.style.overflowY != 'hidden') {
                            table1.parentNode.scrollTop = table2.parentNode.scrollTop;
                        }
                    }
                });

                if (table1.tFoot && table2.tFoot && syncX == true) {
                    addEvent(table2.parentNode.nextSibling, 'scroll', function () {
                        if (table1.tFoot) {
                            table1.parentNode.nextSibling.scrollLeft = table2.parentNode.nextSibling.scrollLeft;
                        } else {
                            table1.parentNode.scrollLeft = table2.parentNode.nextSibling.scrollLeft;
                        }
                    });
                }
            }
        }
    },


    getScrollLeft: function (table) {

        var intReturnValue = 0;

        with (this.validateTable(table, true)) {
            if (isValid == true) {
                intReturnValue = tableElement.parentNode.scrollLeft;
            }
        }

        return intReturnValue;
    },


    getScrollTop: function (table) {

        var intReturnValue = 0;

        with (this.validateTable(table, true)) {
            if (isValid == true) {
                intReturnValue = tableElement.parentNode.scrollTop;
            }
        }

        return intReturnValue;
    },


    setScrollLeft: function (table, value) {

        if (isNumeric(value) == true) {
            with (this.validateTable(table, true)) {
                if (isValid == true) {
                    if (tableElement.tFoot) {
                        tableElement.parentNode.nextSibling.scrollLeft = value;
                    } else {
                        tableElement.parentNode.scrollLeft = value;
                    }
                }
            }
        }
    },


    setScrollTop: function (table, value) {

        if (isNumeric(value) == true) {
            with (this.validateTable(table, true)) {
                if (isValid == true) {
                    tableElement.parentNode.scrollTop = value;
                }
            }
        }
    },


    scrollTo: function (table, x, y) {

        if (isNumeric(x) == true && isNumeric(y) == true) {
            with (this.validateTable(table, true)) {
                if (isValid == true) {
                    if (tableElement.tFoot) {
                        tableElement.parentNode.nextSibling.scrollLeft = x;
                    } else {
                        tableElement.parentNode.scrollLeft = x;
                    }

                    tableElement.parentNode.scrollTop = y;
                }
            }
        }
    },


    scrollIntoView: function (element) {

        if (element.tagName.toLowerCase() == 'td' || element.tagName.toLowerCase() == 'tr') {
            with (this.validateTable(element.tagName.toLowerCase() == 'td' ? getParentNode(getParentNode(getParentNode(element))) : getParentNode(getParentNode(element)), true)) {
                if (isValid == true) {
                    if (element.tagName.toLowerCase() == 'td') {
                        if (element.offsetLeft < tableElement.parentNode.scrollLeft) {
                            if (tableElement.tFoot) {
                                tableElement.parentNode.nextSibling.scrollLeft = element.offsetLeft;
                            } else {
                                tableElement.parentNode.scrollLeft = element.offsetLeft;
                            }
                        } else {
                            if (element.offsetLeft + element.offsetWidth > tableElement.parentNode.clientWidth + tableElement.parentNode.scrollLeft) {
                                if (tableElement.tFoot) {
                                    tableElement.parentNode.nextSinling.scrollLeft = element.offsetLeft + element.offsetWidth - tableElement.parentNode.clientWidth;
                                } else {
                                    tableElement.parentNode.scrollLeft = element.offsetLeft + element.offsetWidth - tableElement.parentNode.clientWidth;
                                }
                            }
                        }
                    }

                    if (element.offsetTop - tableElement.tHead.offsetHeight < tableElement.parentNode.scrollTop) {
                        tableElement.parentNode.scrollTop = element.offsetTop - tableElement.tHead.offsetHeight;
                    } else {
                        if (element.offsetTop + element.offsetHeight > tableElement.parentNode.clientHeight + tableElement.parentNode.scrollTop - (tableElement.tFoot ? tableElement.tFoot.offsetHeight : 0)) {
                            tableElement.parentNode.scrollTop = element.offsetTop + element.offsetHeight + (tableElement.tFoot ? tableElement.tFoot.offsetHeight : 0) - tableElement.parentNode.clientHeight;
                        }
                    }
                }
            }
        }
    },


    offsetHeight: function (table) {

        var intReturnValue = 0;

        with (this.validateTable(table, false)) {
            if (isValid == true) {
                if (tableElement.getAttribute('aecIsInitialised') == true || tableElement.getAttribute('aecIsInitialised') == 'true') {
                    intReturnValue = tableElement.parentNode.previousSibling.firstChild.offsetHeight + tableElement.offsetHeight + (tableElement.tFoot ? tableElement.parentNode.nextSibling.fisrtChild.offsetHeight : 0);
                } else {
                    intReturnValue = tableElement.offsetHeight;
                }
            }
        }

        return intReturnValue;
    }
};