﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="formContainer" id="masterpage_divMain">
        <div class="formHead" id="masterpage_divHead">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="pageTitle">
                <tbody>
                    <tr>
                        <td valign="middle" align="left">
                           Add New Resource
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        
    <script>
	jQuery( document ).ready( function( ){
		
		// For all the inputs that are text inputs
		jQuery( 'input:text' ).each( function( ){
			var $this = jQuery( this );
			
			// get the label
			var label = jQuery( 'label[for='+this.id+']' );
			
			// If no label, then return to avoid errors
			if( label.size( ) == 0 ){
				return;
			}
			
			// create wrapper element
			var wrapper = jQuery( '<div class="compactlabel-wrapper"></div>' );
			$this.wrap( wrapper );
			
			// move the label to before the the input
			$this.before( label );
			
			// create label backing
			var backing = jQuery( '<div class="compactlabel-label-backing"></div>' )
				.insertBefore( $this )
				.height( label.height( ) )
				.width( label.width( ) );
			
			// basic style information
			var labelOffset = label.position( ), inputOffset = $this.position( ), labelHeight = label.outerHeight( );
			
			// flag for if on or off
			var isHover = false, isFocus = false;
			
			// a jQuery object of the backing and label to animate both together
			var animatedElements = jQuery( backing.get( ) ).add( label.get( ) );
			
			
			// common functionality for hover on and focus on
			var on = function( event ){
				$this.parent( ).addClass( 'compactlabel-wrapper-on' );
				animatedElements.stop( ).animate( { "top": '-'+(labelHeight - inputOffset.top)+'px' } );
				
			};
			
			// common functionality for hover off and focus off
			var off = function( event ){
				if( isHover || isFocus ){
					return;
				}
				if( inputEmpty ){
					label.removeClass( 'compactlabel-hide' );
				} else {
					label.addClass( 'compactlabel-hide' );
				}
				
				if( !inputEmptyChange ){
					animatedElements.stop( );
				}
				
				animatedElements.animate( 
					{ "top": labelOffset.top + 'px' }, 
					function( ){ 
						$this.parent( ).removeClass( 'compactlabel-wrapper-on' ) 
					} );
			};
			
			var onHover = function( event ){
				isHover = true;
				on( event );
			};
			
			var offHover = function( event ){
				isHover = false;
				off( event );
			};
			
			var onFocus = function( event ){
				isFocus = true;
				on( event );
			};
			
			var offFocus = function( event ){
				isFocus = false;
				off( event );
			};
			
			// The pieces for keeping track if the value of the input is empty
			var inputEmpty = false, inputEmptyStart = false, inputEmptyChange = false;
			var checkInputEmpty = function( ){
				inputEmpty = $this.val( ) == '';
			};
			checkInputEmpty( );
			// ID for setTimeout for checkInputEmpty
			var checkInputEmptyFnID = null;
			
			
			
			if( !inputEmpty ){
				label.addClass( 'compactlabel-hide' );
			}
			
			// add the events
			// events to track if the value changed empty state	
			$this.focus( function( ){
				inputEmptyStart = inputEmpty;
				inputEmptyChange = false;
				checkInputEmptyFnID = setInterval( checkInputEmpty, 50 );
			} );
			
			$this.blur( function( ){
				clearInterval( checkInputEmptyFnID );
				checkInputEmpty( );
				inputEmptyChange = inputEmptyStart != inputEmpty;
			} );
			
			// animation events
			$this.focus( onFocus );
			$this.blur( offFocus );
			$this.hover( onHover, offHover );
			label.hover( onHover, offHover );
			
		} );
	} );
	
	</script>
	<style>
	
	
		.compactlabel-wrapper {
			display: inline-block;
			position: relative;
		}
		
		.compactlabel-wrapper-on {
			z-index: 5;
		}
		
		.compactlabel-wrapper label {
			position: absolute;
			z-index: 4;
		}
		
		.compactlabel-wrapper label.compactlabel-hide {
			z-index: 2;
		}
		
		.compactlabel-wrapper input {
			position: relative;
			z-index: 3;
		}
		
		.compactlabel-label-backing {
			position: absolute;
			z-index: 1;
		}
		
		/* personalized styles */
		.compactlabel-label-backing {
			padding: 2px 3px 4px 3px;
			border-style: solid;
			border-width: 2px 2px 0 2px;
			-moz-border-radius-topleft: 3px;
			-moz-border-radius-topright: 3px;
			background-color: #e0e0e0;
			-webkit-transition: 1s background-color;
			
		}
		
		.compactlabel-wrapper label {
			font-family: "Lucida Sans Unicode", "Lucida Sans", "Lucida Grande", Arial, sans-serif;
			color: #999;
			padding: 4px;
			font-size: 80%;
			font-size: 12px;
		}
		
		
		.compactlabel-wrapper-on,
		.compactlabel-wrapper-on .compactlabel-label-backing {
			-moz-box-shadow: SkyBlue 0 0 5px;
			-webkit-box-shadow: SkyBlue 0 0 5px;
			box-shadow: SkyBlue 0 0 5px;
		}
		
		input[type=text] {
			padding: 3px;
			margin: 0;
			border: solid #ddd 2px;
			background-color: #e0e0e0;
			font-family: "Lucida Sans Unicode", "Lucida Sans", "Lucida Grande", Arial, sans-serif;
			font-size: 12px;
			-moz-border-radius: 1px;
			-webkit-border-radius: 1px;
			border-radius: 1px;
			background-image: -moz-linear-gradient( 270deg, rgba(255,255,255,0), rgba(100,100,100,.15)  );
			-webkit-transition: 1s background-color, 1s border-color;
		}
		
		input[type=text] {
			background-image: -webkit-gradient(linear, left bottom, left top, to(rgba(255,255,255,0)), from(rgba(100,100,100,.15)));
			outline: none;
		}
		
		input[type=text]:hover,
		input[type=text]:focus,
		.compactlabel-wrapper-on input,
		.compactlabel-wrapper-on .compactlabel-label-backing {
			background-color: #fff;
			border-color: #fff;
		}
		
	</style>
        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td>
                        <div class="formBody" id="masterpage_divBody">
                            <table cellspacing="0" cellpadding="0" class="" style="border: medium none; width: 100%;"
                                id="tabTablectl00_phTabstripHeader_tabMain">
                                <tbody>
                                    <tr>
                                        <td align="left" id="ctl00_phTabstripHeader_tabMain_tdStretch">
                                            <div style="overflow: hidden;" id="ctl00_phTabstripHeader_tabMain_divTabContainer">
                                                <table cellspacing="0" cellpadding="0" border="0" id="ctl00_phTabstripHeader_tabMain_tabStrip">
                                                    <tbody>
                                                        <tr>
                                                        </tr>
                                                        <tr>
                                                            <td class="tabSpace">
                                                                <img height="1" width="5" id="ctl00_phTabstripHeader_tabMain_imgTabSpace" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" class="tabSelected">
                                                                General Info
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace2" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','ROLES')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="AddRole">Roles</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace3" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','SKILLS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="AddSkill">Skills</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace5" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" onclick="__doPostBack('ctl00$phTabstripHeader$tabMain','INTERESTED PROJECTS')"
                                                                onmouseout="this.className='tabOff';" onmouseover="this.className='tabOn';" class="tabOff">
                                                                <a href="InterestProjects">Interested Projects</a>
                                                            </td>
                                                            <td class="tabSpace">
                                                                <img height="1" width="1" id="ctl00_phTabstripHeader_tabMain_imgTabSpace7" src="../../Content/images/common/space.gif">
                                                            </td>
                                                            <td nowrap="nowrap" width="100%" valign="middle" align="left" class="tabTail">
                                                                &nbsp;
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table height="5" width="100%" cellspacing="0" cellpadding="0" border="0" class="tabStripBase">
                                                <tbody>
                                                    <tr>
                                                        <td valign="middle" align="left" id="btnScrollLeft" class="tabScrollEnabled">
                                                            
                                                        </td>
                                                        <td width="100%">
                                                        </td>
                                                        <td valign="middle" align="right" id="btnScrollRight" class="tabScrollEnabled">
                                                          
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;"
                                id="masterPage_tblFormContentRoot">
                                <tbody>
                                    <tr>
                                        <td class="form">
                                            <table class="formContent">
                                                <tbody>
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormHeader_img1" src="..../../Content/images/common/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" colspan="2" class="formDetailNoPadding">
                                                            <img height="1" id="ctl00_phFormContent_ucFormHeader_img2" src="..../../Content/images/common/space.gif">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="formDetailDark" align="right" valign="middle">
                                                            <label for="code">
                                                                Code</label>Code:
                                                        </td>
                                                        <td class="formDetail" align="left" valign="middle">
                                                            <input name="txtCode" id="code" class="textBox" size="20" maxlength="20" type="text">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="formDetailDark" align="right" valign="middle">
                                                            <label for="description">
                                                                Description</label>Description:
                                                        </td>
                                                        <td class="formDetail" align="left" valign="middle">
                                                            <input name="txtDescription" id="description" class="textBox" size="70" maxlength="70"
                                                                type="text">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="resourceType">
                                                            </label>
                                                            Resource Type:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <select class="comboBox" id="resourceType" name="ctl00$phFormContent$cboResourceType">
                                                                <option value="1">Employee</option>
                                                                <option value="2">Contractor</option>
                                                                <option value="4" selected="selected">Role</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="active">
                                                            </label>
                                                            Active:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="checkbox" checked="checked" class="checkBox" id="active" name="ctl00$phFormContent$chkActive">
                                                        </td>
                                                    </tr>
                                                   
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                             <label for="department">Department</label>Department:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                           <input type="text" checked="checked" class="textBox" 
                                                            id="department"
                                                                name="ctl00$phFormContent$chkActive">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="location">Location</label>Location:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text"  class="textBox" id="location"
                                                                name="ctl00$phFormContent$pbxLocation$txtValue">
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                            <label for="primryemail">Primary Email Address</label>Primary Email Address:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="70" size="70" class="textBox" 
                                                            id="primryemail"
                                                                name="ctl00$phFormContent$txtPrimaryEmail">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDark">
                                                             <label for="telephone">Telephone</label>Telephone:
                                                        </td>
                                                        <td valign="middle" align="left" class="formDetail">
                                                            <input type="text" maxlength="30" size="30" class="textBox"
                                                             id="telephone"
                                                                name="ctl00$phFormContent$txtTelephone">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="top" align="right" class="formDetailDark">
                                                           <label for="notes"></label> Notes:
                                                        </td>
                                                        <td valign="top" align="left" class="formDetail">
                                                            <textarea rows="2" cols="62" class="textArea" 
                                                            id="notes" name="ctl00$phFormContent$txtNotes"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                    </tr>
                                                   
                                                    <tr>
                                                        <td valign="middle" align="right" class="formDetailDarkHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                        <td valign="middle" align="left" colspan="1" class="formDetailHR">
                                                            <img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif">
                                                        </td>
                                                    </tr>
                                                    <tr id="ctl00_phFormContent_ucCustomFields_trCustom25">
                                                        <td valign="middle" align="right" style="padding-top: 4px; padding-bottom: 4px;"
                                                            class="formDetailDark" id="ctl00_phFormContent_ucCustomFields_tdCustomLabel25">
                                                            
                                                            Photograph:
                                                        </td>
                                                        <td valign="middle" colspan="1" style="padding-top: 4px; padding-bottom: 4px;" class="formDetail"
                                                            id="ctl00_phFormContent_ucCustomFields_tdCustomControl25">
                                                            <a id="ctl00_phFormContent_ucCustomFields_cfCustom25_lnkUploadDocument"
                                                             href="#">
                                                                [Upload File]</a>
                                                            
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="5" class="formDetailDarkNoPadding">
                                                            <img height="1" width="180" id="ctl00_phFormContent_ucFormFooter_img1" src="../../Content/images/common/space.gif">
                                                        </td>
                                                        <td height="5" width="100%" colspan="2" class="formDetailNoPadding">
                                                            <img height="1" id="ctl00_phFormContent_ucFormFooter_img2" src="../../Content/images/common/space.gif">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="formFoot" id="masterpage_divFoot">
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td valign="middle" align="left">
                                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td align="left">
                                                            <input type="button" value="Save" class="button" id="ctl00_phFormButtonBar_btnSave"
                                                                name="ctl00$phFormButtonBar$btnSave">
                                                           
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="padding-left: 10px; padding-right: 10px;">
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
