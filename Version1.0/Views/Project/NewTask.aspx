<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
    <style type="text/css">
        #Text1
        {
            width: 213px;
        }
    </style>
</head>
<body>

    <div>
    <div class="formContainerPopup" id="divMain">
            <div class="formHeadPopup" id="divHead">
                <table height="35" cellspacing="0" cellpadding="0" border="0" width="100%">
                    <tbody><tr>
                        <td align="left" valign="middle">
	                        Add new task to Project.
                        </td>
                    </tr>
                </tbody></table>
            </div>
        
            <div class="formBodyPopup" id="divBody" style="height: 228px;">    
                 
        
                <table cellspacing="0" cellpadding="0" border="0" width="100%">
                    <tbody><tr>
                        <td align="left" valign="top">
                            <table cellspacing="0" cellpadding="0" border="0" class="form">
                                <tbody><tr style="height: 5px;">
                                    <td class="formDetailDarkNoPadding"><img height="1" width="180" alt="" src="../../Content/images/common/space.gif"></td>
                                    <td width="100%" class="formDetailNoPadding"><img height="1" alt="" src="../../Content/images/common/space.gif"></td>
                                </tr>   
                                         		        
                                <tr>
                                    <td align="right" valign="middle" style="white-space: nowrap;" class="formDetailDark">
                                        Project:                         
                                         
                                    </td>
                                    <td align="left" valign="middle" style="white-space: nowrap;" class="formDetail">
                                        PROJECT 1</td>
                                </tr>       
                                
                                
<tr>
	<td align="right" valign="middle" class="formDetailDarkHR"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
	<td align="left" valign="middle" colspan="1" class="formDetailHR"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
</tr>
 
                                
                                <tr>
                                    <td align="right" valign="top" style="white-space: nowrap;" class="formDetailDark">
                                        Mappings: 
                                    </td>
                                    <td align="left" valign="middle" style="white-space: nowrap;" class="formDetail">
                                        <div id="divMappings">
                                            <table cellspacing="0" cellpadding="0" border="0" width="100%" class="tableGrid" id="tblMappings">
                                                <thead>
                                                    <tr>
                                                        <td align="left" width="50%" valign="middle" style="white-space: nowrap;">
                                                            &nbsp;
                                                            <b>&nbsp;Task </b>
                                                        </td>
                                                        <td align="left" width="50%" valign="middle" style="white-space: nowrap;">
                                                            <b>User</b></td>
                                                        <td align="center" valign="middle" style="white-space: nowrap;">
                                                           &nbsp;
                                                        </td>
                                                    </tr>
                                                </thead>
                                            
                                                <tbody>     
                                                    
                                                    <tr>
                                                        <td align="left" width="50%" valign="middle" style="white-space: nowrap;">
                                                            &nbsp;</td>
                                                        <td align="left" width="50%" valign="middle" style="white-space: nowrap;">
                                                            &nbsp;</td>
                                                        <td align="center" valign="middle" style="white-space: nowrap;">
                                                            &nbsp;</td>
                                                    </tr>
                                                    
           
                                                        
                                                            <tr>
                                                                <td align="left" valign="middle" style="white-space: nowrap; padding: 0px 5px;">
                                                                    <input id="Text1" type="text" value="Enter Task here" class="textBox"/></td>
                                                                <td align="left" valign="middle" style="white-space: nowrap; padding: 0px 0px 0px 5px;">
                                                    
<select class="comboBox" id="ucFromDate_cmbMonth0" name="ucFromDate$cmbMonth0">
	<option value="0">Select User</option>
	<option value="0">User 1</option>
	<option value="1">User 1</option>
	<option value="2">User 2</option>
	<option value="3">User 3</option>
	<option value="4">User 4</option>
</select></td>
                                                                <td align="center" valign="middle" style="white-space: nowrap; padding: 0px 5px;">
                                                                    
                                                                        &nbsp;</td>
                                                            </tr>
                                                        
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                </tr>   
                                
                                
<tr>
	<td align="right" valign="middle" class="formDetailDarkHR"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
	<td align="left" valign="middle" colspan="1" class="formDetailHR"><img height="1" width="100%" alt="" src="../../Content/images/common/hr.gif"></td>
