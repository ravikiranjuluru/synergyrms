<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
     <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" />
    <link id="lnkStyle" rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" />


    <script src="<%= ResolveUrl("~") %>Scripts/common/WebResorce.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/xbLibrary.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/com_popupwindow.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/com_sitenavigation.js" type="text/javascript"></script>
    <script src="<%= ResolveUrl("~") %>Scripts/common/jquery-1.4.1.min.js" type="text/javascript"></script>
	<script src="<%= ResolveUrl("~") %>Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
	<script src="<%= ResolveUrl("~") %>Scripts/jquery-ui-1.7.2.custom.min.js" type="text/javascript"></script>
	<script src="<%= ResolveUrl("~") %>Scripts/jquery.blockUI.js" type="text/javascript"></script>
	
	
	<link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/WebResorce.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/SkinStyle.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" type="text/css"/>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/sitenavigation.css" type="text/css"/>   
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/ScrollableTable.css" type="text/css" />
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/Grid.css" type="text/css"/>
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" type="text/css"/>
   <%-- <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.8.6.custom.css" type="text/css" media="screen" />--%>
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/jquery-ui-1.7.2.custom.css" type="text/css" media="screen" />
</head>
<body>
    <div>
    <script type="text/javascript">


    function ags_main_doShowPopup(url) {

        url += url.contains('?') ? '&' : '?';
        url += 'WindowMode=1';

        AECWinPopup.open(url, 850, 500, popupCallback, '', false);

    }



    function docUpload_onClick() {

        AECWinPopup.open('FileUpload', 450, 350, popupCallback, '', false);
    }

    function popupCallback(context, returnValue) {


    }



    function openPage(pageUrl) {
        window.frames['mainFrame'].location.href = pageUrl;
    }





    function radMenu_onItemClick(sender, args) {

        if (args.Item.Items.length == 0) {
            if (args.Item.LinkElement) {
                if (args.Item.LinkElement.target == 'mainFrame' && args.Item.LinkElement.href.length > 0) {
                    WebForm_DoCallback('__Page', args.Item.LinkElement.href, callbackHandler, null, null, true);
                }
            }

            sender.Close();
        }
    }



    function callbackHandler() {
        //do nothing
    }




    addEvent(window, 'load', window_onLoad);
    addEvent(window, 'resize', window_onResize);


    function window_onLoad() {

        if (document.getElementById('mnuMySettings')) {
            document.getElementById('mnuMySettings').style.position = 'relative';
        }

        window_onResize();


        //openPage('/ags_gettingstarted.aspx?Code=GETTINGSTARTED');
        //openPage('/Account/Login');

        if (document.getElementById('snTabbedUI')) {
            window.siteNavigation.doResize(document.getElementById('snTabbedUI'));
        }
    }


    function window_onResize() {

        if (document.getElementById("divTabStrip")) {
            document.getElementById("divTabStrip").style.width = document.documentElement.clientWidth - getAbsoluteLeft(getParentNode(document.getElementById("divTabStrip"))) + 'px';
        }

        document.getElementById('mainFrame').style.height = Math.max(100, document.documentElement.clientHeight - document.getElementById('mainFrame').offsetTop) + 'px';
    }

  
    </script>  
    
<div class="formContainer" id="masterpage_divMain">
            <div class="formHead" id="masterpage_divHead">
                
<table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
	<tbody><tr>
		<td valign="middle" align="left">
		   Add Document
		</td>
		
		
	</tr>
</tbody></table>
                
            </div>
            
                
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tbody><tr>
                    <td>
                        <div class="formBody" id="masterpage_divBody">
                       
                            


                            

                            
                            

<table cellspacing="0" cellpadding="0" class="" style="border: medium none; width: 100%;" id="tabTablectl00_phTabstripHeader_tabMain">
    <tbody><tr>
        <td align="left" id="ctl00_phTabstripHeader_tabMain_tdStretch">            
            <div style="overflow: hidden;" id="ctl00_phTabstripHeader_tabMain_divTabContainer">
                
                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_phTabstripHeader_tabMain_tabStrip">
	<tbody><tr>
	</tr>
	<tr>
		<td class="tabSpace"><img height="1" width="5" id="ctl00_phTabstripHeader_tabMain_imgTabSpace" src="/images/space.gif"></td>
		<td nowrap="nowrap" class="tabSelected">Project Document</td>
		<td nowrap="nowrap" width="100%" valign="middle" align="left" class="tabTail">&nbsp;</td>
	</tr>
</tbody></table>
                
             </div>			 
        </td>

    </tr>
    
    
        <tr>
		    <td>
			    <table height="5" width="100%" cellspacing="0" cellpadding="0" border="0" class="tabStripBase">
				    <tbody><tr>
					    <td valign="middle" align="left" id="btnScrollLeft" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_phTabstripHeader_tabMain_imgScrollLeft" src="../../../images/arrowleft_grey.gif">
					    </td>
					    <td width="100%">
    						
					    </td>
					    <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
						    <img align="middle" style="display: none;" id="ctl00_phTabstripHeader_tabMain_imgScrollRight" src="../../../images/arrowright_grey.gif">
					    </td>
				    </tr>
			    </tbody></table>
		    </td>
	    </tr>
	
        </tbody></table>
    

                        
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;" id="masterPage_tblFormContentRoot">
                                <tbody><tr>
                                    <td class="form">
                                        
<table class="formContent">
    

<tbody><tr>
	<td height="5" class="formDetailDarkNoPadding" style="width: 309px"><img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="../../../images/space.gif"></td>
	<td height="5" width="100%" colspan="2" class="formDetailNoPadding"><img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="../../../images/space.gif"></td>
</tr>
        
            
        
        <!-- Resource / Reference -->
        <tr>
            <td valign="middle" align="right" class="formDetailDark" style="width: 309px">
                Logged By:
            </td>
            <td valign="middle" align="left" style="width: 100%;" class="formDetail">
                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                    <tbody><tr>
                        <td align="left">
                            <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxResource_lnkSelect', 'ctl00_phFormContent_pbxResource_lnkRefresh', true);" value="RES1" class="textBox" id="ctl00_phFormContent_pbxResource_txtValue" name="ctl00$phFormContent$pbxResource$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxResource$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxResource_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxResource$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxResource_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxResource_divDescription">
             | Alan Barnacle</div>
