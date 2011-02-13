<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourceAllocation.aspx.cs" Inherits="SynergyRMS.Reports.ResourceAllocation" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
    
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnViewReport" runat="server" Text="ViewReport" 
                        onclick="btnViewReport_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        TypeName="SynergyRMS.Reports.ResourceAllocationdsTableAdapters.R_GetResourceAllocationsByPeriodTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="startdate" PropertyName="Text" 
                                Type="DateTime" />
                            <asp:ControlParameter ControlID="TextBox2" Name="enddate" PropertyName="Text" 
                                Type="DateTime" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
        
    
    </div>
    </form>
</body>
</html>
