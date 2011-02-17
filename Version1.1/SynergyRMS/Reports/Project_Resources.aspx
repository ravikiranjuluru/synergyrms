<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_Resources.aspx.cs" Inherits="SynergyRMS.Reports.Project_Resources" %>

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
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblSelect" runat="server" Text="Select Project :" 
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProjects" runat="server" DataTextField="ProjectName" DataValueField="ProjectId">
                     
                    </asp:DropDownList>
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnShow" runat="server" onclick="btnShow_Click" 
                        Text="View Report" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" Height="400px" Width="650px">
                        <LocalReport ReportPath="Reports\ProjectResources.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                                    Name="ProjectResources_R_GetProjectResourcesByProjectId" />
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" 
                                    Name="ProjectResources_R_GetProjectByProjectId" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                   <%-- <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        SelectMethod="GetData" 
                        TypeName="SynergyRMS.ProjectResourcesTableAdapters.R_GetProjectResourcesByProjectIdTableAdapter">
                    </asp:ObjectDataSource>--%>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        TypeName="SynergyRMS.Reports.ProjectResourcesTableAdapters.R_GetProjectResourcesByProjectIdTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlProjects"  
                                Name="ProjectId" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        TypeName="SynergyRMS.Reports.ProjectResourcesTableAdapters.R_GetProjectByProjectIdTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlProjects" Name="ProjectId" 
                                PropertyName="SelectedValue" Type="Int32" />
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
