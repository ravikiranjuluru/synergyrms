/**************************************************************************************************************************************************
Atlantic Global Cross Browser Option List Javascript Library
**************************************************************************************************************************************************/

var xbOptionList = {

    initialise: function (selectList, buttonURL) {
        var colSelectLists = new Array();
        var aintOffsetWidths = new Array();
        var colTextBoxes = new Array();

        if (selectList) {
            if (typeof selectList == 'string') {
                selectList = document.getElementById(selectList);
            }

            if (selectList) {
                if (selectList.tagName.toLowerCase() == 'select') {
                    selectList.setAttribute('aecType', 'aecOptionList');
                    colSelectLists[0] = selectList;
                }
            }
        } else {
            colSelectLists = document.getElementsByTagName('select');
        }

        if (colSelectLists.length > 0) {
            for (var intIndex = colSelectLists.length - 1; intIndex >= 0; intIndex--) {
                //Cache the widths of the actual SelectList, this will prevent widths of td's changing if multiple SelectLists appear in a table column
                aintOffsetWidths[intIndex] = colSelectLists[intIndex].offsetWidth;
            }

            for (var intIndex = colSelectLists.length - 1; intIndex >= 0; intIndex--) {

                oSelectList = colSelectLists[intIndex];

                if (oSelectList.getAttribute('aecType') == 'aecOptionList') {
                    var oContainer = document.createElement('div');
                    var oTextBox = document.createElement('div');
                    var oButton = document.createElement('input');

                    //Ensure the SelectList has it's disabled attribute set
                    oSelectList.disabled = oSelectList.disabled || false;

                    //Button Attributes
                    oButton.type = 'image';
                    oButton.src = buttonURL;
                    oButton.style.width = '13px';
                    oButton.style.height = '18px';
                    oButton.style.border = 'solid 0px #FFFFFF';
                    oButton.style.backgroundColor = '#C6D6EF';
                    oButton.style.padding = '0px';

                    if (oSelectList.disabled == true) {
                        oButton.style.backgroundColor = '#D4D4D4';

                        if (window.ie == true) {
                            oButton.style.filter = 'alpha(opacity:50)';
                        } else {
                            oButton.style.MozOpacity = 0.5;
                        }
                    }

                    if (window.ie == true) {
                        oButton.style.styleFloat = 'right';
                    } else {
                        oButton.style.cssFloat = 'right';
                    }

                    //Add Events
                    oButton.onkeydown = optionListButton_onKeyDown;
                    oButton.onkeypress = optionListButton_onKeyPress;
                    oButton.onfocus = optionListButton_onFocus;
                    oButton.onblur = optionListButton_onBlur;
                    oButton.onmouseover = optionListButton_onMouseOver;
                    oButton.onmouseout = optionListButton_onMouseOut;
                    oButton.onclick = optionListButton_onClick;

                    //Container Attributes	
                    oContainer.style.height = oContainer.style.lineHeight = Math.max(parseInt(oButton.style.height), oSelectList.offsetHeight - parseInt(getStyle(oSelectList, 'borderTopWidth')) - parseInt(getStyle(oSelectList, 'borderBottomWidth'))) + 'px';  // oSelectList.offsetHeight - 4 + 'px';
                    oContainer.style.borderTop = 'solid ' + getStyle(oSelectList, 'borderTopWidth') + ' ' + getStyle(oSelectList, 'borderTopColor');
                    oContainer.style.borderRight = 'solid ' + getStyle(oSelectList, 'borderRightWidth') + ' ' + getStyle(oSelectList, 'borderRightColor');
                    oContainer.style.borderBottom = 'solid ' + getStyle(oSelectList, 'borderBottomWidth') + ' ' + getStyle(oSelectList, 'borderBottomColor');
                    oContainer.style.borderLeft = 'solid ' + getStyle(oSelectList, 'borderLeftWidth') + ' ' + getStyle(oSelectList, 'borderLeftColor');
                    oContainer.style.overflow = 'hidden';
                    oContainer.style.verticalAlign = 'middle';
                    oContainer.style.backgroundColor = '#FFFFFF';

                    //RMC - Commented this out so the OptionList (dropdown part) appears over the top of scrolling tables
                    //oContainer.style.position = 'relative';

                    if (oSelectList.style.width == 'auto' || oSelectList.style.width == '100%') {
                        oContainer.style.width = 'auto';
                    } else {
                        if (oSelectList.style.width.endsWith('%') == true) {
                            oContainer.style.width = oSelectList.style.width;
                        } else {
                            oContainer.style.width = aintOffsetWidths[intIndex] - parseInt(getStyle(oSelectList, 'borderLeftWidth')) - parseInt(getStyle(oSelectList, 'borderRightWidth')) + 'px';
                        }
                    }

                    //Ensure the border is gray if the SelectList is disabled
                    if (oSelectList.disabled == true) {
                        //oContainer.style.borderColor = '#999999';
                    }

                    //Add Events
                    oContainer.onmousedown = optionListContainer_onMouseDown;
                    oContainer.onmouseup = optionListContainer_onMouseUp;

                    //Text Box Attributes
                    var displayText = '';

                    if (oSelectList.options[oSelectList.selectedIndex].getAttribute('aecSelectedText')) {
                        displayText = oSelectList.options[oSelectList.selectedIndex].getAttribute('aecSelectedText');
                    }
                    else {
                        displayText = oSelectList.options[oSelectList.selectedIndex].text;
                    }

                    oTextBox.appendChild(document.createTextNode(displayText.trim()));
                    oTextBox.style.color = getStyle(oSelectList, 'color');
                    oTextBox.style.fontFamily = getStyle(oSelectList, 'fontFamily');
                    oTextBox.style.fontSize = getStyle(oSelectList, 'fontSize');
                    oTextBox.style.fontWeight = getStyle(oSelectList, 'fontWeight');
                    oTextBox.style.height = oTextBox.style.lineHeight = Math.max(parseInt(oButton.style.height), oSelectList.offsetHeight - parseInt(getStyle(oSelectList, 'borderTopWidth')) - parseInt(getStyle(oSelectList, 'borderBottomWidth'))) + 'px';
                    oTextBox.style.border = 'solid 0px #FF0000';
                    oTextBox.style.paddingLeft = oTextBox.style.paddingRight = '3px';
                    oTextBox.style.cursor = 'default';
                    oTextBox.style.background = 'transparent';
                    oTextBox.style.whiteSpace = 'nowrap';
                    oTextBox.style.paddingRight = '16px';
                    oTextBox.style.overflow = 'hidden';

                    //Add this TextBox to the collection of TextBoxes
                    colTextBoxes.push(oTextBox)

                    //RMC - Commented this out so the OptionList (dropdown part) appears over the top of scrolling tables
                    //oTextBox.style.position = 'absolute';		            

                    //Append the TextBox and Button elements to the Container                    
                    oContainer.appendChild(oButton);
                    oContainer.appendChild(oTextBox);

                    //Insert the container to the DOM immediately before the existing SelectList
                    oSelectList.parentNode.insertBefore(oContainer, oSelectList);

                    //Create the OptionList
                    var oOptionList = document.createElement('div');

                    //OptionList Attributes
                    oOptionList.style.marginTop = parseInt(getStyle(oSelectList, 'borderBottomWidth')) == 0 ? '1px' : '0px';
                    oOptionList.style.position = 'absolute';
                    oOptionList.style.overflow = 'hidden';
                    oOptionList.style.border = 'solid 1px #666666';
                    oOptionList.style.backgroundColor = '#FFFFFF';
                    oOptionList.style.display = 'none';
                    oOptionList.style.zIndex = '9999';
                    oOptionList.style.color = '#FF0000';

                    //Add Events
                    oOptionList.onmousedown = optionList_onMouseDown;
                    oOptionList.onmouseup = optionList_onMouseUp;

                    //Create OptionListItems based on the SelectList options
                    for (var intOptionIndex = 0; intOptionIndex < oSelectList.options.length; intOptionIndex++) {
                        //Create the OptionListItem
                        var oOption = document.createElement('div');

                        //OptionListItem Standard Attributes								
                        oOption.appendChild(document.createTextNode(oSelectList.options[intOptionIndex].text));
                        oOption.style.color = getStyle(oSelectList, 'color');
                        oOption.style.fontFamily = getStyle(oSelectList, 'fontFamily');
                        oOption.style.fontSize = getStyle(oSelectList, 'fontSize');
                        oOption.style.fontWeight = getStyle(oSelectList, 'fontWeight');
                        oOption.style.fontStyle = getStyle(oSelectList.options[intOptionIndex], 'fontStyle');
                        oOption.style.textIndent = oSelectList.options[intOptionIndex].style.textIndent;
                        oOption.style.verticalAlign = 'middle';
                        oOption.style.width = '100%'
                        oOption.style.height = oOption.style.lineHeight = parseInt(oContainer.style.height) - 2 + 'px';
                        oOption.style.padding = '0px 3px 1px 3px';
                        oOption.style.cursor = 'default';
                        oOption.style.borderTop = oOption.style.borderBottom = 'solid 0px #FF0000';

                        if (window.ie6 == true) {
                            oOption.style.whiteSpace = 'nowrap';
                        }

                        if (oSelectList.options[intOptionIndex].disabled == true) {
                            oOption.style.color = '#999999';
                        }

                        //OptionListItem Non-Standard Attributes, these must be set using the setAttribute method to ensure cross browser compatability
                        oOption.setAttribute('index', intOptionIndex);
                        oOption.setAttribute('readonly', oSelectList.options[intOptionIndex].disabled);

                        //Add Events, only if the Option is not disabled
                        if (oSelectList.options[intOptionIndex].disabled == false) {
                            oOption.onmouseover = optionListItem_onMouseOver;
                            oOption.onmousedown = optionListItem_onMouseDown;
                            oOption.onmouseup = optionListItem_onMouseUp;
                        }

                        //Append the OptionListItem to the OptionList
                        oOptionList.appendChild(oOption);
                    }

                    //Insert the OptionList to the DOM immediately before the existing SelectList
                    oSelectList.parentNode.insertBefore(oOptionList, oSelectList);

                    //Ensure the HTML SelectList is not visible
                    oSelectList.style.display = 'none';
                }
            }

            //Bug in IE6 causing the TextBox DIV to appear below the button image if the text is quite long, we just need to ensure the TextBox appears at the top in line with the image
            if (window.ie6 == true) {
                //This has to happen at the end                
                for (var intIndex = 0; intIndex < colTextBoxes.length; intIndex++) {
                    colTextBoxes[intIndex].style.marginTop = (colTextBoxes[intIndex].offsetTop * -1) + 'px';
                }
            }

            //Register document.onmousedown Event to hide the active OptionList if there is one
            addEvent(document, 'mousedown', xbOptionList.document_onMouseDown);
        }
    },


    document_onMouseDown: function (e) {

        if (window.activeOptionList) {
            if (window.ie == true) {
                hideOptionList(window.activeOptionList);
            } else {
                if (e.target != window.activeOptionList) {
                    hideOptionList(window.activeOptionList);
                }
            }
        }
    }
}


