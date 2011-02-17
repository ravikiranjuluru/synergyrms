/**************************************************************************************************************************************************
Atlantic Global Cross Browser Splitter Javascript Library
**************************************************************************************************************************************************/

var xbSplitter = {
    initialise: function () {
        this.minSize = 50,
		this.isDragging = false;

        forEach(document.getElementsByTagName('div'), function (container, index) {
            if (getAttribute(container, 'aecType', '') == 'xbSplitter') {
                var blnIsHorizontal = getAttribute(container, 'aecOrientation') == '1';
                var oSplitter = document.createElement('div');
                var oWindow1 = getChildNode(container, 0);
                var oWindow2 = getChildNode(container, 1);

                //Set Splitter Styles
                oSplitter.style.position = 'absolute';
                oSplitter.style.backgroundColor = '#999999';
                oSplitter.style.fontSize = '1px';
                oSplitter.style.height = blnIsHorizontal ? getAttribute(container, 'aecSplitterSize', '5').toInteger() + 'px' : container.clientHeight + 'px';
                oSplitter.style.width = blnIsHorizontal ? container.clientWidth + 'px' : getAttribute(container, 'aecSplitterSize', '5').toInteger() + 'px';
                oSplitter.style.cursor = blnIsHorizontal ? 'row-resize' : 'col-resize';
                oSplitter.style.zIndex = 1;

                if (container.getAttribute('aecSplitterImage')) {
                    oSplitter.style.background = 'url(' + container.getAttribute('aecSplitterImage') + ') ' + (blnIsHorizontal ? 'repeat-x' : 'repeat-y');
                }

                //Add Events		
                oSplitter.onmousedown = window.xbSplitter.splitter_onMouseDown;

                //Insert the splitter bar between the first and second window													
                container.insertBefore(oSplitter, oWindow2);

                //Set Window Styles					
                oWindow1.style.position = 'absolute';
                oWindow2.style.position = 'absolute';

                //Set Window Attributes
                oWindow1.setAttribute('aecWindow', '1');
                oWindow2.setAttribute('aecWindow', '2');

                //Cater for 1 of the windows being hidden
                if (oWindow1.style.display == 'none' || oWindow2.style.display == 'none') {
                    oSplitter.style.display = 'none';

                    if (oWindow1.style.display == 'none') {
                        oWindow1.setAttribute('aecSize', '0');
                        oWindow2.setAttribute('aecSize', '100%');
                    } else {
                        oWindow1.setAttribute('aecSize', '100%');
                        oWindow2.setAttribute('aecSize', '0');
                    }
                }

                //Determine whether a numeric size has been specified for the first window
                if (isNaN(parseInt(getAttribute(oWindow1, 'aecSize'))) == false) {
                    //Numeric size has been specified for the first window, determine whether a numeric size has been specified for the second window
                    if (isNaN(parseInt(getAttribute(oWindow2, 'aecSize'))) == false) {
                        //Numeric size has been specified for the second window, determine whether the size of both windows is a percentage
                        if (getAttribute(oWindow1, 'aecSize').endsWith('%') == true && getAttribute(oWindow2, 'aecSize').endsWith('%') == true) {
                            //Size of both windows is a percentage, determine whether the total percentage exceeds 100%								
                            if (parseInt(getAttribute(oWindow1, 'aecSize')) + parseInt(getAttribute(oWindow2, 'aecSize')) > 100) {
                                //Total percentage does exceed 100%, distrubute the percentages proportionately based on the specified percentage values
                                oWindow1.setAttribute('aecSize', parseInt((100 / (parseInt(getAttribute(oWindow1, 'aecSize')) + parseInt(getAttribute(oWindow2, 'aecSize')))) * parseInt(getAttribute(oWindow1, 'aecSize'))) + '%');
                                oWindow2.setAttribute('aecSize', 100 - parseInt(getAttribute(oWindow1, 'aecSize')) + '%');
                            }
                        }
                    } else {
                        //Numeric size has not been specified for the second window, determine whether the size of the first window is a percentage
                        if (getAttribute(oWindow1, 'aecSize').endsWith('%') == true) {
                            //Size of the first window is a percentage, determine whether the size is a valid value								
                            if (parseInt(getAttribute(oWindow1, 'aecSize')) >= 0 && parseInt(getAttribute(oWindow1, 'aecSize')) <= 100) {
                                //Size is a valid value
                                oWindow2.setAttribute('aecSize', 100 - parseInt(getAttribute(oWindow1, 'aecSize')) + '%');
                            } else {
                                //Size is not a valid value									
                                oWindow2.setAttribute('aecSize', parseInt(getAttribute(oWindow1, 'aecSize')) < 0 ? '100%' : '0%');
                                oWindow1.setAttribute('aecSize', parseInt(getAttribute(oWindow1, 'aecSize')) < 0 ? '0%' : '100%');
                            }
                        }
                    }
                } else {
                    //Numeric size has not been specified for the first window, determine whether a numeric size has been specified for the second window
                    if (isNaN(parseInt(getAttribute(oWindow2, 'aecSize'))) == false) {
                        //Numeric size has been specified for the second window, determine whether the size is a percentage
                        if (getAttribute(oWindow2, 'aecSize').endsWith('%') == true) {
                            //Size is a percentage, determine whether the size is a valid value								
                            if (parseInt(getAttribute(oWindow2, 'aecSize')) >= 0 && parseInt(getAttribute(oWindow2, 'aecSize')) <= 100) {
                                //Size is a valid value
                                oWindow1.setAttribute('aecSize', 100 - parseInt(getAttribute(oWindow2, 'aecSize')) + '%');
                            } else {
                                //Size is not a valid value									
                                oWindow1.setAttribute('aecSize', parseInt(getAttribute(oWindow2, 'aecSize')) < 0 ? '100%' : '0%');
                                oWindow2.setAttribute('aecSize', parseInt(getAttribute(oWindow2, 'aecSize')) < 0 ? '0%' : '100%');
                            }
                        }
                    } else {
                        //Numeric size has not been specified for the second window, use default sizes
                        oWindow1.setAttribute('aecSize', '50%');
                        oWindow2.setAttribute('aecSize', '50%');
                    }
                }

                //Listen for the Container resizing
                if (window.ie == true) {
                    addEvent(container, 'resize', window.xbSplitter.container_onResize);
                } else {
                    container.resizeInterval = window.setInterval(window.xbSplitter.resizeWindows, 100, container);
                }

                //Resize the windows
                window.xbSplitter.resizeWindows(container);
            }
        });
    },


    container_onResize: function () {

        window.xbSplitter.resizeWindows(event.srcElement);
    },


    resizeWindows: function (container) {

        var oWindow1 = getChildNode(container, 0);
        var oSplitter = getChildNode(container, 1);
        var oWindow2 = getChildNode(container, 2);
        var blnIsHorizontal = getAttribute(container, 'aecOrientation') == '1';
        var intCanvasSize = blnIsHorizontal ? container.clientHeight - oSplitter.offsetHeight : container.clientWidth - oSplitter.offsetWidth;
        var intWindow1MinSize = Math.max(getAttribute(oWindow1, 'aecMinSize').toInteger(0), window.xbSplitter.minSize);
        var intWindow2MinSize = Math.max(getAttribute(oWindow2, 'aecMinSize').toInteger(0), window.xbSplitter.minSize);
        var intWindow1Size;
        var intWindow2Size;

        //			if (blnIsHorizontal == true) {
        //			
        //			} else {
        //			    if (oWindow2.getAttribute('aecMaxSize')) { 
        //			        if (oWindow2.getAttribute('aecMaxSize').endsWith('%') == true) {
        //			            //intMinSize = Math.max(intMinSize, parseInt((intCanvasSize / 100) * parseFloat(getNextSibling(oSplitter).getAttribute('aecMaxSize'))));
        //			        } else {
        //			            intWindow1MinSize = Math.max(intWindow1MinSize, (intCanvasSize - parseInt(oWindow2.getAttribute('aecMaxSize'))));
        //			        }
        //			    }
        //			}			

        //Determine whether a size has been specified for the first window
        if (oWindow1.getAttribute('aecSize')) {
            //Size has been specified for the first window, determine whether the size is a percentage
            if (oWindow1.getAttribute('aecSize').endsWith('%') == true) {
                //Size is a percentage
                intWindow1Size = Math.max(intWindow1MinSize, parseInt((intCanvasSize / 100) * parseFloat(oWindow1.getAttribute('aecSize'))));
            } else {
                //Size is not a percentage
                intWindow1Size = Math.max(intWindow1MinSize, parseInt(oWindow1.getAttribute('aecSize')));
            }

            //Determine whether a size has been specified for the second window
            if (oWindow2.getAttribute('aecSize')) {
                //Size has been specified for the second window, determine whether the size is a percentage
                if (oWindow2.getAttribute('aecSize').endsWith('%') == true) {
                    //Size is a percentage
                    intWindow2Size = Math.max(intWindow2MinSize, parseInt((intCanvasSize / 100) * parseFloat(oWindow2.getAttribute('aecSize'))));

                    //Determine whether the first and second window sizes exceed the canvas size
                    if (intWindow1Size + intWindow2Size > intCanvasSize) {
                        //First and second window sizes do exceed the canvas size, determine whether the first window size is a percentage
                        if (oWindow1.getAttribute('aecSize').endsWith('%') == true) {
                            //First window size is a percentage, determine whether both window sizes are at their minimum size
                            if (intWindow1Size != intWindow1MinSize || intWindow2Size != intWindow2MinSize) {
                                //At least one window is not at it's minimum size, determine whether the first window is at it's minimum size
                                if (intWindow1Size == intWindow1MinSize) {
                                    //First window is at it's minimum size, resize the second window
                                    intWindow2Size = Math.max(intWindow2MinSize, intCanvasSize - intWindow1MinSize);
                                } else {
                                    //First window is not at it's minimum size, resize the first window
                                    intWindow1Size = Math.max(intWindow1MinSize, intCanvasSize - intWindow2MinSize);
                                }
                            }
                        }
                    }
                } else {
                    //Size is not a percentage
                    intWindow2Size = Math.max(intWindow2MinSize, parseInt(oWindow2.getAttribute('aecSize')));
                }
            } else {
                //Size has not been specified for the second window, the size of the second window is based on the canvas size less the size of the first window
                intWindow2Size = Math.max(intWindow2MinSize, intCanvasSize - intWindow1Size);
                intWindow1Size = Math.max(intWindow1MinSize, Math.min(intCanvasSize - intWindow2Size, intWindow1Size));
            }
        } else {
            //Size has not been specified of the first window, the size of the first window is based on the canvas size less the size of the second window
            intWindow1Size = Math.max(intWindow1MinSize, intCanvasSize - parseInt(oWindow2.getAttribute('aecSize')));
            intWindow2Size = Math.max(intWindow2MinSize, Math.min(intCanvasSize - intWindow1Size, parseInt(oWindow2.getAttribute('aecSize'))));
        }

        //Take any borders into consideration
        intWindow1Size -= blnIsHorizontal ? getBorderHeight(oWindow1) : getBorderWidth(oWindow1);
        intWindow2Size -= blnIsHorizontal ? getBorderHeight(oWindow2) : getBorderWidth(oWindow2);

        //Resize the windows
        if (blnIsHorizontal == true) {
            oWindow1.style.height = intWindow1Size + 'px';
            oWindow2.style.height = intWindow2Size + 'px';

            //oSplitter.style.top = getStyle(oWindow1, 'top').toInteger() + oWindow1.offsetHeight + 'px';
            oSplitter.style.top = oWindow1.offsetTop + oWindow1.offsetHeight + 'px';
            oWindow2.style.top = getStyle(getChildNode(container, 1), 'top').toInteger() + oSplitter.offsetHeight + 'px';

            oWindow1.style.width = Math.max(Math.max(getAttribute(oWindow1, 'aecMinSize').toInteger(0), window.xbSplitter.minSize), container.clientWidth) - getBorderWidth(oWindow1) + 'px';
            oSplitter.style.width = container.clientWidth - getBorderWidth(oSplitter) + 'px';
            oWindow2.style.width = Math.max(Math.max(getAttribute(oWindow2, 'aecMinSize').toInteger(0), window.xbSplitter.minSize), container.clientWidth) - getBorderWidth(oWindow2) + 'px';
        } else {
            oWindow1.style.width = intWindow1Size + 'px';
            oWindow2.style.width = intWindow2Size + 'px';

            oSplitter.style.left = oWindow1.offsetLeft + oWindow1.offsetWidth + 'px';
            oWindow2.style.left = getStyle(oSplitter, 'left').toInteger() + oSplitter.offsetWidth + 'px';

            oWindow1.style.height = container.clientHeight - getBorderHeight(oWindow1) + 'px';
            oSplitter.style.height = container.clientHeight - getBorderHeight(oSplitter) + 'px';
            oWindow2.style.height = container.clientHeight - getBorderHeight(oWindow2) + 'px';
        }
    },


    splitter_onMouseDown: function (e) {

        var oEvent = e || window.event;

        //Determine whether the left mouse button has been selected
        if (oEvent.which == 1 || oEvent.button == 1) {
            //Left mouse button has been seleced, initialise local variables
            var oSplitter = this;
            var oVirtualSplitter = oSplitter.cloneNode(true);
            var oContainer = getParentNode(this);
            var oWindow1 = getPreviousSibling(this);
            var oWindow2 = getNextSibling(this);
            var blnIsHorizontal = getAttribute(oContainer, 'aecOrientation').toInteger(1) == 1;
            var intCanvasSize = blnIsHorizontal ? oContainer.clientHeight - this.offsetHeight : oContainer.clientWidth - this.offsetWidth;
            var intMouseOffset = blnIsHorizontal ? getStyle(this, 'top').toInteger() - oEvent.clientY : getStyle(this, 'left').toInteger() - oEvent.clientX;
            var intMinPos = (blnIsHorizontal ? oWindow1.offsetTop : oWindow1.offsetLeft) + getAttribute(oWindow1, 'aecMinSize').toInteger(window.xbSplitter.minSize);
            var intMaxPos = (blnIsHorizontal ? oWindow2.offsetTop + oWindow2.offsetHeight - oSplitter.offsetHeight : oWindow2.offsetLeft + oWindow2.offsetWidth - oSplitter.offsetWidth) - getAttribute(oWindow2, 'aecMinSize').toInteger(window.xbSplitter.minSize);

            if (getNextSibling(oSplitter).getAttribute('aecMaxSize')) {
                if (getNextSibling(oSplitter).getAttribute('aecMaxSize').endsWith('%') == true) {
                    //intMinPos = Math.max(intMinPos, parseInt((intCanvasSize / 100) * parseFloat(oWindow2.getAttribute('aecMaxSize'))));
                } else {
                    //intMinPos = Math.max(intMinPos, (intCanvasSize - parseInt(oWindow2.getAttribute('aecMaxSize'))) + oWindow1.offsetLeft);
                }
            }

            //Flag the Splitter as being dragged
            window.xbSplitter.isDragging = true;

            //Ensure the cursor maintains the row/col resize
            document.documentElement.style.cursor = blnIsHorizontal ? 'row-resize' : 'col-resize';

            //Create the virtual splitter (oSplitter is what will be dragged)
            oVirtualSplitter.style.position = 'absolute';
            oVirtualSplitter.style.backgroundColor = '#CCCCCC';
            oVirtualSplitter.style.fontSize = '1px';
            oVirtualSplitter.style.zIndex = 2;

            if (blnIsHorizontal == true) {
                oVirtualSplitter.style.top = getStyle(oSplitter, 'top').toInteger() + 'px';
            } else {
                oVirtualSplitter.style.left = getStyle(oSplitter, 'left').toInteger() + 'px';
            }

            if (window.ie == true) {
                oVirtualSplitter.style.filter = 'alpha(opacity:50)';
            } else {
                oVirtualSplitter.style.MozOpacity = 0.5;
            }

            //Append the virtual splitter to the container window
            oContainer.appendChild(oVirtualSplitter);

            //Cancel the event, this ensures HTML elements do not become hightlighted when dragging, causes 'sticky' functionality in FF.
            cancelEvent(oEvent);

            //Create the function that will be called when the onmousemove event is triggered
            var document_onMouseMove = function (e) {

                var oEvent = e || window.event;

                if (blnIsHorizontal == true) {
                    oVirtualSplitter.style.top = Math.min(intMaxPos, Math.max(intMinPos, oEvent.clientY + intMouseOffset)) + 'px';
                } else {
                    oVirtualSplitter.style.left = Math.min(intMaxPos, Math.max(intMinPos, oEvent.clientX + intMouseOffset)) + 'px';
                }

                cancelEvent(oEvent);
            };

            //Create the function that will be called when the onmouseup event is triggered
            var document_onMouseUp = function (e) {

                //Resize the windows based on where the Splitter was released
                if (blnIsHorizontal == true) {
                    oWindow1.style.height = oVirtualSplitter.offsetTop - oWindow1.offsetTop - getBorderHeight(oWindow1) + 'px';
                    oSplitter.style.top = oVirtualSplitter.offsetTop + 'px';
                    oWindow2.style.height = oWindow2.offsetHeight + (oWindow2.offsetTop - (oSplitter.offsetTop + oSplitter.offsetHeight)) - getBorderHeight(oWindow2) + 'px';
                    oWindow2.style.top = oSplitter.offsetTop + oSplitter.offsetHeight + 'px';
                } else {
                    oWindow1.style.width = oVirtualSplitter.offsetLeft - oWindow1.offsetLeft - getBorderWidth(oWindow1) + 'px';
                    oSplitter.style.left = oVirtualSplitter.offsetLeft + 'px';
                    oWindow2.style.width = oWindow2.offsetWidth + (oWindow2.offsetLeft - (oSplitter.offsetLeft + oSplitter.offsetWidth)) - getBorderWidth(oWindow2) + 'px';
                    oWindow2.style.left = oSplitter.offsetLeft + oSplitter.offsetWidth + 'px';
                }

                //Determine whether the first and second windows are sized based on a percentage
                if (getAttribute(getPreviousSibling(oSplitter), 'aecSize').endsWith('%') == true && getAttribute(getNextSibling(oSplitter), 'aecSize').endsWith('%') == true) {
                    //First and second windows are sized based on a percentage, recalculate the percentages based on the new window sizes
                    if (blnIsHorizontal == true) {
                        oWindow1.setAttribute('aecSize', ((oWindow1.offsetHeight / intCanvasSize) * 100).toString() + '%');
                        oWindow2.setAttribute('aecSize', ((100 - (oWindow1.offsetHeight / intCanvasSize) * 100)).toString() + '%');
                    } else {
                        oWindow1.setAttribute('aecSize', ((oWindow1.offsetWidth / intCanvasSize) * 100).toString() + '%');
                        oWindow2.setAttribute('aecSize', ((100 - (oWindow1.offsetWidth / intCanvasSize) * 100)).toString() + '%');
                    }
                } else {
                    //First and/or second windows are not sized based on a percentage, set physical sizes of the windows if these have been specified
                    if (oWindow1.getAttribute('aecSize')) {
                        if (blnIsHorizontal == true) {
                            oWindow1.setAttribute('aecSize', oWindow1.offsetHeight.toString());
                        } else {
                            oWindow1.setAttribute('aecSize', oWindow1.offsetWidth.toString());
                        }
                    }

                    if (oWindow2.getAttribute('aecSize')) {
                        if (blnIsHorizontal == true) {
                            oWindow2.setAttribute('aecSize', oWindow2.offsetHeight.toString());
                        } else {
                            oWindow2.setAttribute('aecSize', oWindow2.offsetWidth.toString());
                        }
                    }
                }

                //Remove the virtual splitter
                oContainer.removeChild(oVirtualSplitter);

                //Ensure the cursor is reset
                document.documentElement.style.cursor = 'default';

                //Flag the Splitter as not being dragged
                window.xbSplitter.isDragging = false;

                //Remove the onmousemove and onmouseup events
                removeEvent(document, 'mouseup', document_onMouseUp);
                removeEvent(document, 'mousemove', document_onMouseMove);
            };

            //Add the onmousemove and onmouseup events
            addEvent(document, 'mousemove', document_onMouseMove);
            addEvent(document, 'mouseup', document_onMouseUp);
        }
    },


    hideWindow: function (window) {

        if (window) {
            if (typeof window == 'string') {
                window = document.getElementById(window);
            }

            if (window) {
                if (window.getAttribute('aecWindow')) {
                    var oSplitter = window.getAttribute('aecWindow') == '1' ? getNextSibling(window) : getPreviousSibling(window);

                    //Hide the Window and the Splitter
                    window.style.display = oSplitter.style.display = 'none';
                    window.setAttribute('aecSize', '0');

                    //Update the remaining window so that it can occupy 100% of the available space
                    if (window.getAttribute('aecWindow') == '1') {
                        getNextSibling(oSplitter).setAttribute('aecSize', '100%');
                    } else {
                        getPreviousSibling(oSplitter).setAttribute('aecSize', '100%');
                    }

                    //Resize the remaining window
                    xbSplitter.resizeWindows(getParentNode(window));
                }
            }
        }
    }
};