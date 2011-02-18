<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProjectByResources.aspx.cs" Inherits="SynergyRMS.Reports.ViewProjectByResources" %>

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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    Resource Projects Report</td>
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
                    <asp:Label ID="lblUser" runat="server" Text="Select Resource :" 
                        Font-Bold="True"></asp:Label>
                &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlUser" runat="server" DataSourceID="ResourceSource" DataTextField="FullName" DataValueField="UserId">
                   
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnViewReport" runat="server" onclick="btnViewReport_Click" 
                        Text="View Report" />
                    <asp:SqlDataSource ID="ResourceSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:synergydbadminConnectionString %>" 
                        SelectCommand="R_LoadAllUsers" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
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
                  <%--  <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        SelectMethod="GetData" 
                        TypeName="SynergyRMS.ViewProjectByResourceTableAdapters.R_GetProjectsByResourcesIdTableAdapter">
                    </asp:ObjectDataSource>--%>
                </td>
                <td>
                 <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" Height="400px" Width="650px">
                        <LocalReport ReportPath="Reports\ViewProjectByResource.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                                    Name="ViewProjectByResourceds_R_GetProjectsByResourcesId" />
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" 
                                    Name="ViewProjectByResourceds_R_GetResourceByResourceId" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                </td>
                <td>
                   
                  </td>
            </tr>
            <tr>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        
                        
                        TypeName="SynergyRMS.Reports.ViewProjectByResourcedsTableAdapters.R_GetProjectsByResourcesIdTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlUser" Name="ResourceId" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        
                        TypeName="SynergyRMS.Reports.ViewProjectByResourcedsTableAdapters.R_GetResourceByResourceIdTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlUser" Name="ResourceId" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
