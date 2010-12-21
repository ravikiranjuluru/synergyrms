<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="Stylesheet" href="<%= ResolveUrl("~") %>Content/common/popup.css" />
    <link id="lnkStyle" rel="stylesheet" href="<%= ResolveUrl("~") %>Content/common/styles.css" />
</head>
<body>
    <style type="text/css">
        /* Normal Login Screen Styles */
        
        .serviceUpdateTitle
        {
            color: #555555;
            font-weight: bold;
            padding-bottom: 2px;
            padding-top: 2px;
        }
        
        .serviceUpdate
        {
            color: #555555;
            text-align: justify;
        }
        
        .loginpagebackground
        {
            background-image: url(../../Content/images/common/loginbackground.png);
            text-align: center;
            background-color: #367DAD;
            height: 100%;
        }
        
        .container
        {
            background-color: transparent;
            position: absolute;
            top: 30px;
            left: 0px;
            width: 100%;
            text-align: center;
            min-width: 900px;
        }
        
        .content
        {
            background-color: transparent;
            position: relative;
            text-align: left;
            width: 409px;
            height: 307px;
            top: 35px;
            margin: 0px auto;
            left: 38px;
        }
        
        .error
        {
            width: 365px;
            padding: 0px 0px 10px 5px;
        }
        
        .header
        {
            background-color: transparent;
            position: relative;
            top: 30px;
            text-align: left;
            width: 769px;
            height: auto;
            margin: 0px auto;
        }
        
        .loginlogo
        {
            position: relative;
            background-color: transparent;
        }
        
        .pageLeftColumn
        {
            position: relative;
            background-color: transparent;
            width: 396px;
            height: 266px;
            top: 9px;
            left: 5px;
        }
        
        .pageRightColumn
        {
            position: absolute;
            background-color: Transparent;
            top: 0px;
            right: 0px;
            width: 377px;
            height: auto;
        }
        
        .logintable
        {
            background-image: url(../../Content/images/common/login_gradient.png);
            width: 100%;
            border: solid 1px #CCCCCC;
        }
        
        .normalCell, .Username
        {
            padding: 2px 20px 2px 20px;
        }
        
        
        .BoxTop
        {
            background-image: url(../../Content/images/common/login_box_top.png);
            background-repeat: no-repeat;
            height: 20px;
        }
        
        .BoxMiddle
        {
            background-repeat: repeat-y;
            background-image: url(../../Content/images/common/login_box_middle.png);
            height: auto;
            padding-top: 0px;
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 10px;
            background-color: Transparent;
        }
        
        .BoxBottom
        {
            background-image: url('../../Content/images/common/login_box_bottom.png');
            height: 19px;
            background-color: Transparent;
            width: 396px;
        }
        
        .boxTitle
        {
            font-size: 14px;
            font-family: Myriad Pro, "Lucida Grande" , "Lucida Sans Unicode" ,Trebuchet MS,Arial;
            line-height: 1.6em;
            letter-spacing: 0px;
            font-weight: 700;
            color: #333333;
            padding-bottom: 3px;
            padding-top: 0px;
        }
        
        .Username
        {
            font-size: 11px;
            font-weight: 500;
        }
        
        .SignIn, .greenButton
        {
            font-size: 13px;
            font-family: Myriad Pro, "Lucida Grande" , "Lucida Sans Unicode" ,Trebuchet MS,Arial;
            font-weight: 700;
            color: #FFFFFF;
            padding: 0px;
            display: inline-block;
        }
    </style>

    <table width="400">
    <tr align="center" valign="top">
    <td align="center"><div class="content">
            <!-- Left Hand Column -->
            <div class="pageLeftColumn">
                <!-- Login Box -->
                <div class="BoxTop">
                </div>
                <div class="BoxMiddle">
                    <div style="padding-right: 30px;">
                        <div class="boxTitle">
                            login
                        </div>
                        <div>
                            <table class="logintable">
                                <tr>
                                    <td class="normalCell">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Username">
                                        User ID:
                                    </td>
                                </tr>
                                <tr>
                                    <td class="normalCell">
                                        <input name="txtUserID" type="text" id="txtUserID" class="textBox" size="54" style="height: 15px;"
                                            tabindex="1" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Username">
                                        Password:
                                    </td>
                                </tr>
                                <tr>
                                    <td class="normalCell">
                                        <input name="txtPassword" type="password" id="txtPassword" class="textBox" size="54"
                                            style="height: 15px;" tabindex="2" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="normalCell">
                                        <table border="0">
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right;" class="normalCell">
                                        <a href="#" id="lnkForgotPassword" tabindex="7" style="text-decoration: underline;
                                            color: #2D6E9A;">Forgotten your password?</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="normalCell">
                                        <!-- Sign In Button -->
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="greenButton_Left">
                                                </td>
                                                <td>
                                                    <input name="btnLogin" type="submit" id="btnLogin" tabindex="6" alt="Sign In" class="greenButton"
                                                        value="Sign In" />
                                                </td>
                                                <td class="greenButton_Right">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="BoxBottom">
                </div>
            </div>
            </div>
   
    </td></tr>
    </table>
  
</body>
</html>