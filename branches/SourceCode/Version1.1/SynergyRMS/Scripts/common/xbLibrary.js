/**************************************************************************************************************************************************
Atlantic Global Cross Browser Javascript Library
**************************************************************************************************************************************************/


window.xpath = !!(document.evaluate);

if (window.ActiveXObject) {
    window.ie = window[window.XMLHttpRequest ? 'ie7' : 'ie6'] = true;
} else {
    if (document.childNodes && !document.all && !navigator.taintEnabled) {
        window.webkit = window[window.xpath ? 'webkit420' : 'webkit419'] = true;
    } else {
        /*
        if (document.getBoxObjectFor != null) {
        window.mozilla = true;
        }
        */
        if (navigator.userAgent.indexOf('Firefox') != -1) {
            window.mozilla = true;
        }
    }
}


document.onmousemove = function(e) {

    var event = e || window.event;
    if (event) {
        if (event.pageX || event.pageY) {
            document.documentElement.mouseX = event.pageX;
            document.documentElement.mouseY = event.pageY;
        } else {
            if (event.clientX || event.clientY) {
                document.documentElement.mouseX = event.clientX + document.documentElement.scrollLeft;
                document.documentElement.mouseY = event.clientY + document.documentElement.scrollTop;
            }
        }
    }
};


function domReady(fn) {

    var blnHasExecuted = false;

    execute = function() {

        if (blnHasExecuted == false) {
            blnHasExecuted = true;
            fn.call();
        }
    };

    if (window.webkit == true) {
        (document.readyState == 'loaded' || document.readyState == 'complete') ? execute() : setTimeout(arguments.callee, 50);
    } else {
        if (window.mozilla == true) {
            document.addEventListener("DOMContentLoaded", execute, false);
        } else {
            if (window.ie == true) {
                try {
                    document.createElement('doc:rdy').doScroll;
                    execute();
                } catch (ex) {
                    setTimeout(arguments.callee, 50);
                }
            } else {
                window.onload = execute();
            }
        }
    }
}


//Object used to store any values we want to Cache
window.cache = {};

var scrollbarSize = function() {

    function calculateSize() {

        var intReturnValue = 0;
        var divInner = document.createElement('div');
        var divOuter = document.createElement('div');

        //Apply styles to the Outer DIV
        divOuter.style.position = 'absolute'
        divOuter.style.top = '-1000px';
        divOuter.style.left = '-1000px'
        divOuter.style.width = '100px';
        divOuter.style.height = '50px';
        divOuter.style.overflowY = 'scroll';

        //Apply styles to the Inner DIV
        divInner.style.width = 'auto';
        divInner.style.height = '200px';

        //Append the Inner DIV to the Outer Div
        divOuter.appendChild(divInner);

        //Append the Outer DIV to the DOM
        document.body.appendChild(divOuter);

        //Determine the scrollbar size
        intReturnValue = divOuter.offsetWidth - divInner.offsetWidth;

        //Remove the Outer DIV from the DOM
        document.body.removeChild(divOuter);

        //Cache the size
        window.cache.scrollbarSize = intReturnValue;

        //Return the scrollbar size
        return intReturnValue;
    }

    return window.cache.scrollbarSize || calculateSize();
};


/* 
Method: contains
Returns a boolean value indicating whether a given element can be found in the array.

Description:
contains compares the specified element to elements of the Array using strict equality (the same method used by the ===, or triple-equals, operator).
	
Parameters:
element - Element to locate in the array.
	
Syntax:
var exists = array.contains(element);
*/
Array.prototype.contains = function(element) {

    return this.indexOf(element) != -1;
}


