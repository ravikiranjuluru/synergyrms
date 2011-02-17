<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>File Upload</title>
    <link id="lnkStyle" rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" />
<script type="text/javascript">
<!--
    function confirmCheckIn(existingFile, confirmationMessage) {

        var fuAttachment = document.getElementById('fuAttachment');
        var intIndex = fuAttachment.value.toLowerCase().lastIndexOf(existingFile.toLowerCase());

        if ((fuAttachment.value != '') && (intIndex != (fuAttachment.value.length - existingFile.length))) {
            //different file
            return confirm(confirmationMessage);
        } else {
            //same file
            return true;
        }
    }
-->
</script>

</head>
<body>
    <div>
        <form enctype="multipart/form-data" id="form1" action="com_uploaddocument.aspx?CallbackFunction=com_customfield_refreshDocumentCallback_ctl00_phFormContent_ucCustomFields_cfCustom21&amp;CallbackContext=window.opener.com_customfield_callbackcontext('ctl00_phFormContent_ucCustomFields_cfCustom21_hdnDocumentKey'%2ctrue)"
        method="post" name="form1">


        <script type="text/javascript">
            //&lt;![CDATA[
            var theForm = document.forms['form1'];
            if (!theForm) {
                theForm = document.form1;
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

        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
            <tbody>
                <tr>
                    <td valign="middle" align="left">
                        File Upload
                    </td>
                </tr>
            </tbody>
        </table>
        
        
        <table border="0" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <td>
                    <div id="ucErrors_divError">
                        <table class="error" width="100%">
                            <tr>
                                <td align="left" valign="middle">
                                    Unable to Save File
                                </td>
                            </tr>
                            <tr style="padding: 0px; margin: 0px;">
                                <td align="left" valign="middle" style="padding-left: 15px; padding-bottom: 0px;
                                    padding-top: 0px;">
                                    File is required
                                </td>
                            </tr>
                            <tr id="ucErrors_trSupportLog" style="display: none;">
                                <td align="left" valign="middle" style="padding: 10px 5px 0px 15px">
                                    <textarea name="ucErrors$txtErrorLog" id="ucErrors_txtErrorLog" cols="76" rows="4"></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>

        <table width="100%" cellspacing="0" cellpadding="10" border="0">
            <tbody>
                <tr>
                    <td>
                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                                <tr>
                                    <td align="center">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td align="left">
                                                        File:
                                                    </td>
                                                    <td align="left">
                                                        <input type="file" size="50" class="file" id="fuAttachment" name="fuAttachment">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        Description:
                                                    </td>
                                                    <td align="left">
                                                        <input type="text" maxlength="70" size="50" class="textBox" id="txtDescription" name="txtDescription">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" colspan="2">
                                                        <input type="submit" value="OK" class="button" id="btnOK" name="btnOK">
                                                        <input type="button" onclick="self.close();" value="Cancel" class="button" id="btnCancel"
                                                            name="btnCancel">
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
        </form>
    </div>
</body>
</html>