function optionListButton_onFocus() {

    var oSelectList = this.parentNode.nextSibling.nextSibling;

    if (oSelectList.onfocus) {
        oSelectList.onfocus();
    }
}


function optionListButton_onBlur() {

    var oSelectList = this.parentNode.nextSibling.nextSibling;

    if (oSelectList.onblur) {
        oSelectList.onblur();
    }
}


function optionListButton_onKeyDown(e) {

    var event = e || window.event;
    var intKeyCode = event.which || event.keyCode;
    var oSelectList = this.parentNode.nextSibling.nextSibling;
    var intSelectedIndex = oSelectList.selectedIndex

    if (oSelectList.disabled == false) {
        if (intKeyCode == 9 || intKeyCode == 27 || intKeyCode == 13) {
            //Hide the OptionList if either the Tab (9), Esc (27) or Return (13) keys are selected
            hideOptionList(this.parentNode.nextSibling);
        } else {
            if (intKeyCode == 38 || intKeyCode == 40) {
                if (event.altKey == true) {
                    //Toggle the OptionList (show/hide) if the Alt key is depressed and either the up/down arrows are selected
                    toggleOptionList(this.parentNode.nextSibling);
                } else {
                    if (event.ctrlKey == true || window.activeOptionList == this.parentNode.nextSibling) {
                        //Make a selection if the ctrl Key is depressed and/or the OptionList is visible based on the up/down key, only select enabled options
                        if ((intKeyCode == 38 && intSelectedIndex > 0) || (intKeyCode == 40 && intSelectedIndex < oSelectList.length - 1)) {
                            if (intKeyCode == 38) {
                                for (var intIndex = intSelectedIndex - 1; intIndex >= 0; intIndex--) {
                                    if (oSelectList.options[intIndex].disabled == false) {
                                        selectOptionListItem(this.parentNode.nextSibling.childNodes[intIndex]);
                                        break;
                                    }
                                }
                            } else {
                                for (var intIndex = intSelectedIndex + 1; intIndex < oSelectList.options.length; intIndex++) {
                                    if (oSelectList.options[intIndex].disabled == false) {
                                        selectOptionListItem(this.parentNode.nextSibling.childNodes[intIndex]);
                                        break;
                                    }
                                }
                            }
                        }

                        //Cancel the Event, this will prevent the window being scrolled if scrollbars are visible.
                        cancelEvent(event);
                    }
                }
            } else {
                if (intKeyCode == 37 || intKeyCode == 39) {
                    //Cancel the Event, this will prevent the window being scrolled if scrollbars are visible.
                    cancelEvent(event);
                }
            }
        }
    }

    //Prevent the Esc key from propogating as this causes all text on the web form to disappear, IE Bug.
    if (intKeyCode == 27) {
        cancelEvent(event);
    }

    if (window.activeOptionList == null) {
        if (oSelectList.onkeydown) {
            oSelectList.onkeydown(event);
        }
    }
}