/* 
Method: filter
Creates a new array with all elements that pass the test implemented by the provided function.

Description:
filter executes the provided function (callback) once for each element present in the array, and constructs a new array of all the values for which callback returns a true 
value. callback is invoked only for indexes of the array which have assigned values; it is not invoked for indexes which have been deleted or that have never been assigned 
values. Array elements which do not pass the callback test are simply skipped, and are not included in the new array. 

callback is invoked with three arguments: the value of the element, the index of the element, and the Array object being traversed. 

If a thisObject parameter is provided to filter, it will be used as the this for each invocation of the callback. If it is not provided, or is null, the global object 
associated with callback is used instead. 

filter does not mutate the array on which it is called. 

The range of elements processed by filter is set before the first invocation of callback. Elements which are appended to the array after the call to filter begins will not 
be visited by callback. If existing elements of the array are changed, or deleted, their value as passed to callback will be the value at the time filter visits them; 
elements that are deleted are not visited. 
 
Parameters:
callback - Function to test each element of the array. 
thisObject  - Object to use as this when executing callback. 
	
Syntax:
var filteredArray = array.filter(callback[, thisObject]);
*/
Array.prototype.filter = function(callback, thisObject) {

    var arReturnValue = [];

    for (var intIndex = 0, intLength = this.length; intIndex < intLength; intIndex++) {
        if (intIndex in this) {
            if (callback.call(thisObject, this[intIndex], intIndex, this)) {
                arReturnValue.push(this[intIndex]);
            }
        }
    }

    return arReturnValue;
}


/* 
Method: forEach
Executes a provided function once per array element. 

Description:
forEach executes the provided function (callback) once for each element present in the array. callback is invoked only for indexes of the array which have assigned values; 
it is not invoked for indexes which have been deleted or that have never been assigned values. 

callback is invoked with three arguments: the value of the element, the index of the element, and the Array object being traversed. 

If a thisObject parameter is provided to forEach, it will be used as the this for each invocation of the callback. If it is not provided, or is null, the global object 
associated with callback is used instead. 

forEach does not mutate the array on which it is called. 

The range of elements processed by forEach is set before the first invocation of callback. Elements which are appended to the array after the call to forEach begins will 
not be visited by callback. If existing elements of the array are changed, or deleted, their value as passed to callback will be the value at the time forEach visits them; 
elements that are deleted are not visited. 
	
Parameters:
callback - Function to execute for each element.
thisObject  - Object to use as this when executing callback. 
	
Syntax:
array.forEach(callback[, thisObject]);
*/
Array.prototype.forEach = function(callback, thisObject) {

    for (var intIndex = 0, intLength = this.length; intIndex < intLength; intIndex++) {
        if (intIndex in this) {
            callback.call(thisObject, this[intIndex], intIndex, this);
        }
    }
}


/* 
Method: indexOf
Returns the first index at which a given element can be found in the array, or -1 if it is not present. 

Description:
indexOf compares the specified element to elements of the Array using strict equality (the same method used by the ===, or triple-equals, operator).
	
Parameters:
value - Value to locate in the array.
	
Syntax:
var index = array.indexOf(element);
*/
Array.prototype.indexOf = function(value) {

    var intReturnValue = -1;

    for (var intIndex = 0; intIndex < this.length; intIndex++) {
        if (this[intIndex] === value) {
            intReturnValue = intIndex;
            break;
        }
    }

    return intReturnValue;
};


/* 
Method: lastIndexOf 
Returns the last index at which a given element can be found in the array, or -1 if it is not present. The array is searched backwards, starting at the last element. 

Description:
indexOf compares the specified element to elements of the Array using strict equality (the same method used by the ===, or triple-equals, operator).
	
Parameters:
value - Value to locate in the array.
	
Syntax:
var index = array.lastIndexOf(element);
*/
Array.prototype.lastIndexOf = function(value) {

    var intReturnValue = -1;

    for (var intIndex = this.length - 1; intIndex >= 0; intIndex--) {
        if (this[intIndex] === value) {
            intReturnValue = intIndex;
            break;
        }
    }

    return intReturnValue;
};