</tr>
   
                                
                                <tr>
                                    <td align="right" valign="middle" style="white-space: nowrap;" class="formDetailDark">
                                        Restrict Dates:  
                                    </td>
                                    <td align="left" valign="middle" style="white-space: nowrap;" class="formDetail">
                                        <input type="checkbox" class="checkBox" id="chkRestrictDates" name="chkRestrictDates">
                                    </td>
                                </tr>  
                                <tr>
                                    <td align="right" valign="middle" style="white-space: nowrap;" class="formDetailDark">
                                        Date Restriction:  
                                    </td>
                                    <td align="left" valign="middle" style="white-space: nowrap;" class="formDetail">
                                        <table cellspacing="0" cellpadding="0" border="0">
                                            <tbody><tr>
                                                <td style="white-space: nowrap;">
                                                    
<select class="comboBox" id="ucFromDate_cmbMonth" name="ucFromDate$cmbMonth">
	<option value=""></option>
	<option value="1">Jan</option>
	<option value="2">Feb</option>
	<option value="3">Mar</option>
	<option value="4">Apr</option>
	<option value="5">May</option>
	<option value="6">Jun</option>
	<option value="7">Jul</option>
	<option value="8">Aug</option>
	<option value="9">Sep</option>
	<option value="10">Oct</option>
	<option value="11">Nov</option>
	<option value="12" selected="selected">Dec</option>
</select>
            
            <select class="comboBox" id="ucFromDate_cmbDayUS" name="ucFromDate$cmbDayUS">
	<option value=""></option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13" selected="selected">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
</select>
            <input type="text" value="2010" maxlength="4" size="6" class="textBox" id="ucFromDate_txtYear" name="ucFromDate$txtYear"&nbsp;
            <input type="hidden" class="textBox" id="ucFromDate_hdnDate" name="ucFromDate$hdnDate">
    
    
                                                </td>
                                                <td>
                                                    <img height="1" width="15" alt="" src="../../Content/images/common/space.gif">
                                                </td>
                                                <td style="white-space: nowrap;">
                                                    To Date: 
<select class="comboBox" id="ucToDate_cmbMonth" name="ucToDate$cmbMonth">
	<option value=""></option>
	<option value="1" selected="selected">Jan</option>
	<option value="2">Feb</option>
	<option value="3">Mar</option>
	<option value="4">Apr</option>
	<option value="5">May</option>
	<option value="6">Jun</option>
	<option value="7">Jul</option>
	<option value="8">Aug</option>
	<option value="9">Sep</option>
	<option value="10">Oct</option>
	<option value="11">Nov</option>
	<option value="12">Dec</option>
</select>
            
            <select class="comboBox" id="ucToDate_cmbDayUS" name="ucToDate$cmbDayUS">
	<option value=""></option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13" selected="selected">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
</select>
            <input type="text" value="2011" maxlength="4" size="6" class="textBox" id="ucToDate_txtYear" name="ucToDate$txtYear"&nbsp;
            <input type="hidden" class="textBox" id="ucToDate_hdnDate" name="ucToDate$hdnDate">
    
    
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    </td>
                                </tr>                                        
                                
                                <tr style="height: 5px;">
                                    <td class="formDetailDarkNoPadding">&nbsp;</td>
                                    <td width="100%" class="formDetailNoPadding">&nbsp;</td>
                                </tr>  
                                
                                <tr style="height: 5px;">
                                    <td class="formDetailDarkNoPadding"><img height="1" width="180" alt="" src="../../Content/images/common/space.gif"><table cellspacing="0" cellpadding="0" border="0" width="100%">
                    <tbody><tr>
                        <td align="left" valign="middle">
	                        &nbsp;
                        </td>					
                    </tr>
                </tbody></table>
                                    </td>
                                    <td width="100%" class="formDetailNoPadding"><img height="1" alt="" src="../../Content/images/common/space.gif"><input type="button" title="Click to Save" value="Save" id="btnSave" name="btnSave" onclick="__doPostBack('btnSave','')">&nbsp;</td>
                                </tr>  
                                
                                <tr style="height: 5px;">
                                    <td class="formDetailDarkNoPadding">&nbsp;</td>
                                    <td width="100%" class="formDetailNoPadding">&nbsp;</td>
                                </tr>  
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
            </div>
            
            <div class="formFootPopup" id="divFoot"> 						
            </div>            
        </div>
    </div>
</body>
</html>
