<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        Add New Project
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
	

  <script>
      $(document).ready(function() {
          $("#projectstartdate").datepicker();
      });
      $(document).ready(function() {
          $("#projectenddate").datepicker();
      });

  </script>

    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
            <tr>
                <td>
                    <div id="masterpage_divBody" class="formBody">
                        <table id="tabTablectl00_phTabstripHeader_tabMain" style="border: medium none; width: 100%;"
                            class="" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td id="ctl00_phTabstripHeader_tabMain_tdStretch" align="left">
                                        <div id="ctl00_phTabstripHeader_tabMain_divTabContainer" style="overflow: hidden;">
                                            <table id="ctl00_phTabstripHeader_tabMain_tabStrip" border="0" cellpadding="0" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                    </tr>
                                                    <tr>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace"
                                                                width="5" height="1">
                                                        </td>
                                                        <td class="tabSelected" nowrap="nowrap">
                                                            General
                                                        </td>
                                                        <td class="tabSpace">
                                                            <img src="../../Content/images/common/space.gif" id="ctl00_phTabstripHeader_tabMain_imgTabSpace0"
                                                                width="1" height="1">
                                                        </td>
                                                       
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="tabStripBase" border="0" cellpadding="0" cellspacing="0" width="100%"
                                            height="5">
                                            <tbody>
                                                <tr>
                                                    <td class="tabScrollEnabled" id="btnScrollLeft" align="left" valign="middle">
                                                        <img src="../../Content/images/common/arrowleft_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollLeft"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                    <td width="100%">
                                                    </td>
                                                    <td class="tabScrollEnabled" id="btnScrollRight" align="right" valign="middle">
                                                        <img src="../../Content/images/common/arrowright_grey.gif" id="ctl00_phTabstripHeader_tabMain_imgScrollRight"
                                                            style="display: none;" align="middle">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table id="masterPage_tblFormContentRoot" style="border-collapse: collapse;" border="0"
                            cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td class="form">
                                        <table class="formContent">
                                            <tbody>
                                                <tr>
                                                    <td class="formDetailDarkNoPadding" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormHeader_img1"
                                                            width="180" height="1">
                                                    </td>
                                                    <td class="formDetailNoPadding" colspan="2" width="100%" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormHeader_img2"
                                                            height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                         <label for="code">Code:</label>Code:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                   
                                                        <input name="txtCode" id="code" class="textBox"
                                                            size="20" maxlength="20" type="text">
                                                            <div type="text" id="datepicker">date</div>

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="description">Description:</label>Description:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="txtDescription" id="description"
                                                            class="textBox" size="70" maxlength="70" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="active">Active:</label>Active:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="middle">
                                                        <input name="ctl00$phFormContent$chkActive" id="active" class="checkBox"
                                                            checked="checked" type="checkbox">
                                                    </td>
                                                </tr>                                               
                                                <tr>
                                                    <td class="formDetailDarkHR" align="right" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                    <td class="formDetailHR" colspan="1" align="left" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="client">Client:</label>Client:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxClient$txtValue" id="client"
                                                            class="textBox" type="text">
                                                        <div id="ctl00_phFormContent_pbxClient_divDescription" style="display: inline;">
                                                        </div>
                                                    </td>
                                                </tr>
                                               
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectLevel">Project Level:</label>Project Level:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <select name="ctl00$phFormContent$cboProjectLevel" id="projectLevel"
                                                            class="comboBox">
                                                            <option selected="selected" value="Select">Select</option>
                                                            <option value="Top">Top</option>
                                                            <option value="Medium">Medium</option>
                                                            <option value="Low">Low</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="location">Location:</label>Location:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxLocation$txtValue" id="location"
                                                            class="textBox" type="text">
                                                        <div id="ctl00_phFormContent_pbxLocation_divDescription" style="display: inline;">
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectManger">Project Manager:</label>Project Manager:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxProjectManager$txtValue" id="projectManger"
                                                            class="textBox" type="text">
                                                        <div id="ctl00_phFormContent_pbxProjectManager_divDescription" style="display: inline;">
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                       <label for="projectSponser">Project Sponsor:</label>Project Sponsor:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                        <input name="ctl00$phFormContent$pbxProjectSponsor$txtValue" id="projectSponser"
                                                            class="textBox" type="text">
                                                        <div id="ctl00_phFormContent_pbxProjectSponsor_divDescription" style="display: inline;">
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDarkHR" align="right" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                    <td class="formDetailHR" colspan="1" align="left" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                </tr>
                                                
                                                <tr>
                                                    <td class="formDetailDarkHR" align="right" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                    <td class="formDetailHR" colspan="1" align="left" valign="middle">
                                                        <img src="../../Content/images/common/hr.gif" alt="" width="100%" height="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                        <label for="projectstartdate">Start Date:</label>Start Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">                                                 
                                                        <input name="ctl00$phFormContent$dteStartDate$txtYear" id="projectstartdate"
                                                            class="textBox" size="15" maxlength="4" type="text">
                                                        <img src="../../Content/images/common/pick.gif" id="ctl00_phFormContent_dteStartDate_imgSelect"
                                                            style="vertical-align: middle; cursor: pointer;" alt="Select" title="Select" border="0">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDark" align="right" valign="middle">
                                                       <label for="projectenddate">End Date:</label> End Date:
                                                    </td>
                                                    <td class="formDetail" align="left" valign="top">
                                                      
                                                        <input name="ctl00$phFormContent$dteEndDate$txtYear" id="projectenddate"
                                                            class="textBox" size="15" maxlength="4" type="text">
                                                        <img src="../../Content/images/common/pick.gif" id="Img1" style="vertical-align: middle;
                                                            cursor: pointer;" alt="Select" title="Select" border="0">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="formDetailDarkNoPadding" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormFooter_img1"
                                                            width="180" height="1">
                                                    </td>
                                                    <td class="formDetailNoPadding" colspan="2" width="100%" height="5">
                                                        <img src="../../Content/images/common/space.gif" id="ctl00_phFormContent_ucFormFooter_img2"
                                                            height="1">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="masterpage_divFoot" class="formFoot">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td align="left" valign="middle">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td align="left">
                                                        <input name="ctl00$phFormButtonBar$btnSave" id="ctl00_phFormButtonBar_btnSave" class="button"
                                                            value="Save" type="submit">
                                                        <input name="ctl00$phFormButtonBar$btnClose" id="ctl00_phFormButtonBar_btnClose"
                                                            class="button" value="Cancel" type="reset">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    
                    <div style="padding-left: 10px; padding-right: 10px;"></div>
                </td>
            </tr>
            
        </tbody>
    </table>
</asp:Content>