Array.prototype.pop = function() {

    var oReturnValue = this[this.length - 1];

    this.removeAt(this.length - 1);

    return oReturnValue;
}


Array.prototype.remove = function(item) {

    if (this.contains(item) == true) {
        this.splice(this.indexOf(item), 1);
    }
}


Array.prototype.removeAt = function(index) {

    if (index >= 0 && index < this.length) {
        this.splice(index, 1);
    }
}


String.prototype.toInteger = function(defaultValue) {

    return isNaN(parseInt(this)) ? (defaultValue || 0) : parseInt(this);
};


String.prototype.toFloat = function(defaultValue) {

    return isNaN(parseFloat(this)) ? (defaultValue || 0.0) : parseFloat(this);
};


String.prototype.trim = function() {

    return this.replace(/^\s+|\s+$/g, "");
};


String.prototype.startsWith = function(value, ignoreCase) {

    return ignoreCase ? this.substring(0, value.length).toUpperCase() == value.toUpperCase() : this.substring(0, value.length) == value;
};


String.prototype.endsWith = function(value, ignoreCase) {

    return ignoreCase ? this.substring(this.length - value.length).toUpperCase() == value.toUpperCase() : this.substring(this.length - value.length) == value;
};


String.prototype.contains = function(value) {

    return this.indexOf(value) != -1;
};


String.prototype.firstIndexOf = function(value) {

    return this.indexOf(value);
};


function isNumeric(expression) {

    return isNaN(Number(expression)) == false;
};


function forEach(iterable, fn) {

    if (iterable) {
        if (typeof iterable.length == 'number') {
            for (var intIndex = 0; intIndex < iterable.length; intIndex++) {
                fn.call(iterable, iterable[intIndex], [intIndex]);
            }
        } else {
            for (var name in iterable) {
                fn.call(iterable, iterable[name], name);
            }
        }
    }
}


function getStyle(element, style) {

    var returnValue;

    if (element.currentStyle) {
        returnValue = element.currentStyle[style];
    } else {
        if (window.getComputedStyle) {
            returnValue = window.getComputedStyle(element, null)[style];
        }
    }

    return returnValue;
}


function getBorder(element) {

    var intTop = getStyle(element, 'borderTopWidth').toInteger();
    var intLeft = getStyle(element, 'borderLeftWidth').toInteger();
    var intBottom = getStyle(element, 'borderBottomWidth').toInteger();
    var intRight = getStyle(element, 'borderRightWidth').toInteger()

    return { 'top': intTop, 'left': intLeft, 'bottom': intBottom, 'right': intRight, 'height': intTop + intBottom, 'width': intLeft + intRight };
}


function getPadding(element) {

    var intTop = getStyle(element, 'paddingTop').toInteger();
    var intLeft = getStyle(element, 'paddingLeft').toInteger();
    var intBottom = getStyle(element, 'paddingBottom').toInteger();
    var intRight = getStyle(element, 'paddingRight').toInteger()

    return { 'top': intTop, 'left': intLeft, 'bottom': intBottom, 'right': intRight, 'height': intTop + intBottom, 'width': intLeft + intRight };
}


function getMargin(element) {

    var intTop = getStyle(element, 'marginTop').toInteger();
    var intLeft = getStyle(element, 'marginLeft').toInteger();
    var intBottom = getStyle(element, 'marginBottom').toInteger();
    var intRight = getStyle(element, 'marginRight').toInteger()

    return { 'top': intTop, 'left': intLeft, 'bottom': intBottom, 'right': intRight, 'height': intTop + intBottom, 'width': intLeft + intRight };
}


function getPosition(element) {

    var intLeft = element.offsetLeft;
    var intTop = element.offsetTop;

    if (element.offsetParent) {
        while (element = element.offsetParent) {
            intLeft += element.offsetLeft;
            intTop += element.offsetTop;
        }
    }

    return { 'x': intLeft, 'y': intTop };
}