<input type="hidden" value="Alan Barnacle" id="ctl00_phFormContent_pbxResource_hdnDescription" name="ctl00$phFormContent$pbxResource$hdnDescription">
                            
                        </td>
                        <td>&nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    
        <!-- Action Type -->
        <tr>
            <td valign="middle" align="right" class="formDetailDark" style="width: 309px">
                Action Type:
            </td>
            <td valign="middle" align="left" style="width: 100%;" class="formDetail">
                
                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                        <tbody><tr>
                            <td align="left">
                                <select onchange=" if (confirm('This will cause the custom fields to be refreshed. Do you want to continue?'))         { __doPostBack('__Page','ACTIONTYPE:CHANGE');        } else {  __doPostBack('__Page','REFRESHPAGE'); }" class="comboBox" id="ctl00_phFormContent_cboActionType" name="ctl00$phFormContent$cboActionType">
	<option value="DOCUMENT" selected="selected">DOCUMENT | Project Document</option>
</select>                            
                                
                                &nbsp;
                                (Standard Action)
                            </td>
                            
                        </tr>
                    </tbody></table>
                
            </td>        
        </tr>
        
        <!-- Status/Priority -->
        
        
        <!-- Start/End Dates -->
        
            <tr>
                <td valign="middle" align="right" class="formDetailDark" style="width: 309px">
                    Date Logged:
                </td>
                <td valign="middle" align="left" class="formDetail">
                    12/28/2010
                        &nbsp;
                    
                </td>   
            </tr>
            
            
        
        <!-- Client -->
        
        
        <!-- Contact -->
        
        
        <!-- Project -->
        
            <tr>
                <td valign="middle" align="right" class="formDetailDark" style="width: 309px">
                    Project:
                </td>
                <td valign="middle" align="left" class="formDetail">
                    <input type="text" onkeydown="com_pickbox_onKeyDown(event, this, 'ctl00_phFormContent_pbxProject_lnkSelect', 'ctl00_phFormContent_pbxProject_lnkRefresh', true);" value="PROJECT1" class="textBox" id="ctl00_phFormContent_pbxProject_txtValue" name="ctl00$phFormContent$pbxProject$txtValue"> 
    <a href="javascript:__doPostBack('ctl00$phFormContent$pbxProject$lnkSelect','')" title="Select" id="ctl00_phFormContent_pbxProject_lnkSelect"><img border="0" alt="Select" src="/images/pick.gif"></a>
        <a href="javascript:__doPostBack('ctl00$phFormContent$pbxProject$lnkRefresh','')" title="Refresh" id="ctl00_phFormContent_pbxProject_lnkRefresh"><img border="0" alt="Refresh" src="/images/refresh.gif"></a>
        <div style="display: inline;" id="ctl00_phFormContent_pbxProject_divDescription">
             | Demonstration Project</div>
<input type="hidden" value="Demonstration Project" id="ctl00_phFormContent_pbxProject_hdnDescription" name="ctl00$phFormContent$pbxProject$hdnDescription">
                </td>
            </tr>                
        
<tr>
	<td valign="middle" align="right" class="formDetailDarkHR" style="width: 309px"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
	<td valign="middle" align="left" colspan="1" class="formDetailHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
</tr>

    <tr id="ctl00_phFormContent_ucCustomFields_trCustom22">
	<td valign="middle" align="right" 
            style="padding-top: 4px; padding-bottom: 4px; width: 309px;" 
            class="formDetailDark" 
            id="ctl00_phFormContent_ucCustomFields_tdCustomLabel22"> Document Type:</td>
	<td valign="middle" colspan="1" style="padding-top: 4px; padding-bottom: 4px;" class="formDetail" id="ctl00_phFormContent_ucCustomFields_tdCustomControl22"><select onchange="this.style.backgroundColor = this.options[this.selectedIndex].style.backgroundColor;" class="comboBox" id="ctl00_phFormContent_ucCustomFields_cfCustom22_cmbDropdown" name="ctl00$phFormContent$ucCustomFields$cfCustom22$cmbDropdown">
		<option style="background-color: White; color: black;" value="" selected="selected"></option>
		<option value="Project Mandate">Project Mandate</option>
		<option value="Project Brief">Project Brief</option>
		<option value="Business Case">Business Case</option>
		<option value="Product Description">Product Description</option>
		<option value="Project Plan">Project Plan</option>
		<option value="Project Approach">Project Approach</option>
		<option value="Acceptance Criteria">Acceptance Criteria</option>
		<option value="Project Initiation Document (PID)">Project Initiation Document (PID)</option>
		<option value="Communication Plan">Communication Plan</option>
		<option value="Quality Plan">Quality Plan</option>
		<option value="Product Checklist">Product Checklist</option>
		<option value="Highlight Report">Highlight Report</option>
		<option value="Checkpoint Report">Checkpoint Report</option>
		<option value="End Stage Report">End Stage Report</option>
		<option value="Lessons Learned Report">Lessons Learned Report</option>
		<option value="Post Project Review">Post Project Review</option>
		<option value="End Project Report">End Project Report</option>
		<option value="Folow-on Action/Recommendatio">Folow-on Action/Recommendatio</option>
	</select>
                
&nbsp;   </td>
</tr>
<tr id="ctl00_phFormContent_ucCustomFields_trCustom21">
	<td valign="middle" align="right" 
        style="padding-top: 4px; padding-bottom: 4px; width: 309px;" 
        class="formDetailDark" 
        id="ctl00_phFormContent_ucCustomFields_tdCustomLabel21"> Document Attachment:</td>
    <td valign="middle" colspan="1" style="padding-top: 4px; padding-bottom: 4px;" class="formDetail"
        id="ctl00_phFormContent_ucCustomFields_tdCustomControl21">
  
             <a href="#" onclick="docUpload_onClick()" id="aupload"  style="text-decoration: none;">[Upload File]</a>
            <input type="hidden" id="ctl00_phFormContent_ucCustomFields_cfCustom21_hdnDocumentKey" name="ctl00$phFormContent$ucCustomFields$cfCustom21$hdnDocumentKey">
    
&nbsp;   </td>
</tr>

    
    
<tr>
	<td valign="middle" align="right" class="formDetailDarkHR" style="width: 309px"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
	<td valign="middle" align="left" colspan="1" class="formDetailHR"><img height="1" width="100%" alt="" src="/images/hr.gif"></td>
</tr>

        
        <!-- Details -->
         
            <tr>
                <td valign="top" align="right" class="formDetailDark" style="width: 309px">
                    Document Description:
                </td>
               <td valign="middle" align="left" class="formDetail">
                    



<script type="text/javascript">

    function OnClientLoad(editor) {
        editor.AttachEventHandler("ondblclick", function(e) {
            var sel = editor.GetSelection().GetParentElement(); //get the currently selected element
            var href = null;
            if (sel.tagName == "A") {
                href = sel.href; //get the href value of the selected link
                window.open(href, null, "height=500,width=500,status=no,toolbar=no,menubar=no,location=no");
                return false;
            }
        }
    );
    }
  
</script>

