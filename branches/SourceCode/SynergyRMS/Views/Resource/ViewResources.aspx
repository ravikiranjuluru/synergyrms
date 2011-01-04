<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="aspnetForm" action="#" method="post" name="aspnetForm">
   

    <script type="text/javascript">
        //&lt;![CDATA[
        var theForm = document.forms['aspnetForm'];
        if (!theForm) {
            theForm = document.aspnetForm;
        }
        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }
        //]]&gt;
</script>
<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" type="text/css"/>
    <script type="text/javascript" src="/common/script/com_selectall.js"></script>

    <script type="text/javascript" src="/common/controls/com_search.js"></script>

    <script type="text/javascript">
        //&lt;![CDATA[
        function ctl00_phSearchBar_ucSearch_onKeyPress(e) { e = e || window.event; if (e.keyCode == 13) { __doPostBack('ctl00$phSearchBar$ucSearch', 'SEARCH') } } //]]&gt;
</script>

    <script type="text/javascript" src="/common/controls/com_menulist.js"></script>

    <script type="text/javascript" src="/scripts/xbLibrary.js"></script>

    <div>
        <input type="hidden" value="/wEWCQLK28rVAQLQ7tLZAQLcgb7fDQKLnpiKDQLd7JWZDQLO6tr5AgKJtObqDgK13ZCaDAKM0f/KAl2HKQWbkbAFFqKsDnwnf5BBaqql"
            id="__EVENTVALIDATION" name="__EVENTVALIDATION">
    </div>

    <script type="text/javascript">
        
            var aecWebForm = document.getElementById('aspnetForm');
            var m_blnIsWebFormLoaded = false;
            var m_blnIsWebFormSubmitting = false;            
            var fnFormSubmit = null;
            
            
            //Cater for the Web Form already having an onSubmit method call
            if (aecWebForm.onsubmit) {
                fnFormSubmit = aecWebForm.onsubmit;
            }


            aecWebForm.onsubmit = function() {

                if (m_blnIsWebFormLoaded == true &amp;&amp; m_blnIsWebFormSubmitting == false) {
                    if (fnFormSubmit &amp;&amp; (fnFormSubmit.call() == false)) {
                        return false;
                    } else {
                        m_blnIsWebFormSubmitting = true;
                        return true;
                    }
                } else {
                    return false;
                }
            }            
        
        </script>

    <script type="text/javascript">
&lt;!--

    if (window.top.siteNavigation_selectTab) {
        window.top.siteNavigation_selectTab('ADMIN');
    }

