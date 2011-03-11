<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveManagement.aspx.cs" Inherits="SynergyRMS.Leave.LeaveManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
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
                <td>
                    <asp:Label ID="lblSelectLeave" runat="server" Font-Bold="True" 
                        Text="Select Leave Type :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlLeaveTypes" runat="server" Width="150px" DataValueField="LeaveTypeId" DataTextField="LeaveType">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStartDate" runat="server" Font-Bold="True" 
                        Text="Start Date :"></asp:Label>
                </td>
                <td>
                      <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEndDate" runat="server" Font-Bold="True" Text="End Date :"></asp:Label>
                    </td>
                <td>
                     <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                      
                      </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDescription" runat="server" Font-Bold="True" Text="Reason :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