function optionListButton_onKeyPress(e) {

    var event = e || window.event;
    var intKeyCode = event.which || event.keyCode;
    var oSelectList = this.parentNode.nextSibling.nextSibling;
    var intSelectedIndex = oSelectList.selectedIndex

    if (oSelectList.disabled == false) {
        //Loop through the OptionList items and highlight the next occurance (from the currently selected item) of an item starting with the selected key					
        for (var intIndex = intSelectedIndex + 1; intIndex < oSelectList.length; intIndex++) {
            if (oSelectList.options[intIndex].text.length > 0) {
                if (oSelectList.options[intIndex].disabled == false && oSelectList.options[intIndex].text.startsWith(String.fromCharCode(intKeyCode), true) == true) {
                    selectOptionListItem(this.parentNode.nextSibling.childNodes[intIndex]);
                    break;
                }
            }
        }

        //Start at the begining of the OptionList if no item has been found, this ensures the list is continually iterated for each key press
        if (intIndex == oSelectList.length) {
            for (intIndex = 0; intIndex <= intSelectedIndex; intIndex++) {
                if (oSelectList.options[intIndex].text.length > 0) {
                    if (oSelectList.options[intIndex].disabled == false && oSelectList.options[intIndex].text.startsWith(String.fromCharCode(intKeyCode), true) == true) {
                        selectOptionListItem(this.parentNode.nextSibling.childNodes[intIndex]);
                        break;
                    }
                }
            }
        }
    }

    //Only allow the Tab key to be propogated
    if (intKeyCode != 9) {
        cancelEvent(event);
    }

    if (window.activeOptionList == null) {
        if (oSelectList.onkeypress) {
            oSelectList.onkeypress(event);
        }
    }
}