<div style="display: block;" id="ctl00_phFormContent_txtDetails_radEditFormattedText_wrapper">
	<!-- 7.3.2 --><script type="text/javascript">	                  /*&lt;![CDATA[*/window.RadELoc = null;
	                  if (window.loc) { RadELoc = window.loc; }
	                  window.loc = localization_en_US = {
	                      showText: function(textName) {
	                          document.write(this[textName]);
	                      }

    , showSpacedText: function(textName) {
        document.write(this[textName].replace(/([^ ])/g, "$1 "));
    }

    , getText: function(textName) {
        return this[textName];
    }

    , setAttribute: function(id, attr, textName) {
        var str = this[textName];
        var elem = document.getElementById(id);
        if (elem) {
            elem.setAttribute(attr, str);
        }
    }
	                  }; loc["IncreaseSize"] = "Increase Size"; loc["DecreaseSize"] = "Decrease Size"; loc["PageProperties"] = "Page Properties"; loc["ConvertToUpper"] = "Convert to upper case"; loc["ConvertToLower"] = "Convert to lower case"; loc["RealFontSize"] = "Real font size"; loc["DropdownToolbar"] = "Dropdowns"; loc["ImageMapDialog"] = "Image Map Editor"; loc["FormatCodeBlock"] = "Format Code Block"; loc["EnhancedEditToolbar"] = "Enhanced Edit"; loc["InsertToolbar"] = "Insert"; loc["DialogToolbar"] = "Dialogs"; loc["MainToolbar"] = "Main Toolbar"; loc["TableToolbar"] = "Table"; loc["Print"] = "Print"; loc["SpellCheck"] = "Spellchecker"; loc["AjaxSpellCheck"] = "AJAX Spellchecker"; loc["PasteFromWord"] = "Paste from Word"; loc["PasteFromWordNoFontsNoSizes"] = "Paste from Word cleaning Fonts and Sizes"; loc["PastePlainText"] = "Paste Plain Text"; loc["PasteAsHtml"] = "Paste As Html"; loc["AbsolutePosition"] = "Set Absolute Position"; loc["CreateLink"] = "Create Link"; loc["Unlink"] = "Remove Link"; loc["InsertGroupbox"] = "Insert Groupbox"; loc["InsertFormElement"] = "Insert Form Element"; loc["InsertOrderedList"] = "Numbered List"; loc["InsertUnorderedList"] = "Bullet List"; loc["InsertParagraph"] = "New Paragraph"; loc["ModuleManager"] = "Module Manager"; loc["Help"] = "Help"; loc["InsertSnippet"] = "Insert Code Snippet"; loc["ToggleScreenMode"] = "Toggle Full Screen Mode"; loc["ToggleDocking"] = "Dock all Floating Toolbars/Modules"; loc["Zoom"] = "Zoom"; loc["InsertCustomLink"] = "Custom Links"; loc["ApplyClass"] = "Apply CSS Class"; loc["InsertDate"] = "Insert Date"; loc["InsertTime"] = "Insert Time"; loc["Bold"] = "Bold"; loc["Italic"] = "Italic"; loc["Underline"] = "Underline"; loc["Cut"] = "Cut"; loc["Copy"] = "Copy"; loc["Paste"] = "Paste"; loc["JustifyLeft"] = "Align Left"; loc["JustifyCenter"] = "Align Center"; loc["JustifyRight"] = "Align Right"; loc["JustifyFull"] = "Justify"; loc["JustifyNone"] = "Remove alignment"; loc["Indent"] = "Indent"; loc["Outdent"] = "Outdent"; loc["Subscript"] = "Subscript"; loc["Superscript"] = "SuperScript"; loc["StrikeThrough"] = "Strikethrough"; loc["InsertHorizontalRule"] = "Horizontal Rule"; loc["Undo"] = "Undo"; loc["Redo"] = "Redo"; loc["FontName"] = "Font Name"; loc["FontSize"] = "Size"; loc["ForeColor"] = "Foreground Color"; loc["BackColor"] = "Background Color"; loc["InsertRowAbove"] = "Insert Row Above"; loc["InsertRowBelow"] = "Insert Row Below"; loc["DeleteRow"] = "Delete Row"; loc["InsertColumnLeft"] = "Insert Column to the Left"; loc["InsertColumnRight"] = "Insert Column to the Right"; loc["DeleteColumn"] = "Delete Column"; loc["MergeColumns"] = "Merge Cells Horizontally"; loc["MergeRows"] = "Merge Cells Vertically"; loc["SplitCell"] = "Split Cell"; loc["DeleteCell"] = "Delete Cell"; loc["DeleteTable"] = "Delete Table"; loc["SetCellProperties"] = "Set Cell Properties"; loc["SetTableProperties"] = "Set Table Properties"; loc["ToggleTableBorder"] = "Show/Hide Border"; loc["SetImageProperties"] = "Set Image Properties"; loc["SetLinkProperties"] = "Set Link Properties"; loc["FormatBlock"] = "Paragraph Style"; loc["InsertSymbol"] = "Insert Symbol"; loc["FormatStripper"] = "Format Stripper"; loc["InsertTable"] = "Insert Table"; loc["ImageManager"] = "Image Manager"; loc["FlashManager"] = "Flash Manager"; loc["MediaManager"] = "Media Manager"; loc["DocumentManager"] = "Document Manager"; loc["FindAndReplace"] = "Find And Replace"; loc["LinkManager"] = "Hyperlink Manager"; loc["AboutDialog"] = "About RadEditor"; loc["TemplateManager"] = "Template Manager"; loc["FileOpen"] = "Open file.."; loc["FileSaveAs"] = "Save as..."; loc["RADEDITOR_DESIGN_MODE"] = "Design"; loc["RADEDITOR_HTML_MODE"] = "HTML"; loc["RADEDITOR_PREVIEW_MODE"] = "Preview"; loc["ClearFormatting"] = "Clear Formatting"; loc["ClearAllHtmlTags"] = "All HTML Tags"; loc["ClearWordFormatting"] = "Microsoft Word Formatting"; loc["ClearCssFormatting"] = "Cascading Style Sheets"; loc["ClearFontTags"] = "Font Tags"; loc["ClearSpanTags"] = "Span Tags"; loc["CellProperties"] = "Cell Properties"; loc["Class"] = "CSS Class"; loc["ToolNotSupportedByNetscape"] = "This tool is not supported by Mozilla/Netscape browsers."; loc["AddCustomHexColor"] = "Add Hex Color..."; loc["AddCustomColor"] = "Add Custom Color..."; loc["PromptColor"] = "Please, provide the custom color HEX value:"; loc["ClearStyle"] = "Clear Style"; loc["CancelTable"] = "Cancel"; loc["TableWizard"] = "Table Wizard"; loc["UpdateButton"] = "Update"; loc["CancelButton"] = "Cancel"; loc["TableWarning"] = "Please, select a table to set its properties!"; loc["CellWarning"] = "Please, select a cell to set its properties!"; loc["ImageMapWarning"] = "Please, select an image to set its image map properties!"; loc["Table"] = "Table"; loc["HtmlMode"] = "HTML Mode"; loc["ToolbarCaption"] = "RadEditor Toolbar"; loc["ShowToolbarTooltip"] = "Show toolbar"; loc["IndentHtml"] = "Indent HTML"; loc["RepeatLastCommand"] = "Repeat Last Command"; loc["ResizeCommand"] = "Resize Object"; loc["MoveCommand"] = "Move"; loc["UseCtrl_C"] = "Please use Ctrl+C to Copy"; loc["UseCtrl_V"] = "Please use Ctrl+V to Paste"; loc["UseCtrl_X"] = "Please use Ctrl+X to Cut"; loc["SetHtml"] = "Set HTML"; loc["CorrectSpelling"] = "Spelling Changes"; loc["Typing"] = "Typing..."; loc["StripAll"] = "Strip All Formatting"; loc["StripCss"] = "Strip Css Formatting"; loc["StripFont"] = "Strip Font Elements"; loc["StripSpan"] = "Strip Span Elements"; loc["StripWord"] = "Strip Word Formatting"; loc["InsertFormForm"] = "Insert Form"; loc["InsertFormButton"] = "Insert Button"; loc["InsertFormCheckbox"] = "Insert Checkbox"; loc["InsertFormHidden"] = "Insert Hidden"; loc["InsertFormSelect"] = "Insert Select"; loc["InsertFormRadio"] = "Insert Radio"; loc["InsertFormPassword"] = "Insert Password"; loc["InsertFormReset"] = "Insert Reset"; loc["InsertFormSubmit"] = "Insert Submit"; loc["InsertFormText"] = "Insert Textbox"; loc["InsertFormTextarea"] = "Insert Textarea"; loc["FormForm"] = "Form"; loc["FormButton"] = "Button"; loc["FormCheckbox"] = "Checkbox"; loc["FormHidden"] = "Hidden"; loc["FormSelect"] = "Select"; loc["FormRadio"] = "Radio button"; loc["FormPassword"] = "Password"; loc["FormReset"] = "Reset"; loc["FormSubmit"] = "Submit"; loc["FormText"] = "Textbox"; loc["FormTextarea"] = "Textarea"; loc["SelectAll"] = "Select All"; loc["InsertAnchor"] = "Insert Anchor"; loc["InsertEmailLink"] = "Insert Email Link"; loc["AskWordCleaning"] = "The content you are trying to paste has MS Word formatting.\nWould you like to clean it?"; loc["SpellCheckEnd"] = "Finish spellchecking"; loc["SpellCheckComplete"] = "Spellchecking complete!"; loc["SpellingChange"] = "Spelling Change"; loc["NoSuggestions"] = "(no suggestions)"; loc["ChangeWordString"] = "Change Manually"; loc["IgnoreAllString"] = "Ignore All"; loc["IgnoreString"] = "Ignore"; loc["MoreThanOnceMessage"] = "This word occurs more than once in the text. Would you like to replace all instances?"; loc["UndoDisabledMessage"] = "You cannot undo further while in spellcheck mode. Please finish spellchecking first."; loc["AddToDictionary"] = "Add to dictionary"; loc["AddCustomWordSuccess"] = "successfully added to dictionary"; loc["SpellingInProgress"] = "Spell checking in progress..."; loc["SpellingMode"] = "Spell checking mode. Misspelled words are with yellow background."; loc["NoSpellingMistakes"] = "No mistakes found."; loc["RadEditorXhtmlValidator"] = "XHTML Validator"; loc["RadEditorStatistics"] = "Statistics"; loc["RadEditorNodeInspector"] = "Properties Inspector"; loc["RadEditorDomInspector"] = "Tag Inspector"; loc["RadEditorHtmlInspector"] = "Real-Time HTML View"; loc["StatisticsWords"] = "Words:"; loc["StatisticsCharacters"] = "Characters:"; loc["NodeInspectorSelectedElement"] = "The selected element is "; loc["NodeInspectorInvalidValue"] = "Invalid value. Please enter a number."; loc["className"] = "Classname"; loc["borderColor"] = "Border color"; loc["bgColor"] = "Background"; loc["width"] = "Width"; loc["height"] = "Height"; loc["align"] = "Alignment"; loc["vAlign"] = "Vertical Alignment"; loc["cellSpacing"] = "CellSpacing"; loc["cellPadding"] = "CellPadding"; loc["border"] = "Border Width"; loc["noWrap"] = "Nowrap"; loc["value"] = "Value"; loc["id"] = "Id"; loc["name"] = "Name"; loc["href"] = "URL"; loc["title"] = "ToolTip"; loc["target"] = "Target"; loc["alt"] = "ToolTip"; loc["_blank"] = "New Window"; loc["_self"] = "Same Window"; loc["_parent"] = "Parent Window"; loc["_top"] = "Browser Window"; loc["_search"] = "Search Pane"; loc["_media"] = "Media Pane"; loc["DomInspectorRemoveElement"] = "RemoveElement"; loc["NAME"] = "Name"; loc["action"] = "Action"; loc["ValidateXHTML"] = "Validate XHTML"; loc["ExpandValidator"] = "Expand Report Pane"; loc["Doctype"] = "Select Doctype"; loc["rows"] = "Rows"; loc["cols"] = "Columns"; if (RadELoc) { window.loc = RadELoc; } /*]]&gt;*/</script><script src="/WebResource.axd?d=lThZAgCwoRFg2UxwTGjjC7I45SWnGtCFvQutIyUVb6mOmB78v3p6DrZcbMqjc6eZhmHdfzz_QO32fBkWThD-CMJsb599riN0hQuLdR30XZoDOoriT_cgKSSzIp3pipjbfbtNR7wYmezZNVoXWA2VOHvnejhfKBZrn8Jd38n4_LcybYE20&amp;t=634279205400000000" type="text/javascript"></script><script src="/WebResource.axd?d=CN1tZ7qCEAI4eBBy-13HpBelqTjcwmG1qXS30r6jDNX6wE-cTyag-EWe2M0y7kq9WL_rit8RY5_eZzlUQ62yNNAXvOE4JJw-8GwUfB-jb6wrHLBUFgYCX67cqGda6gEotTSwPuA8fMMkmpHooZL638fX-ghcfvtnzXZZo4ekUoFXwt-S0&amp;t=634279205400000000" type="text/javascript"></script><script src="/WebResource.axd?d=FsnLOPYhq9DoRd4a8KFTFRBHJ9mA0OPJ1agKALfFCbljVmDkL0r0skbUhbcnuVqEx0Lv6tfI27Wn1I3TYrIiWg38Kae5eVUG1U4xGFGUQn7cNpDWMieCnjRvZRiffvO8AvWvnUWAji4vIBZwVliYWSYdjeCteODpSM4nlQUdmsQd4LJT0&amp;t=634279205400000000" type="text/javascript"></script><script src="/WebResource.axd?d=Uw4f6KQ0xLDlNPhmTHXtxLSOVKlGOGpoyJlW7MJSrS5o9Ff6aO81PLNnN2-ACSs9627An_UBDbfvVb7gfafW2MrGBYuV8u_qtysl30Nv6L7x_qjkcdOSg1Wca2j_B1XpHvD_WHDV1wriSDlz0-63ibn5fApSUZMusoLI49g7IlPd_tFm0&amp;t=634279205400000000" type="text/javascript"></script><script src="/WebResource.axd?d=Lye-bRx-KIbrxjwX1pGuxgkf2vbfq9zNCsHEPx112eAqLrAZniXFZxzMj6zLdMs178ca933v2P8nnO9IjhPxSXZmL_am6biAZYAiInlsMkzN18L2t8Iy8LvPRtgtRIQR0FWUDDZPBjOxj47OvRNC4cb4TtBPHM_DlvXFzS4dWZxnra040&amp;t=634279205400000000" type="text/javascript"></script><script src="/WebResource.axd?d=CPtmnPn63Alth1lynQDzW50Tv5eNBqx-3JDFpzIBT1ECgK62cITlnz2n9ZHeu8GeWeYsbC3IlkBeiVDWvJhA_sIkbfhCn9PIybhuyRKQD_24w8Dj5w6OivDbjZLrgDHeCHv1aUDhr7RXLk16Mo0fam_P2yWtDREtYaK6TUlyRNk1a_qJibJNYAzjM4iuTg9Rr6rYfA2&amp;t=634279205400000000" type="text/javascript"></script><script src="/WebResource.axd?d=EDZdvoNIzp8xgPInf-Enf4JlbZnuLd32gCVlejE-alT9k9vOxWKPAODwS79nX3peRJFnFJf1EWpP8zEeZY4bFtXlgrfWAbSfLDCRtyD-TVuYalykBm_LA21xMn7t2KC_DEaX3G22fbZxt-0ghqReGoOZ4HQ_MhP5pT5LWG5N1xnABKhqSU2uozcIxQ_b4cFUxH4KTA2&amp;t=634279205400000000" type="text/javascript"></script><span style="display: none;" id="ctl00_phFormContent_txtDetails_radEditFormattedTextStyleSheetHolder"><link rel="stylesheet" type="text/css" href="/RadControls/Editor/Skins/Atlantic/Editor.css"><link rel="stylesheet" type="text/css" href="/RadControls/Editor/Skins/Atlantic/Controls.css"></span><div style="display: none;"><table cellspacing="0" cellpadding="0" border="0" class="RadEToolbar" style="cursor: default; float: left;" id="ctl00_phFormContent_txtDetails_radEditFormattedTextToolbar0">
		<tbody><tr>
			<td><img title="Cut (CTRL+X)" alt="Cut (CTRL+X)" src="/RadControls/Editor/Skins/Atlantic/buttons/Cut.gif"></td>
			<td><img title="Copy (CTRL+C)" alt="Copy (CTRL+C)" src="/RadControls/Editor/Skins/Atlantic/buttons/Copy.gif"></td>
			<td><img title="Paste (CTRL+V)" alt="Paste (CTRL+V)" src="/RadControls/Editor/Skins/Atlantic/buttons/Paste.gif"></td>
			<td class="RadESeparator"></td>
			<td><table cellspacing="0" cellpadding="0" border="0" title="Undo" class="RadEToolLong" style="cursor: default;">
				<tbody><tr>
					<td><img title="Undo (CTRL+Z)" alt="Undo (CTRL+Z)" src="/RadControls/Editor/Skins/Atlantic/buttons/Undo.gif"></td>
					<td><img style="border: 0pt none;" alt="Undo (CTRL+Z)" src="/RadControls/Editor/Skins/Atlantic/buttons/arrowIcon.gif"></td>
				</tr>
			</tbody></table>
			</td>
			<td><table cellspacing="0" cellpadding="0" border="0" title="Redo" class="RadEToolLong" style="cursor: default;">
				<tbody><tr>
					<td><img title="Redo (CTRL+Y)" alt="Redo (CTRL+Y)" src="/RadControls/Editor/Skins/Atlantic/buttons/Redo.gif"></td>
					<td><img style="border: 0pt none;" alt="Redo (CTRL+Y)" src="/RadControls/Editor/Skins/Atlantic/buttons/arrowIcon.gif"></td>
				</tr>
			</tbody></table>
			</td>
		</tr>
	</tbody></table>
	<table cellspacing="0" cellpadding="0" border="0" class="RadEToolbar" style="cursor: default; float: left;" id="ctl00_phFormContent_txtDetails_radEditFormattedTextToolbar2">
		<tbody><tr>
			<td><img title="Bold (CTRL+B)" alt="Bold (CTRL+B)" src="/RadControls/Editor/Skins/Atlantic/buttons/Bold.gif"></td>
			<td><img title="Italic (CTRL+I)" alt="Italic (CTRL+I)" src="/RadControls/Editor/Skins/Atlantic/buttons/Italic.gif"></td>
			<td><img title="Underline (CTRL+U)" alt="Underline (CTRL+U)" src="/RadControls/Editor/Skins/Atlantic/buttons/Underline.gif"></td>
			<td><img title="Strikethrough" alt="Strikethrough" src="/RadControls/Editor/Skins/Atlantic/buttons/StrikeThrough.gif"></td>
			<td class="RadESeparator"></td>
			<td><img title="Align Left" alt="Align Left" src="/RadControls/Editor/Skins/Atlantic/buttons/JustifyLeft.gif"></td>
			<td><img title="Align Center" alt="Align Center" src="/RadControls/Editor/Skins/Atlantic/buttons/JustifyCenter.gif"></td>
			<td><img title="Align Right" alt="Align Right" src="/RadControls/Editor/Skins/Atlantic/buttons/JustifyRight.gif"></td>
			<td><img title="Justify" alt="Justify" src="/RadControls/Editor/Skins/Atlantic/buttons/JustifyFull.gif"></td>
			<td><img title="Remove alignment" alt="Remove alignment" src="/RadControls/Editor/Skins/Atlantic/buttons/JustifyNone.gif"></td>
			<td class="RadESeparator"></td>
			<td><img title="Indent" alt="Indent" src="/RadControls/Editor/Skins/Atlantic/buttons/Indent.gif"></td>
			<td><img title="Outdent" alt="Outdent" src="/RadControls/Editor/Skins/Atlantic/buttons/Outdent.gif"></td>
			<td><img title="Numbered List" alt="Numbered List" src="/RadControls/Editor/Skins/Atlantic/buttons/InsertOrderedList.gif"></td>
			<td><img title="Bullet List" alt="Bullet List" src="/RadControls/Editor/Skins/Atlantic/buttons/InsertUnorderedList.gif"></td>
		</tr>
	</tbody></table>
	<table cellspacing="0" cellpadding="0" border="0" class="RadEToolbar" style="cursor: default; float: left;" id="ctl00_phFormContent_txtDetails_radEditFormattedTextToolbar4">
		<tbody><tr>
			<td><table cellspacing="0" cellpadding="0" border="0" title="Paragraph Style" class="RadEDropDownOff" style="cursor: default; table-layout: fixed;"><colgroup>
				<col width="80"><col width="14px">
			</colgroup>
				<tbody><tr>
					<td><div style="white-space: nowrap; overflow: hidden; width: 80px;">Paragraph Style</div></td>
					<td><img style="border: 0pt none;" alt="Paragraph Style" src="/RadControls/Editor/Skins/Atlantic/buttons/arrowDropdown.gif"></td>
				</tr>
			</tbody></table>
			</td>
			<td><table cellspacing="0" cellpadding="0" border="0" title="Font Name" class="RadEDropDownOff" style="cursor: default; table-layout: fixed;"><colgroup>
				<col width="80"><col width="14px">
			</colgroup>
				<tbody><tr>
					<td><div style="white-space: nowrap; overflow: hidden; width: 80px;">Font Name</div></td>
					<td><img style="border: 0pt none;" alt="Font Name" src="/RadControls/Editor/Skins/Atlantic/buttons/arrowDropdown.gif"></td>
				</tr>
			</tbody></table>
			</td>
			<td><table cellspacing="0" cellpadding="0" border="0" title="Size" class="RadEDropDownOff" style="cursor: default; table-layout: fixed;"><colgroup>
				<col width="21"><col width="14px">
			</colgroup>
				<tbody><tr>
					<td><div style="white-space: nowrap; overflow: hidden; width: 21px;">Size</div></td>
					<td><img style="border: 0pt none;" alt="Size" src="/RadControls/Editor/Skins/Atlantic/buttons/arrowDropdown.gif"></td>
				</tr>
			</tbody></table>
			</td>
			<td><table cellspacing="0" cellpadding="0" border="0" title="Foreground Color" class="RadEToolLong" style="cursor: default;">
				<tbody><tr>
					<td><img title="Foreground Color" alt="Foreground Color" src="/RadControls/Editor/Skins/Atlantic/buttons/ForeColor.gif"></td>
					<td><img style="border: 0pt none;" alt="Foreground Color" src="/RadControls/Editor/Skins/Atlantic/buttons/arrowIcon.gif"></td>
				</tr>
			</tbody></table>
			</td>
			<td><table cellspacing="0" cellpadding="0" border="0" title="Background Color" class="RadEToolLong" style="cursor: default;">
				<tbody><tr>
					<td><img title="Background Color" alt="Background Color" src="/RadControls/Editor/Skins/Atlantic/buttons/BackColor.gif"></td>
					<td><img style="border: 0pt none;" alt="Background Color" src="/RadControls/Editor/Skins/Atlantic/buttons/arrowIcon.gif"></td>
				</tr>
			</tbody></table>
			</td>
		</tr>
	</tbody></table>
	</div><table cellspacing="0" cellpadding="0" class="RadEWrapper" 
        style="width: 632px; height: 171px;" 
        id="RadEWrapperctl00_phFormContent_txtDetails_radEditFormattedText">
		<tbody><tr style="height: 100%;">
			<td valign="top" class="RadEVerticalDockingZone" style="height: 100%;" id="Leftctl00_phFormContent_txtDetails_radEditFormattedText" docking="vertical">
                &nbsp;</td>
			<td valign="top" style="width: 100%; height: 100%;"><table cellspacing="0" cellpadding="0" style="width: 100%; height: 100%;">
				<tbody><tr>
					<td valign="top" style="width: 640px;" class="RadEDockingZone" id="Topctl00_phFormContent_txtDetails_radEditFormattedText" docking="horizontal">
                      <textarea style="height: 174px; width: 637px" cols="20" name="S1" rows="1"></textarea></td>
				</tr>
			

			</tbody></table>
			</td>
			<td valign="top" class="RadEVerticalDockingZone" style="height: 100%;" id="Rightctl00_phFormContent_txtDetails_radEditFormattedText" docking="vertical">
                &nbsp;</td>
		</tr>
	</tbody></table>
	
					<script type="text/javascript">
					    /* &lt;![CDATA[ */
					    var editorFrame = document.createElement('iframe'); editorFrame.name = 'RadEContentIframectl00_phFormContent_txtDetails_radEditFormattedText';
					    editorFrame.className = 'RadEContentBordered';
					    editorFrame.id = 'RadEContentIframectl00_phFormContent_txtDetails_radEditFormattedText';
					    editorFrame.src = 'javascript:\'\'';
					    editorFrame.marginHeight = 0;
					    editorFrame.marginWidth = 0;
					    editorFrame.frameBorder = '0';
					    editorFrame.style.width = '100%';
					    editorFrame.style.height = '100%';
					    document.getElementById('RadEContentHolderctl00_phFormContent_txtDetails_radEditFormattedText').insertBefore(editorFrame, document.getElementById('PasteContainerctl00_phFormContent_txtDetails_radEditFormattedText'));
					    /* ]]&gt; */
					</script>
					<script type="text/javascript">
					    /* &lt;![CDATA[ */
					    TelerikNamespace.Utils.AppendStyleSheet('ctl00_phFormContent_txtDetails_radEditFormattedText', '/RadControls/Editor/Skins/Atlantic/Editor.css');
					    TelerikNamespace.Utils.AppendStyleSheet('ctl00_phFormContent_txtDetails_radEditFormattedText', '/RadControls/Editor/Skins/Atlantic/Controls.css');
					    /* ]]&gt; */

	</script><script type="text/javascript">	             /* &lt;![CDATA[ */window["X11ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X1ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X2ctl00_phFormContent_txtDetails_radEditFormattedText"] = [['ctl00_phFormContent_txtDetails_radEditFormattedTextToolbar0', 'MainToolbar', '', false, '', false, [['B', 'Cut', 'CTRL+X', false, true, 'right', ''], ['B', 'Copy', 'CTRL+C', false, true, 'right', ''], ['B', 'Paste', 'CTRL+V', false, true, 'right', ''], ['S'], ['DB', 'Undo', 'CTRL+Z', false, true, 'right', '', 1, '100px', '100px'], ['DB', 'Redo', 'CTRL+Y', false, true, 'right', '', 1, '100px', '100px']]], ['ctl00_phFormContent_txtDetails_radEditFormattedTextToolbar2', 'FormattingToolbar', '', false, '', false, [['B', 'Bold', 'CTRL+B', false, true, 'right', ''], ['B', 'Italic', 'CTRL+I', false, true, 'right', ''], ['B', 'Underline', 'CTRL+U', false, true, 'right', ''], ['B', 'StrikeThrough', '', false, true, 'right', ''], ['S'], ['B', 'JustifyLeft', '', false, true, 'right', ''], ['B', 'JustifyCenter', '', false, true, 'right', ''], ['B', 'JustifyRight', '', false, true, 'right', ''], ['B', 'JustifyFull', '', false, true, 'right', ''], ['B', 'JustifyNone', '', false, true, 'right', ''], ['S'], ['B', 'Indent', '', false, true, 'right', ''], ['B', 'Outdent', '', false, true, 'right', ''], ['B', 'InsertOrderedList', '', false, true, 'right', ''], ['B', 'InsertUnorderedList', '', false, true, 'right', '']]], ['ctl00_phFormContent_txtDetails_radEditFormattedTextToolbar4', 'DropdownToolbar', '', false, '', false, [['DB', 'FormatBlock', '', false, false, 'right', '', 1, '100px', '100px'], ['DB', 'FontName', '', true, false, 'right', '', 1, '100px', '100px'], ['DB', 'FontSize', '', true, false, 'right', '', 1, '100px', '100px'], ['DB', 'ForeColor', '', false, true, 'right', '', 1, '100px', '100px'], ['DB', 'BackColor', '', false, true, 'right', '', 1, '100px', '100px']]]];
	             window["X3ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X4ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X5ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X6ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X7ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X8ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X13ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X9ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X10ctl00_phFormContent_txtDetails_radEditFormattedText"] = [];
	             window["X12ctl00_phFormContent_txtDetails_radEditFormattedText"] = [['*', true, [['B', 'Cut', 'CTRL+X', false, true, 'right', ''], ['B', 'Copy', 'CTRL+C', false, true, 'right', ''], ['B', 'Paste', 'CTRL+V', false, true, 'right', ''], ['S']]], ['*', true, [['B', 'Cut', '', false, true, 'bottom', ''], ['B', 'Copy', '', false, true, 'bottom', ''], ['B', 'Paste', '', false, true, 'bottom', ''], ['S'], ['B', 'Insert File Link', '', false, true, 'bottom', '']]]];
	             window["ctl00_phFormContent_txtDetails_radEditFormattedText"] = RadEditorInitialize("ctl00_phFormContent_txtDetails_radEditFormattedText", "__doPostBack(\'ctl00$phFormContent$txtDetails$radEditFormattedText\',\'RadEditorSubmit\')", "", "/", "/RadControls/", "/RadControls/Editor/Skins/Atlantic/",
"", "", "640px", "200px", "", "130px", "en_US", "agondemand.co.uk", "80", "/bit",
"", "", true, true, true, false, true, 0, false, 8, false, true,
false, true, 21, true, "", "", window["X4ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X7ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X8ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X13ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X6ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X5ctl00_phFormContent_txtDetails_radEditFormattedText"],
window["X9ctl00_phFormContent_txtDetails_radEditFormattedText"], [], window["X1ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X3ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X10ctl00_phFormContent_txtDetails_radEditFormattedText"], window["X2ctl00_phFormContent_txtDetails_radEditFormattedText"], "", "0bd55a60-afb5-3c6e-9e99-946101729f97", "*.asf,*.asx,*.wm,*.wmx,*.wmp,*.wma,*.wax,*.wmv,*.wvx,*.avi,*.wav,*.mpeg,*.mpg,*.mpe,*.mov,*.m1v,*.mp2,*.mpv2,*.mp2v,*.mpa,*.mp3,*.m3u,*.mid,*.midi,*.rm,*.rma,*.rmi,*.rmv,*.aif,*.aifc,*.aiff,*.au,*.snd", "*.*", "*.gif,*.xbm,*.xpm,*.png,*.ief,*.jpg,*.jpe,*.jpeg,*.tiff,*.tif,*.rgb,*.g3f,*.xwd,*.pict,*.ppm,*.pgm,*.pbm,*.pnm,*.bmp,*.ras,*.pcd,*.cgm,*.mil,*.cal,*.fif,*.dsf,*.cmx,*.wi,*.dwg,*.dxf,*.svf",
"*.html,*.htm", "auto", true, "Thumbnail", false, false, false, "OnClientLoad", "", "", "",
"", "", "", window["X11ctl00_phFormContent_txtDetails_radEditFormattedText"], true, false, window["X12ctl00_phFormContent_txtDetails_radEditFormattedText"], false, false, false,
'aspnetForm', true, false, [], '', { TemplateManager: 'Vmlld1BhdGhzLFRydWUsMCw7RmlsZVR5cGUsRmFsc2UsMiw4O01heEZpbGVTaXplLEZhbHNlLDEsMjA0ODAwO0RlbGV0ZVBhdGhzLFRydWUsMCw7VXBsb2FkUGF0aHMsVHJ1ZSwwLDtGaWxlRmlsdGVycyxUcnVlLDAsUzJrMWIyUkhNWE1zUzJrMWIyUkhNRDA9O0ZpbGVCcm93c2VyQ29udGVudFByb3ZpZGVyVHlwZU5hbWUsRmFsc2UsMCw=', DocumentManager: 'Vmlld1BhdGhzLFRydWUsMCw7RmlsZVR5cGUsRmFsc2UsMiwxNjtNYXhGaWxlU2l6ZSxGYWxzZSwxLDUxMjAwMDtEZWxldGVQYXRocyxUcnVlLDAsO1VwbG9hZFBhdGhzLFRydWUsMCw7RmlsZUZpbHRlcnMsVHJ1ZSwwLFMyazBjUT09O0ZpbGVCcm93c2VyQ29udGVudFByb3ZpZGVyVHlwZU5hbWUsRmFsc2UsMCw=', MediaManager: 'Vmlld1BhdGhzLFRydWUsMCw7RmlsZVR5cGUsRmFsc2UsMiw0O01heEZpbGVTaXplLEZhbHNlLDEsNTI0Mjg4MDtEZWxldGVQYXRocyxUcnVlLDAsO1VwbG9hZFBhdGhzLFRydWUsMCw7RmlsZUZpbHRlcnMsVHJ1ZSwwLFMyazFhR015V1Qwc1MyazFhR016Wnowc1MyazFNMkpSUFQwc1MyazFNMkpZWnowc1MyazFNMkpZUVQwc1MyazFNMkpYUlQwc1MyazFNMWxZWnowc1MyazFNMkpZV1Qwc1MyazFNMlJ1Wnowc1MyazFhR1J0YXowc1MyazFNMWxZV1Qwc1MyazFkR05IVm00c1MyazFkR05IWXowc1MyazFkR05IVlQwc1MyazFkR0l6V1Qwc1MyazFkRTFZV1Qwc1MyazFkR05FU1Qwc1MyazFkR05JV1hrc1MyazFkR05FU2pJc1MyazFkR05IUlQwc1MyazFkR05FVFQwc1MyazFkRTB6VlQwc1MyazFkR0ZYVVQwc1MyazFkR0ZYVW5Bc1MyazFlV0pSUFQwc1MyazFlV0pYUlQwc1MyazFlV0pYYXowc1MyazFlV0pZV1Qwc1MyazFhR0ZYV1Qwc1MyazFhR0ZYV21vc1MyazFhR0ZYV20wc1MyazFhR1JSUFQwc1MyazFlbUp0VVQwPTtGaWxlQnJvd3NlckNvbnRlbnRQcm92aWRlclR5cGVOYW1lLEZhbHNlLDAs', ImageManager: 'TWF4RmlsZVNpemUsRmFsc2UsMSwyMDQ4MDA7RmlsZUZpbHRlcnMsVHJ1ZSwwLFMyazFibUZYV1Qwc1MyazFORmx0TUQwc1MyazFOR05ITUQwc1MyazFkMkp0WXowc1MyazFjRnBYV1Qwc1MyazFjV05IWXowc1MyazFjV05IVlQwc1MyazFjV05IVm00c1MyazFNR0ZYV20wc1MyazFNR0ZYV1Qwc1MyazFlVm95U1Qwc1MyazFiazB5V1Qwc1MyazFOR1F5VVQwc1MyazFkMkZYVGpBc1MyazFkMk5ITUQwc1MyazFkMW95TUQwc1MyazFkMWx0TUQwc1MyazFkMkp0TUQwc1MyazFhV0pZUVQwc1MyazFlVmxZVFQwc1MyazFkMWt5VVQwc1MyazFhbG95TUQwc1MyazFkR0ZYZHowc1MyazFhbGxYZHowc1MyazFiV0ZYV1Qwc1MyazFhMk15V1Qwc1MyazFhbUpZWnowc1MyazFNMkZSUFQwc1MyazFhMlF5WXowc1MyazFhMlZIV1Qwc1MyazFlbVJ0V1QwPTtEZWxldGVQYXRocyxUcnVlLDAsO1RodW1iU3VmZml4LEZhbHNlLDAsVkdoMWJXSnVZV2xzO0ZpbGVCcm93c2VyQ29udGVudFByb3ZpZGVyVHlwZU5hbWUsRmFsc2UsMCw7RmlsZVR5cGUsRmFsc2UsMiwxO1VwbG9hZFBhdGhzLFRydWUsMCw7Vmlld1BhdGhzLFRydWUsMCw7QWxsb3dUaHVtYkdlbmVyYXRpb24sRmFsc2UsMyxGYWxzZQ==', FlashManager: 'Vmlld1BhdGhzLFRydWUsMCw7RmlsZVR5cGUsRmFsc2UsMiwyO01heEZpbGVTaXplLEZhbHNlLDEsMTAyNDAwO0RlbGV0ZVBhdGhzLFRydWUsMCw7VXBsb2FkUGF0aHMsVHJ1ZSwwLDtGaWxlRmlsdGVycyxUcnVlLDAsUzJrMWVtUXlXVDA9O0ZpbGVCcm93c2VyQ29udGVudFByb3ZpZGVyVHlwZU5hbWUsRmFsc2UsMCw=', CommonDialogParameters: 'U2tpblBhdGgsRmFsc2UsMCxMMUpoWkVOdmJuUnliMnh6TDBWa2FYUnZjaTlUYTJsdWN5OUJkR3hoYm5ScFl5OD0=', SetImageProperties: 'VGh1bWJTdWZmaXgsRmFsc2UsMCxWR2gxYldKdVlXbHM7RmlsZUJyb3dzZXJDb250ZW50UHJvdmlkZXJUeXBlTmFtZSxGYWxzZSwwLDtBbGxvd1RodW1iR2VuZXJhdGlvbixGYWxzZSwzLEZhbHNl' }, true, 'yes');
	             /* ]]&gt; */</script>