function confirmDelete(code) {
    
    var strMsg = new String('Are you sure you want to delete {0}?');
    strMsg = strMsg.replace('{0}', code);   
    return confirm(strMsg);

}
//--&gt;
</script>

    <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
        <tbody>
            <tr>
                <td valign="middle" align="left">
                    Resource Search
                </td>
            </tr>
        </tbody>
    </table>
    <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(236, 236, 237);
        border-bottom: 1px solid rgb(153, 153, 153);">
        <tbody>
            <tr>
                <td class="toolbar">
                    <div id="ctl00_phSearchBar_ucSearch_pnlSearch">
                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                                <tr>
                                    <td valign="middle" align="left" style="white-space: nowrap; padding: 4px 8px;">
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="left" style="border-bottom: 1px solid rgb(153, 153, 153);
                                        padding: 0px;">
                                        <img id="ctl00_phSearchBar_ucSearch_imgDivider" src="images/space.gif">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="left" style="padding: 4px 8px;">
                                        <table border="0" style="padding: 2px;">
                                            <tbody>
                                                <tr>
                                                    <td valign="middle" align="left" style="white-space: nowrap;">
                                                        Resource Description:
                                                    </td>
                                                    <td valign="middle" align="left" style="white-space: nowrap;">
                                                        <label for="search">Enter Search entry here</label>
                                                        <input type="text" 
                                                            size="20" value="" id="search" name="ctl00$phSearchBar$ucSearch$txtValue0"
                                                            class="textBox">
                                                        &nbsp;
                                                        <input type="submit" class="button" id="ctl00_phSearchBar_ucSearch_btnSearch2" value="Search"
                                                            name="ctl00$phSearchBar$ucSearch$btnSearch2" />
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <table class="operationsBarOuter">
        <tbody>
            <tr>
                <td align="left">
                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                        <tbody>
                            <tr>
                                <td class="operationsBar">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td valign="middle" align="left">
                                                    <table cellspacing="0" cellpadding="0" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td valign="middle" align="left">
                                                                    <a href="#">
                                                                        Add a new Resource</a>
                                                                </td>
                                                                <td align="left" style="width: 16px;">
                                                                    &nbsp;
                                                                </td>
                                                                <td valign="middle" align="left">
                                                                   <a href="#"> Refresh</a>
                                                                </td>
                                                                <td valign="middle" align="left" style="width: 16px;">
                                                                    &nbsp;
                                                                </td>
                                                                <td valign="middle" align="left">
                                                                    
                                                                </td>
                                                                <td valign="middle" align="left" style="width: 16px;">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                                <td valign="middle" align="right">
                                                    <table cellspacing="0" cellpadding="0" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <table width="100%" cellspacing="0" cellpadding="10" border="0">
        <tbody>
            <tr>
                <td>
                    <table width="100%">
                        <tbody>
                            <tr>
                                <td>
                                    <table cellspacing="0" cellpadding="0" border="0" style="padding-bottom: 5px;">
                                        <tbody>
                                            <tr>
                                                <td valign="middle" align="left">
                                                    Displaying Records 1 - 4 of 4 | [Page 1 of 1]
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table cellspacing="0" cellpadding="0" style="width: 100%;" class="table">
                                        <thead>
                                            <tr>
                                                <td valign="middle" align="left" class="tableColumnTitle">
                                                    <a title="Click to sort by this column" onclick="__doPostBack('__Page','SORT:RECode')"
                                                        href="#">Code </a>
                                                    <img alt="" src="/images/arrowup_grey.gif">
                                                </td>
                                                <td valign="middle" align="left" class="tableColumnTitle">
                                                    <a title="Click to sort by this column" onclick="__doPostBack('__Page','SORT:REDesc')"
                                                        href="#">Description </a>
                                                </td>
                                                <td valign="middle" align="left" class="tableColumnTitle">
                                                    <span title="">Type</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableColumnTitle">
                                                    <span title="">Location</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableColumnTitle">
                                                    <span title="">Primary Role</span>
                                                </td>
                                                <td valign="middle" align="center" style="width: 1%;" class="tableColumnTitle">
                                                    &nbsp;
                                                </td>
                                                <td valign="middle" align="center" style="width: 1%;" class="tableColumnTitle">
                                                    &nbsp;
                                                </td>
                                                <td valign="middle" align="center" style="width: 1%;" class="tableColumnTitle">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <a title="Click to open this Resource for viewing / editing" 
                                                        href="#">RES1 </a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <a title="Click to open this Resource for viewing / editing" 
                                                        href="#">User 2 </a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <span title="">Employee</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <span title="">HEADOFFICE</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <span title="">PROJECTMANAGER</span>
                                                </td>
                                                <td valign="middle" align="center" class="tableRow">
                                                    <a title="Click to open this Resource for viewing / editing" 
                                                        href="#">
                                                        <img alt="Click to open this Resource for viewing / editing" src="../../Content/images/icon/openitem.gif">
                                                    </a>
                                                </td>

                                                <td valign="middle" align="center" class="tableRow">
                                                    <a title="Click to delete this Resource" 
                                                        href="#">
                                                        <img alt="Click to delete this Resource" src="../../Content/images/icon/deleteitem.gif">
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES2')"
                                                        href="#">RES2 </a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES2')"
                                                        href="#">User 1</a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <span title="">Employee</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <span title="">HEADOFFICE</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <span title="">PROJECTMANAGER</span>
                                                </td>
                                                <td valign="middle" align="center" class="tableRowDark">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES2')"
                                                        href="#">
                                                        <img alt="Click to open this Resource for viewing / editing" src="../../Content/images/icon/openitem.gif">
                                                    </a>
                                                </td>
                                        
                                                <td valign="middle" align="center" class="tableRowDark">
                                                    <a title="Click to delete this Resource" onclick="if (confirmDelete('RES2')) { __doPostBack('__Page','DELETE:RES2'); }"
                                                        href="#">
                                                        <img alt="Click to delete this Resource" src="../../Content/images/icon/deleteitem.gif">
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES3')"
                                                        href="#">RES3 </a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES3')"
                                                        href="#">User 1 </a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <span title="">Employee</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <span title="">HEADOFFICE</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRow">
                                                    <span title="">PROJECTMANAGER</span>
                                                </td>
                                                <td valign="middle" align="center" class="tableRow">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES3')"
                                                        href="#">
                                                        <img alt="Click to open this Resource for viewing / editing" src="../../Content/images/icon/openitem.gif">
                                                    </a>
                                                </td>
                                
                                                <td valign="middle" align="center" class="tableRow">
                                                    <a title="Click to delete this Resource" onclick="if (confirmDelete('RES3')) { __doPostBack('__Page','DELETE:RES3'); }"
                                                        href="#">
                                                        <img alt="Click to delete this Resource" src="../../Content/images/icon/deleteitem.gif">
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES4')"
                                                        href="#">RES4 </a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES4')"
                                                        href="#">User 5</a>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <span title="">Employee</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <span title="">HEADOFFICE</span>
                                                </td>
                                                <td valign="middle" align="left" class="tableRowDark">
                                                    <span title="">TRAINER</span>
                                                </td>
                                                <td valign="middle" align="center" class="tableRowDark">
                                                    <a title="Click to open this Resource for viewing / editing" onclick="__doPostBack('__Page','OPEN:RES4')"
                                                        href="#">
                                                        <img alt="Click to open this Resource for viewing / editing" src="../../Content/images/icon/openitem.gif">
                                                    </a>
                                                </td>

                                                <td valign="middle" align="center" class="tableRowDark">
                                                    <a title="Click to delete this Resource" onclick="if (confirmDelete('RES4')) { __doPostBack('__Page','DELETE:RES4'); }"
                                                        href="#">
                                                        <img alt="Click to delete this Resource" src="../../Content/images/icon/deleteitem.gif">
                                                    </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>

    <script type="text/javascript">
        //&lt;![CDATA[
        m_blnIsWebFormLoaded = true; com_menulist_registerHandler(); //]]&gt;
</script>

    </form>

</asp:Content>