function optionListContainer_onMouseDown(e) {

    this.firstChild.focus();
    toggleOptionList(this.nextSibling);

    //Cancel the Event to ensure it is not propogated to the document level which will hide the OptionList, we do not want this to happen here
    cancelEvent(e || window.event);
}


function optionListContainer_onMouseUp(e) {

    this.firstChild.focus();
}


function optionListButton_onMouseUp(e) {

    this.focus();
}


function optionListButton_onMouseOver() {

    var oSelectList = this.parentNode.nextSibling.nextSibling;

    if (oSelectList.disabled == false) {
        if (window.ie == true) {
            this.style.filter = 'alpha(opacity:70)';
        } else {
            this.style.MozOpacity = 0.7;
        }
    }
}


function optionListButton_onMouseOut() {

    var oSelectList = this.parentNode.nextSibling.nextSibling;

    if (oSelectList.disabled == false) {
        if (window.ie == true) {
            this.style.filter = 'alpha(opacity:100)';
        } else {
            this.style.MozOpacity = 1;
        }
    }
}


function optionListButton_onClick() {

    return false;
}


function optionList_onMouseDown(e) {

    //Cancel the Event to ensure it is not propogated to the document level which will hide the OptionList, we do not want this to happen here
    cancelEvent(e || window.event);
}


function optionList_onMouseUp(e) {

    this.previousSibling.firstChild.focus();
}


function toggleOptionList(optionList) {

    if (optionList.style.display.length == 0 || optionList.style.display == 'none') {
        showOptionList(optionList);
    } else {
        hideOptionList(optionList);
    }
}


