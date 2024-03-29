﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourceAllocationByUser.aspx.cs" Inherits="SynergyRMS.Reports.ResourceAllocationByUser" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Resource Allocation Detail Reportt</title>
    
     <link href="../Content/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" language="javascript" src="../Scripts/Calander/jquery.min.js"></script>
   <script type="text/javascript"  language="javascript" src="../Scripts/Calander/jquery-ui.min.js"></script>
    
  <link rel="stylesheet" href="../Content/common/styles.css" type="text/css"/>
  
  
    <script type="text/javascript">


           $(document).ready(function() {
           $("#txtStartDate").datepicker();
           });
           $(document).ready(function() {
           $("#txtEndDate").datepicker();
           });

    </script>
    <style type="text/css">
        .style1
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table width="100%" align="center" >
    <tr align="center" valign="top">
    <td align="center" valign="top">
    
    
        <table style="width: 100%;">
            <tr>
                <td colspan="2">
                                        &nbsp;</td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="left">
                   <asp:Label ID="Label1" runat="server" Text="Resource"></asp:Label>
                </td>
                <td align="left">
                    <asp:DropDownList ID="resourceddl" runat="server" DataSourceID="ResourceSource" DataTextField="FullName" DataValueField="UserId" >
           
        </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    <asp:SqlDataSource ID="ResourceSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:synergydbadminConnectionString %>" 
                        SelectCommand="R_LoadAllUsers" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="lblFramDate" runat="server" Text="From Date :"></asp:Label>
                </td>
                <td align="left"> 
                    <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqStartDate" runat="server" 
                        ControlToValidate="txtStartDate" ErrorMessage="Please Select From Date"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="lblToDate" runat="server" Text="To Date :"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqToDate" runat="server" 
                        ControlToValidate="txtEndDate" ErrorMessage="Please Select To Date"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="left">
        <asp:Button ID="Viewbtn" runat="server" onclick="Viewbtn_Click" 
            Text="View Report" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td  colspan="3">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" Height="400px" Width="650px">
            <LocalReport ReportPath="Reports\ResourceAllocationByUser.rdlc">
            </LocalReport>
          
          
        </rsweb:ReportViewer>
                    
                </td>
            </tr>
        </table>
    </td>
    </tr>
    </table>
        &nbsp;<br />
        <br />
&nbsp;<br />
     
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
