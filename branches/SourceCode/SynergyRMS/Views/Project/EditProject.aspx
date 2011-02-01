<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage<Projects>" %>--%>
    <%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterDashboard.Master"
    Inherits="System.Web.Mvc.ViewPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_page.css"
        type="text/css" />
    <link rel="stylesheet" href="<%= ResolveUrl("~") %>Content/Datatable/demo_table.css"
        type="text/css" />

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.js"></script>

    <script type="text/javascript" language="javascript" src="<%= ResolveUrl("~") %>Scripts/Datatable/jquery.dataTables.js"></script>

    <style type="text/css">
        .t
        {
            background: url(../../Content/images/common/dot_top.gif) 0 0 repeat-x;
            width: 100%;
        }
        .b
        {
            background: url(../../Content/images/common/dot_bottom.gif) 0 100% repeat-x;
        }
        .l
        {
            background: url(../../Content/images/common/dot_left.gif) 0 0 repeat-y;
        }
        .r
        {
            background: url(../../Content/images/common/dot_right.gif) 100% 0 repeat-y;
        }
        .bl
        {
            background: url(../../Content/images/common/bl.gif) 0 100% no-repeat;
        }
        .br
        {
            background: url(../../Content/images/common/br.gif) 100% 100% no-repeat;
        }
        .tl
        {
            background: url(../../Content/images/common/tl.gif) 0 0 no-repeat;
        }
        .tr
        {
            background: url(../../Content/images/common/tr.gif) 100% 0 no-repeat;
            padding: 10px;
        }
        .outer
        {
            position: relative;
            padding-top: 20px;
        }
        .boxtitle
        {
            position: absolute;
            top: 0;
            left: -50;
            padding-left: 15px;
            padding-right: 5px;
            width: 191px;
        }
        .content
        {
            padding-top: 10px;
        }
    </style>
    <div id="masterpage_divHead" class="formHead">
        <table class="pageTitle" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td align="left" valign="middle">
                        View Project
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
            <tr>
                <td>
                    <table class="dashboardOperationsBarOuter" cellpadding="0" cellspacing="0" width="100%">
                        <tbody>
                            <tr>
                                <td class="dashboardOperationsBar">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td align="left" valign="middle">
                                                    <!-- Toolbar Content Goes Here -->
                                                    <table border="0">
                                                        <tbody>
                                                           
                                                        </tbody>
                                                    </table>
                                                </td>
                                                <td style="padding-right: 0px;" align="right" valign="middle">
                                                    <table border="0px" cellpadding="0" cellspacing="1">
                                                        <tbody>
                                                            <tr>
                                                                <td style="white-space: nowrap;" align="right" valign="middle">
                                                                </td>
                                                                <td class="" style="padding: 0px; white-space: nowrap;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="padding-left: 2px; padding-right: 4px;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="padding-right: 10px;" align="right" valign="middle">
                                                                    &nbsp;
                                                                </td>
                                                                <td class="" style="white-space: nowrap;" align="right" valign="middle">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- Place Content That you want to appear between the Toolbar and the Tab Strip Here  -->
                </td>
            </tr>
        </tbody>
    </table>
    <div style="padding: 0px;">
        <table id="tabTablectl00_ucTabStrip" style="border: medium none; width: 100%;" class="dashboardTabStrip"
            cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td id="ctl00_ucTabStrip_tdStretch" align="left">
                        <div id="ctl00_ucTabStrip_divTabContainer" style="overflow: hidden;">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="dashboardTabStripBase" border="0" cellpadding="0" cellspacing="0" width="100%"
                            height="5">
                            <tbody>
                                <tr>
                                    <td class="tabScrollEnabled" id="btnScrollLeft" align="left" valign="middle">
                                        <img src="../../Content/images/common/arrowleft_grey.gif" id="ctl00_ucTabStrip_imgScrollLeft"
                                            style="display: none;" align="middle">
                                    </td>
                                    <td width="100%">
                                    </td>
                                    <td class="tabScrollEnabled" id="btnScrollRight" align="right" valign="middle">
                                        <img src="../../Content/images/common/arrowright_grey.gif" id="ctl00_ucTabStrip_imgScrollRight"
                                            style="display: none;" align="middle">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="ctl00_tblMain" style="padding: 3px; border-top: 1px solid rgb(153, 153, 153);
            border-collapse: collapse;" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td style="border: medium none; margin: 0px; border-collapse: collapse;" align="left"
                        valign="top" width="100%">
                        <table style="border-style: none; border-color: inherit; border-width: medium; border-collapse: collapse;
                            margin: 0px; padding: 0px; height: 268px; width: 96%;" border="0" cellpadding="0"
                            cellspacing="0">
                            <tbody>
                                <tr>
                                    <td style="padding: 2px; width: 100%;" colspan="1" rowspan="1" align="center" valign="top">
                                        <div class="outer">
                                            <div class="boxtitle">
                                                <table style="background-color: white;">
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <table>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td id="td2" class="BoxTitle" style="background-color: rgb(255, 255, 255); height: 24px;
                                                                                padding-left: 4px; padding-right: 5px;">
                                                                                List of Projects
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="t">
                                                <div class="b">
                                                    <div class="l">
                                                        <div class="r">
                                                            <div class="bl">
                                                                <div class="br">
                                                                    <div class="tl">
                                                                        <div class="tr">
                                                                            <div class="content">
                                                                                <style type="text/css">
                                                                                    .style4
                                                                                    {
                                                                                        width: 242px;
                                                                                    }
                                                                                    .style5
                                                                                    {
                                                                                        width: 179px;
                                                                                    }
                                                                                    .style6
                                                                                    {
                                                                                        width: 144px;
                                                                                    }
                                                                                    </style>
                                                                                <table style="padding-left: 10px; width: 100%;">
                                                                                   
                                                                                        <tr>
                                                                                            <td align="left" valign="top">
                                                                                                Datatable goes here
                                                                                                <table id="table_id">
                                                                                                    <thead>
                                                                                                        <tr>
                                                                                                            <th class="style4">
                                                                                                                Column 1
                                                                                                            </th>
                                                                                                            <th class="style5">
                                                                                                                Column 2
                                                                                                            </th>
                                                                                                            <th class="style6">
                                                                                                                etc
                                                                                                            </th>
                                                                                                        </tr>
                                                                                                    </thead>
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 1 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 1 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 1
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 2
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="style4">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style5">
                                                                                                                Row 2 Data 3
                                                                                                            </td>
                                                                                                            <td class="style6">
                                                                                                                etc
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                                <table id="tblprojects" width="100%" border="0" cellspacing="0" cellpadding="0" class="display">
                                                                                                    <thead>
                                                                                                        <tr>
                                                                                                            <th id="pcode" width="34%" align="left" height="30">
                                                                                                                <a href="#">Project Code</a>
                                                                                                            </th>
                                                                                                            <th id="pname" width="12%" align="left">
                                                                                                                <a href="#">Project Name</a>
                                                                                                            </th>
                                                                                                            <th id="pdesc" width="20%" align="left">
                                                                                                                <a href="#">Description</a>
                                                                                                            </th>
                                                                                                            <th id="pclient" width="20%" align="left">
                                                                                                                <a href="#">Client</a>
                                                                                                            </th>
                                                                                                            <th id="pstatus" width="10%" align="left">
                                                                                                                <a href="#">Status</a>
                                                                                                            </th>
                                                                                                            <th id="pmanager" width="20%" align="left">
                                                                                                                <a href="#">Project Manager</a>
                                                                                                            </th>
                                                                                                            <th id="psdate" width="10%" align="left">
                                                                                                                <a href="#">Start Date</a>
                                                                                                            </th>
                                                                                                            <th id="pedate" width="10%" align="left">
                                                                                                                <a href="#">End Date</a>
                                                                                                            </th>
                                                                                                            <th id="edit" width="2%">
                                                                                                            </th>
                                                                                                            <th id="Delete" width="2%">
                                                                                                            </th>
                                                                                                        </tr>
                                                                                                    </thead>
                                                                                                    <tbody>
                                                                                                        <%-- <%
                                                                                    foreach (MembershipUser manager in (MembershipUserCollection)ViewData["Managerlist"])
                                                                                    {
                                                                                        ProfileCommon mngrprofile = Profile.GetProfile(manager.UserName);
                                                                                        string keyid = manager.ProviderUserKey.ToString(); 
                                                                                %>--%>
                                                                                                        <tr>
                                                                                                            <td headers="mgrname" class="oddrow-mdl" align="left" height="25" width="34%">
                                                                                                                <%--<%= mngrprofile.FullName%>--%>
                                                                                                            </td>
                                                                                                            <td headers="email" class="oddrow-mdl" align="left" width="12%">
                                                                                                                <%-- <%= manager.Email%>--%>
                                                                                                            </td>
                                                                                                            <td headers="organization" class="oddrow-mdl" align="left" width="20%">
                                                                                                                <%-- <%= mngrprofile.Organization%>--%>
                                                                                                            </td>
                                                                                                            <td headers="Username" class="oddrow-mdl" align="left" width="20%">
                                                                                                                <%--<%= manager.UserName%>--%>
                                                                                                            </td>
                                                                                                            <td headers="active" class="oddrow-mdl" align="left" width="10%">
                                                                                                                <%-- <% var status = "Inactive";
                                                                                           if (manager.IsApproved)
                                                                                               status = "Active";
                                                                                        %>
                                                                                        <%= status%>--%>
                                                                                                            </td>
                                                                                                            <td headers="edit" class="evnrow-mdl" align="left" width="2%">
                                                                                                                <a href="#"><strong>
                                                                                                                    <%--<%=Html.ActionLink<UserController>(c => c.EditManager(manager.ProviderUserKey.ToString()), "Edit")%>--%>
                                                                                                                </strong></a>
                                                                                                            </td>
                                                                                                            <td headers="Delete" class="evnrow-mdl" align="left" width="2%">
                                                                                                                <a href="#"><strong>
                                                                                                                    <%-- Html.ActionLink<UserController>(c => c.Delete(manager.ProviderUserKey.ToString()), "Delete", new { onclick = "return confirm('Are you sure you wish to delete selected manager?');" })--%>
                                                                                                                    <%-- **<%=Html.ActionLink<UserController>(c => c.Delete(manager.ProviderUserKey.ToString()), "Delete", new { onclick = "return deleteConfirm();" })%>--%>
                                                                                                                </strong></a>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <%--<%} %>--%>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                    
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <script>
        $(document).ready(function() {
            $('#table_id').dataTable({
                        "bPaginate": true,
                        "bLengthChange": true,
                        "bFilter": true,
                        "bSort": true,
                        "bInfo": true,
                        "bAutoWidth": true,              
                    "sPaginationType": 'full_numbers',
                "bJQueryUI": true,
                'sDom': '<"top"lf>t<"clear"><"bottom"ip><"clear">'
            });
        });
    </script>

</asp:Content>