function getCaretPos(element) {

    var intReturnValue = 0;

    if (element.value) {
        if (typeof element.selectionStart != "undefined") {
            intReturnValue = element.selectionStart;
        } else {
            if (document.selection) {
                intReturnValue = Math.abs(document.selection.createRange().moveStart("character", -element.value.length));
            }
        }
    }

    return intReturnValue;
}


function setCaretPos(element, position) {

    if (element.value) {
        if (typeof element.selectionStart != "undefined") {
            element.selectionStart = Math.min(element.value.length, Math.max(0, position));
            element.selectionEnd = element.selectionStart;
            element.focus();
        } else {
            if (document.selection) {
                with (document.selection.createRange()) {
                    moveStart("character", -element.value.length);
                    moveStart("character", position);
                    moveEnd("character", 0);
                    select();
                }
            }
        }
    }
}


function getSelectedText(element) {

    var strText = window.ie ? document.selection.createRange().text : window.getSelection();
    var intStartPos = 0;
    var intEndPos = strText.length;

    if (element) {
        if (element.value) {
            if (typeof element.selectionStart != "undefined") {
                intStartPos = element.selectionStart;
                intEndPos = element.selectionEnd;
            } else {
                if (document.selection) {
                    with (document.selection.createRange()) {
                        intStartPos = Math.abs(moveStart("character", -element.value.length));
                        intEndPos = Math.abs(moveEnd("character", -element.value.length));
                    }
                }
            }
        }
    }

    return { 'text': strText, 'startPos': intStartPos, 'endPos': intEndPos };
}


//function getSelection(element) {

//var intStartPos = 0;
//var intEndPos = 0;

//    if (element.value) {
//        if (typeof element.selectionStart != "undefined") {
//            intStartPos = element.selectionStart;
//            intEndPos = element.selectionEnd;
//        } else {
//            if (document.selection) {
//                with (document.selection.createRange()) {
//                    intStartPos = Math.abs(moveStart("character", -element.value.length));
//                    intEndPos = Math.abs(moveEnd("character", -element.value.length));
//                }                    
//            }
//        }
//    }

//    return {'startPos': intStartPos, 'endPos': intEndPos};
//}



function getOuterHeight(element) {

    return getMarginHeight(element) + getBorderHeight(element) + getPaddingHeight(element);
}


function getInnerHeight(element) {

    //return element.offsetHeight - getMarginHeight(element) - getBorderHeight(element) - getPaddingHeight(element);
    return element.offsetHeight - getBorderHeight(element) - getPaddingHeight(element);
}


function getPaddingHeight(element) {

    return getStyle(element, 'paddingTop').toInteger() + getStyle(element, 'paddingBottom').toInteger();
}


function getMarginHeight(element) {

    return getStyle(element, 'marginTop').toInteger() + getStyle(element, 'marginBottom').toInteger();
}


function getBorderHeight(element) {

    return getStyle(element, 'borderTopWidth').toInteger() + getStyle(element, 'borderBottomWidth').toInteger();
}


function getOuterWidth(element) {

    return getMarginWidth(element) + getBorderWidth(element) + getPaddingWidth(element);
}


function getInnerWidth(element) {

    //return element.offsetWidth - getMarginWidth(element) - getBorderWidth(element) - getPaddingWidth(element);
    return element.offsetWidth - getBorderWidth(element) - getPaddingWidth(element);
}

function getPaddingWidth(element) {

    return getStyle(element, 'paddingLeft').toInteger() + getStyle(element, 'paddingRight').toInteger();
}


function getMarginWidth(element) {

    return getStyle(element, 'marginLeft').toInteger() + getStyle(element, 'marginRight').toInteger();
}


function getBorderWidth(element) {

    return getStyle(element, 'borderLeftWidth').toInteger() + getStyle(element, 'borderRightWidth').toInteger();
}