</div>
   
    <script language="javascript" type="text/javascript">
        //&lt;![CDATA[
        var RadEditor1ClientObject = null;
        RadEditorCommandList["Insert File Link"] = function(commandName, editor, oTool) {

            RadEditor1ClientObject = editor;
            editor.ShowDialog(
					"/common/controls/com_formattedtextboxfilebrowser.aspx"
					, null//argument
					, 600
					, 175
					, InsertFileReference
					, null
					, "Browse");

            function InsertFileReference(returnValue) {
                if (returnValue) {
                    RadEditor1ClientObject.PasteHtml("&lt;a title=\"Double Click to open target file\" href=\"" + returnValue + "\"&gt;" + returnValue + "&lt;/a&gt;");
                }
            }



        };


        //]]&gt;
	</script>    
    
    

                </td>
            </tr>
        

<tr>
	<td height="5" class="formDetailDarkNoPadding" style="width: 309px"><img height="1" width="180" id="ctl00_phFormContent_ucFormFooter_img1" src="../../../images/space.gif"></td>
	<td height="5" width="100%" colspan="2" class="formDetailNoPadding"><img height="1" id="ctl00_phFormContent_ucFormFooter_img2" src="../../../images/space.gif"></td>
</tr>
</tbody></table>

                                    </td>
                                </tr>     
                            </tbody></table>

                            

        
                        </div>
                        
                        <div class="formFoot" id="masterpage_divFoot"> 						
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody><tr>
                                    <td valign="middle" align="left">
                                        
    <table width="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody><tr>
            <td align="left">
                <input type="submit" value="Save" class="button" id="ctl00_phFormButtonBar_btnSave" name="ctl00$phFormButtonBar$btnSave">
                    <input type="submit" value="Save and Close" class="button" id="ctl00_phFormButtonBar_btnSaveAndClose" name="ctl00$phFormButtonBar$btnSaveAndClose">
                <input type="submit" value="Close" class="button" id="ctl00_phFormButtonBar_btnClose" name="ctl00$phFormButtonBar$btnClose">    

            
            </td>
            
           
            
            
        </tr>

    </tbody></table>       

                                    </td>					
                                </tr>
                            </tbody></table>
                        </div>
                        
                        <div style="padding-left: 10px; padding-right: 10px;">
                            

                        </div>
                    </td>
                </tr>
            </tbody></table>
        </div>
    </div>
</body>
</html>
