// com_dateinput.ascx associated JScript File

function com_dateinput_setDateValue(dayId, monthId, yearId, day, month, year, oaDate) {

    var oDay = document.getElementById(dayId);
    var oMonth = document.getElementById(monthId);
    var oYear = document.getElementById(yearId);
    var blnChanged = false;
    var clientId = dayId.substring(0, dayId.lastIndexOf('_'));

    if (oDay) {
        if (oDay.value != day) {
            blnChanged = true
        }

        oDay.value = day;
    }
    if (oMonth) {
        if (oMonth.value != month) {
            blnChanged = true
        }

        oMonth.value = month;
    }
    if (oYear) {
        if (oYear.value != year) {
            blnChanged = true
        }

        oYear.value = year;
    }

    if (blnChanged == true) {
        if (document.getElementById(clientId + '_hdnDate').onchange) {
            document.getElementById(clientId + '_hdnDate').onchange.call();
        }
    }
}

function com_dateinput_getOADate(dayId, monthId, yearId, day) {
    var oYear = document.getElementById(yearId);
    var oMonth = document.getElementById(monthId);
    if (dayId) {
        oDay = document.getElementById(dayId);
        day = oDay.value;
    } else {
        day = day ? day : 1;
    }
    var dt = new Date();
    var year = oYear.value - 0;
    if (isNaN(year) || year < 1900) return NaN;
    if (oMonth.value == '') return NaN;
    if (day == '') return NaN;
    var dt = new Date(year, oMonth.value - 1, day - 0);
    return Math.round((dt - (new Date(1899, 11, 30))) / 86400000);
}


function com_dateinput_today(dayId, monthId, yearId) {

    var oDate = new Date();
    com_dateinput_setDateValue(dayId, monthId, yearId, oDate.getDate(), oDate.getMonth() + 1, oDate.getFullYear());

}

function com_dateinput_now(dayId, monthId, yearId, timeId, timeFormat, timeSeparator, am, pm) {

    var oDate = new Date();
    var oTime = document.getElementById(timeId);
    var nMinutes;
    var nHours;
    var tTime;
    var tAMPM;

    com_dateinput_today(dayId, monthId, yearId);

    if (oTime) {
        nHours = oDate.getHours();
        nMinutes = oDate.getMinutes();
        if (nHours >= 12) {
            tAMPM = pm;
        } else {
            tAMPM = am;
        }

        tTime = timeFormat.replace(':', timeSeparator);
        if (timeFormat.indexOf('h') > -1) {
            //12 hour clock
            if (nHours > 12) {
                alert(nHours);
                nHours = nHours - 12;
            } else {
                if (nHours == 0) {
                    nHours = 12;
                }
            }
            tTime = tTime.replace('h', 'H');
        }
        if (timeFormat.indexOf('HH') > -1) {
            if (nHours < 10) {
                nHours = '0' + nHours;
            }
            tTime = tTime.replace('HH', nHours);
        } else {
            tTime = tTime.replace('H', nHours);
        }
        if (timeFormat.indexOf('mm') > -1) {
            if (nMinutes < 10) {
                nMinutes = '0' + nMinutes;
            }
            tTime = tTime.replace('mm', nMinutes);
        } else {
            tTime = tTime.replace('m', nMinutes);
        }
        if (timeFormat.indexOf('tt') > -1) {
            tTime = tTime.replace('tt', tAMPM);
        } else {
            if (timeFormat.indexOf('t') > -1) {
                tTime = tTime.replace('t', tAMPM.charAt(0));
            }
        }
        oTime.value = tTime;
    }
}

function com_dateinput_clearDate(dayId, monthId, yearId) {

    com_dateinput_setDateValue(dayId, monthId, yearId, '', '', '');

}

function com_dateinput_clearTime(timeId) {

    var oTime = document.getElementById(timeId);
    if (oTime) {
        oTime.value = '';
    }
}

var winPopup;

function com_dateinput_showDatePick(calendarUrl, clientId, dayId, monthId, yearId) {

    var oDate = new Date();
    var oDay = document.getElementById(dayId);
    var oMonth = document.getElementById(monthId);
    var oYear = document.getElementById(yearId);
    var nYear;
    var nMonth;
    var nDay;
    var tURL;

    if (oYear) {
        if (isNaN(oYear.value)) {
            nYear = '';
        }
        else {
            nYear = oYear.value;
        }
    } else {
        nYear = '';
    }

    if (oMonth) {
        if (isNaN(oMonth.value)) {
            nMonth = '';
        }
        else {
            nMonth = oMonth.value;
        }
    } else {
        '';
    }

    if (oDay) {
        if (isNaN(oDay.value)) {
            nDay = '';
        }
        else {
            nDay = oDay.value;
        }
    } else {
        nDay = '';
    }

    tURL = calendarUrl + '&Popup=True&Year=' + nYear + '&Month=' + nMonth + '&Day=' + nDay;
    winPopup = AECWinPopup.open(tURL, 420, 420, com_dateinput_setDateCallback, clientId, false);
    //winPopup = window.open(tURL,'PopupSelect','toolbar=no,location=no,status=yes,menubar=no,scrollbars=yes,WIDTH=420,HEIGHT=420,resizable=yes');
    //winPopup.focus();

}

function com_dateinput_setDateCallback(clientId, returnValue) {

    var tDayId = clientId + '_cmbDay';
    var tMonthId = clientId + '_cmbMonth';
    var tYearId = clientId + '_txtYear';
    var tSelectId = clientId + '_lnkSelect';

    if (!document.getElementById(tDayId)) {
        tDayId = clientId + '_cmbDayUS';
    }

    if (!document.getElementById(tYearId)) {
        tYearId = clientId + '_cmbYear';
    }

    winPopup.close();

    com_dateinput_setDateValue(tDayId, tMonthId, tYearId, returnValue.day, returnValue.month, returnValue.year);

    if (document.getElementById(tDayId) && document.getElementById(tDayId).disabled == false) {
        document.getElementById(tDayId).focus();
    }
    else if (document.getElementById(tMonthId) && document.getElementById(tMonthId).disabled == false) {
        document.getElementById(tMonthId).focus();
    }
    else if (document.getElementById(tYearId) && document.getElementById(tYearId).disabled == false) {
        document.getElementById(tYearId).focus();
    }
    else if (document.getElementById(tSelectId)) {
        document.getElementById(tSelectId).focus();
    }
}

function com_dateinput_showHyperlinkDatePick(calendarUrl, popupCallback, date) {

    var tURL;

    tURL = calendarUrl + '&Popup=True&Date=' + escape(date);
    winPopup = AECWinPopup.open(tURL, 420, 450, popupCallback, null, false);

    //winPopup = window.open(tURL,'PopupSelect','toolbar=no,location=no,status=yes,menubar=no,scrollbars=yes,WIDTH=420,HEIGHT=420,resizable=yes');
    //winPopup.focus();

}