function isWhitespace(node) {

    return node.nodeType == 3 || node.nodeType == 8 || (/\S/.test(node.nodeValue)) == false;
}


function removeWhitespace(node) {

    for (var intIndex = 0; intIndex < node.childNodes.length; intIndex++) {
        if (node.childNodes[intIndex].nodeType == 3 && (/\S/.test(node.childNodes[intIndex].nodeValue)) == false) {
            node.removeChild(node.childNodes[intIndex]);
            intIndex--;
        } else {
            if (node.childNodes[intIndex].nodeType == 1) {
                removeWhitespace(node.childNodes[intIndex]);
            }
        }
    }
}


function getFirstChild(parent) {

    var returnValue;

    for (var intIndex = 0, intLength = parent.childNodes.length; intIndex < intLength; intIndex++) {
        if (isWhitespace(parent.childNodes[intIndex]) == false) {
            returnValue = parent.childNodes[intIndex];
            break;
        }
    }

    return returnValue;
}


function getLastChild(parent) {

    var returnValue;

    for (var intIndex = parent.childNodes.length - 1; intIndex >= 0; intIndex--) {
        if (isWhitespace(parent.childNodes[intIndex]) == false) {
            returnValue = parent.childNodes[intIndex];
            break;
        }
    }

    return returnValue;
}


function getNextSibling(sibling) {

    var returnValue;

    while (sibling = sibling.nextSibling) {
        if (isWhitespace(sibling) == false) {
            returnValue = sibling;
            break;
        }
    }

    return returnValue;
}


function getPreviousSibling(sibling) {

    var returnValue;

    while (sibling = sibling.previousSibling) {
        if (isWhitespace(sibling) == false) {
            returnValue = sibling;
            break;
        }
    }

    return returnValue;
}


function getParentNode(child) {

    var returnValue = child.parentNode;

    if (isWhitespace(returnValue) == true) {
        returnValue = getPreviousSibling(returnValue);
    }

    return returnValue;
}


function getChildNode(parent, index) {

    var returnValue;

    for (intIndex = 0; intIndex < parent.childNodes.length; intIndex++) {
        if (isWhitespace(parent.childNodes[intIndex]) == false) {
            if (intIndex == index) {
                returnValue = parent.childNodes[intIndex];
                break;
            }
        } else {
            index += 1;
        }
    }

    return returnValue;
}


function getChildNodes(parent) {

    var returnValue = new Array();

    for (intIndex = 0; intIndex < parent.childNodes.length; intIndex++) {
        if (isWhitespace(parent.childNodes[intIndex]) == false) {
            returnValue.push(parent.childNodes[intIndex]);
        }
    }

    return returnValue;
}


function getAttribute(element, attributeName, defaultValue) {

    return element.getAttribute(attributeName) || (defaultValue || '');
}

/* 
Method: getTextContent
Get the text content of an element

Description:
Returns the text content of an element taking into account differences in browser behaviour.
Currently, Firefox uses textContent and all others use innerText.
	
Parameters:
element - The element whose text content is to bereturned
	
Syntax:
getTextContent(element);
*/
function getTextContent(element) {

    if (window.mozilla) {
        return element.textContent;
    }
    else {
        return element.innerText
    }
}