function showOptionList(optionList) {

    var intSelectedIndex = optionList.nextSibling.selectedIndex;
    var intHeight = 0;

    //Ensure the current active OptionList is no longer visible
    if (window.activeOptionList) {
        hideOptionList(window.activeOptionList);
    }

    if (optionList.nextSibling.disabled == false) {
        //Ensure the currently selected option is highlighted
        for (var intIndex = 0, oOption = null; intIndex < optionList.childNodes.length, oOption = optionList.childNodes[intIndex]; intIndex++) {
            if (intIndex == intSelectedIndex) {
                oOption.style.backgroundColor = '#C6D7EF';
            } else {
                oOption.style.backgroundColor = '#FFFFFF';
            }
        }

        //Register the OptionList
        window.activeOptionList = optionList;

        //Display the OptionList
        optionList.style.display = 'block';
        optionList.style.overflowY = (optionList.firstChild.offsetHeight * 10 < optionList.scrollHeight) ? 'auto' : 'hidden';
        optionList.style.width = Math.max(parseInt(optionList.previousSibling.offsetWidth), optionList.offsetWidth) + (optionList.style.overflowY == 'auto' ? window.scrollbarSize() : 0) - 2 + 'px'
        optionList.style.height = '0px';

        //Animate the OptionList by sliding it down, scroll the selected option into view once the the resize is complete
        doResize(optionList, optionList.offsetWidth - 2, 0, optionList.offsetWidth - 2, Math.min(optionList.scrollHeight, optionList.firstChild.offsetHeight * 10), 15, 10, 0.5, function () {
            optionList.scrollTop = Math.max(0, (intSelectedIndex - 9) * optionList.firstChild.offsetHeight);
        });
    }
}


function hideOptionList(optionList) {

    //Unregister the OptionList
    window.activeOptionList = null;

    //Hide the OptionList
    optionList.style.display = 'none';
    optionList.style.overflowY = 'hidden';
    optionList.scrollTop = '0px';
}


function optionListItem_onMouseOver(e) {

    this.style.backgroundColor = '#C6D7EF';

    for (var intIndex = 0, oOption = null; intIndex < this.parentNode.childNodes.length, oOption = this.parentNode.childNodes[intIndex]; intIndex++) {
        if (this != oOption) {
            oOption.style.backgroundColor = '#FFFFFF';
        }
    }
}


function optionListItem_onMouseDown(e) {

    cancelEvent(e || window.event);
}


function optionListItem_onMouseUp(e) {

    selectOptionListItem(this);
    hideOptionList(this.parentNode);
}


function selectOptionListItem(option) {

    var oSelectList = option.parentNode.nextSibling;
    var oTextNode = option.parentNode.previousSibling.childNodes[1].firstChild;
    var intSelectedIndex = parseInt(option.getAttribute('index'));
    var blnHasChanged = oSelectList.selectedIndex != intSelectedIndex;

    //Select the selected option on the actual HTML SelectList
    oSelectList.options[intSelectedIndex].selected = true;

    //Highlight the selected option
    option.style.backgroundColor = '#C6D7EF';

    //Ensure all other options are not highlighted
    for (var intIndex = 0, oOption = null; intIndex < option.parentNode.childNodes.length, oOption = option.parentNode.childNodes[intIndex]; intIndex++) {
        if (option != oOption) {
            oOption.style.backgroundColor = '#FFFFFF';
        }
    }

    //Ensure the selected option scrolls into view if necessary
    if (option.offsetTop < option.parentNode.scrollTop) {
        option.parentNode.scrollTop -= option.offsetHeight;
    } else {
        if (option.offsetTop + option.offsetHeight > option.parentNode.scrollTop + option.parentNode.offsetHeight) {
            option.parentNode.scrollTop += option.offsetHeight;
        }
    }

    //Ensure our SelectList displays the correct text based on the selected HTML SelectList option
    var displayText = '';

    if (oSelectList.options[intSelectedIndex].getAttribute('aecSelectedText')) {
        displayText = oSelectList.options[intSelectedIndex].getAttribute('aecSelectedText');
    }
    else {
        displayText = oSelectList.options[intSelectedIndex].text;
    }
    oTextNode.nodeValue = displayText.trim();

    oTextNode.parentNode.previousSibling.focus();

    //Fire the onChange Event if the selected option has changed
    if (blnHasChanged == true) {
        if (oSelectList.onchange) {
            oSelectList.onchange();
        }
    }
}