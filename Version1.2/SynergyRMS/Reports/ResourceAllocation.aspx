<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourceAllocation.aspx.cs" Inherits="SynergyRMS.Reports.ResourceAllocation" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Resource Projects Detail Report</title>
  <%--  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>--%>
  
    <link href="../Content/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" language="javascript" src="../Scripts/Calander/jquery.min.js"></script>
   <script type="text/javascript"  language="javascript" src="../Scripts/Calander/jquery-ui.min.js"></script>
    
  <link rel="stylesheet" href="../Content/common/styles.css" type="text/css"/>
   
<%--   <link rel="stylesheet" media="screen" type="text/css" href="../Content/datepicker.css" />
<script type="text/javascript" src="../Scripts/Calander/datepicker.js"></script>--%>

 
 
       <script type="text/javascript">


           $(document).ready(function() {
           $("#txtStartDate").datepicker();
           });
           $(document).ready(function() {
           $("#txtEndDate").datepicker();
           });

    </script>
    
</head>

    
<body>
    <form id="form1" runat="server">
    <div>
    
     <table width="100%" align="center" >
    <tr align="center" valign="top">
    <td align="center" valign="top">
    
        <table style="width:100%;">
            <tr>
               
                <td>
                 
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                 
                    &nbsp;</td>
            </tr>
            <tr>
               
                <td>
                 
                    &nbsp;</td>
                <td>
                 
                    &nbsp;</td>
            </tr>
            <tr>
             
                   
                <td align="left">
                 
                    <asp:Label ID="lblStartDate" runat="server" Font-Bold="True" Text="From Date :"></asp:Label>
                </td>
                <td align="left">
                 
                    <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqFromDate" runat="server" 
                        ControlToValidate="txtStartDate" ErrorMessage="Please Select From Date"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
              
                <td align="left">
                    <asp:Label ID="lblEndDate" runat="server" Font-Bold="True" Text="To Date :"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqToDate" runat="server" 
                        ControlToValidate="txtEndDate" ErrorMessage="Please Select To Date"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
             
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
               
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="btnViewReport" runat="server" Text="View Report" 
                        onclick="btnViewReport_Click" />
                </td>
            </tr>
            <tr>
               
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
               
            
                <td colspan="2" align="center">
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" Height="400px" Width="650px">
                        <LocalReport ReportPath="Reports\ResourceAllocation.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                                    Name="ResourceAllocationds_R_GetResourceAllocationsByPeriod" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                    
                </td>
            </tr>
            <tr>
              
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        TypeName="SynergyRMS.Reports.ResourceAllocationdsTableAdapters.R_GetResourceAllocationsByPeriodTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtStartDate" Name="startdate" PropertyName="Text" 
                                Type="DateTime" />
                            <asp:ControlParameter ControlID="txtEndDate" Name="enddate" PropertyName="Text" 
                                Type="DateTime" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </td>
    </tr>
    </table>
    
    
    
        
    
    </div>
    </form>
</body>
</html>