/* 
Method: setTextContent
Set the text content of an element

Description:
Sets the text content of an element taking into account differences in browser behaviour.
Currently, Firefox uses textContent and all others use innerText.
	
Parameters:
element - The element whose text content is to bereturned
value - The value to set
	
Syntax:
setTextContent(element, value);
*/
function setTextContent(element, value) {

    if (window.mozilla) {
        element.textContent = value;
    }
    else {
        element.innerText = value;
    }
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


function cancelEvent(event) {

    cancelBubble(event);
    cancelDefault(event);
}


/* 
Method: cancelBubble
Prevents further propogation (bubbling) of the specified event.  

Description:
indexOf compares the specified element to elements of the Array using strict equality (the same method used by the ===, or triple-equals, operator).
	
Parameters:
event - The Event on which propogation should be stopped.
	
Syntax:
cancelBubble(event);
*/
function cancelBubble(event) {

    if (event.stopPropagation) {
        event.stopPropagation();
    } else {
        event.cancelBubble = true;
    }
}


/* 
Method: cancelDefault
Cancels the event if it is cancelable, without stopping further propagation of the event. 

Description:
Calling cancelDefault during any stage of event flow cancels the event, meaning that any default action normally taken by the implementation as a result of the event will not occur. 

You can use event.cancelable to check if the event is cancelable. Calling cancelDefault for a non-cancelable events has no effect. 

cancelDefault doesn't stop further propagation of the event through the DOM. cancelBubble(event) should be used for that. 
	
Parameters:
event - The Event on which propogation should be stopped.
	
Syntax:
cancelDefault(event);
*/
function cancelDefault(event) {

    if (event.preventDefault) {
        event.preventDefault();
    } else {
        event.returnValue = false;
    }
}


function createXMLDocument(xml) {

    var xmlDoc;
    var domParser;

    if (window.ActiveXObject) {
        xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
        xmlDoc.async = "false";
        xmlDoc.loadXML(xml);
    } else {
        domParser = new DOMParser();
        xmlDoc = domParser.parseFromString(xml, "text/xml");
    }

    return xmlDoc;
}


function XmlEncode(str) {

    return str.toString().replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
}


if (!window.ie) {

    //selectNodes is IE, this function emulates it and makes it available to FF
    Element.prototype.selectNodes = function(xPath) {

        var aoReturnValue = new Array();
        var oEvaluator = new XPathEvaluator();
        var oResult = oEvaluator.evaluate(xPath, this, null, XPathResult.ORDERED_NODE_ITERATOR_TYPE, null);
        var oNode = oResult ? oResult.iterateNext() : null;

        if (oResult != null) {
            while (oNode) {
                aoReturnValue.push(oNode);
                oNode = oResult.iterateNext();
            }
        }

        return aoReturnValue;
    }

    //selectSingleNode is IE, this function emulates it and makes it available to FF
    Element.prototype.selectSingleNode = function(xPath) {

        var oReturnValue = null;
        var oEvaluator = new XPathEvaluator();
        var oResult = oEvaluator.evaluate(xPath, this, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null);

        if (oResult != null) {
            oReturnValue = oResult.singleNodeValue;
            oReturnValue.text = oReturnValue.textContent;
        }

        return oReturnValue;
    }
}


function urlEncode(value) {

    var strReturnValue;

    if (encodeURIComponent) {
        strReturnValue = encodeURIComponent(value);
    } else {
        strReturnValue = escape(value);
    }

    return strReturnValue;
}


function isCursorAtStartOfElement(element) {

    var blnReturnValue = true;

    if (typeof element.selectionStart != 'undefined') {
        blnReturnValue = (element.selectionStart == 0);
    } else {
        if (document.selection) {
            if (document.selection.selectionType = 'text') {
                if (element.createTextRange) {
                    try {
                        blnReturnValue = (document.selection.createRange().compareEndPoints('EndToStart', element.createTextRange()) <= 0);
                    }
                    catch (err) {
                        blnReturnValue = true;
                    }
                }
            }
        }
    }

    return blnReturnValue;
}


function isCursorAtEndOfElement(element) {

    var blnReturnValue = true;

    if (typeof element.selectionStart != 'undefined') {
        blnReturnValue = (element.selectionStart == element.value.length);
    } else {
        if (document.selection) {
            if (document.selection.selectionType = 'text') {
                if (element.createTextRange) {
                    try {
                        blnReturnValue = (document.selection.createRange().compareEndPoints('EndToEnd', element.createTextRange()) >= 0);
                    }
                    catch (err) {
                        blnReturnValue = true;
                    }
                }
            }
        }
    }

    return blnReturnValue;
}



/*********************************************************************
Effects 
*********************************************************************/

function easeInOut(minValue, maxValue, totalSteps, actualStep, power) {

    return Math.ceil(minValue + (Math.pow(((1 / totalSteps) * actualStep), power) * (maxValue - minValue)));
}


function doResize(element, startWidth, startHeight, finishWidth, finishHeight, steps, interval, power, onComplete) {

    var intCurrentStep = 0;

    if (element.resizeInterval) window.clearInterval(element.resizeInterval);

    element.resizeInterval = window.setInterval(
		function() {
		    element.style.width = easeInOut(startWidth, finishWidth, steps, intCurrentStep, power) + 'px';
		    element.style.height = easeInOut(startHeight, finishHeight, steps, intCurrentStep, power) + 'px';
		    intCurrentStep++;

		    if (intCurrentStep > steps) {
		        window.clearInterval(element.resizeInterval);

		        if (onComplete) {
		            onComplete.call();
		        }
		    }
		}

	, interval)
}


function doScroll(item, direction, onStop) {

    item.scrollLeft += (direction == 'left') ? -10 : Math.min(10, (item.scrollWidth - item.offsetWidth - 1) - item.scrollLeft);

    if ((direction == 'left' && item.scrollLeft == 0) || (direction == 'right' && item.scrollLeft == item.scrollWidth - item.offsetWidth)) {
        doScrollStop(item, onStop);
    }
}

function doScrollStart(item, direction, onStop) {

    //Ensure any existing scrolling for this item is cleaned up (this should not happen, we do this just to make sure)
    doScrollStop(item);

    //Force the first part of the scroll - we do this now because we add a delay in next before the continual scroll starts (done to mimic how a standard scrollbar works)
    doScroll(item, direction, onStop);

    //Wait for half a second before initialising the continual scroll
    sleep(500);

    //Ensure scrolling is stopped if the user releases the mouse
    addEvent(document, 'mouseup', new onScrollStopHandler(item, onStop))

    //Initialise the continual scroll while the mouse is down
    item.scrollInterval = window.setInterval(
            function() {
                doScroll(item, direction, onStop);
            }

        , 20)
}

function onScrollStopHandler(item, onStop) {

    function onScrollingStop() {
        doScrollStop(item, onStop);
    }

    item.onScrollStopHandler = onScrollingStop;

    return onScrollingStop;
}

function doScrollStop(item, onComplete) {

    clearInterval(item.scrollInterval);

    if (item.onScrollStopHandler) {
        removeEvent(document, 'mouseup', item.onScrollStopHandler);

        if (onComplete) {
            onComplete.call();
        }
    }
}

function sleep(duration) {

    var dteStart = new Date();

    while (new Date() - dteStart < duration) {
        //Do Nothing
    }
}

function getAbsoluteLeft(element) {

    var intLeft = element.offsetLeft;

    if (element.offsetParent) {
        while (element = element.offsetParent) {
            intLeft += element.offsetLeft;
        }
    }

    return intLeft;
}

function getAbsoluteTop(element) {

    var intTop = element.offsetTop;

    if (element.offsetParent) {
        while (element = element.offsetParent) {
            intTop += element.offsetTop;
        }
    }

    return intTop;
}

function getElementsByClassName(element, className) {

    var colReturnValue = [];
    var colAllElements = element.getElementsByTagName('*');
    var oRegExp = new RegExp(' ' + className + ' ');

    if (element.getElementsByClassName) {
        colReturnValue = element.getElementsByClassName(className);
    } else {
        for (var intIndex = 0; intIndex < colAllElements.length; intIndex++) {
            if (oRegExp.test(' ' + colAllElements[intIndex].className + ' ')) {
                colReturnValue.push(colAllElements[intIndex])
            }
        }
    }

    return colReturnValue;
}