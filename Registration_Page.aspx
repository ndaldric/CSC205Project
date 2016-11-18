<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration_Page.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 218px;
            height: 36px;
        }
        .auto-style3 {
            width: 218px;
        }
        .auto-style4 {
            text-align: left;
            width: 195px;
            height: 36px;
        }
        .auto-style5 {
            width: 64px;
        }
        .auto-style19 {
            text-align: right;
            width: 218px;
            height: 38px;
        }
        .auto-style20 {
            text-align: left;
            width: 195px;
            height: 38px;
        }
        .auto-style21 {
            height: 38px;
        }
        .auto-style22 {
            width: 195px;
        }
        .auto-style26 {
            text-align: right;
            width: 218px;
            height: 39px;
        }
        .auto-style27 {
            text-align: left;
            width: 195px;
            height: 39px;
        }
        .auto-style28 {
            height: 39px;
        }
        .auto-style29 {
            text-align: right;
            width: 218px;
            height: 44px;
        }
        .auto-style30 {
            text-align: left;
            width: 195px;
            height: 44px;
        }
        .auto-style31 {
            height: 44px;
        }
        .auto-style33 {
            text-align: right;
            width: 218px;
            height: 35px;
        }
        .auto-style34 {
            text-align: left;
            width: 195px;
            height: 35px;
        }
        .auto-style35 {
            height: 35px;
        }
        .auto-style36 {
            height: 36px;
        }
        .auto-style32 {
            margin-bottom: 11px;
        }
        .auto-style37 {
            font-size: large;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style11 {
            background-color: #3366FF;
        }
        .auto-style38 {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style37"><strong><span class="auto-style2">
        <a href="http://cooltext.com"><img src="https://images.cooltext.com/4813390.png" width="492" height="73" alt="Address Book" /></a>&nbsp;
        <asp:Image  runat= "server" ImageUrl="~/Image/globe.PNG" Height="70px" Width="70px" ID="Image3"></asp:Image> </span>
        <br />
        <span class="auto-style12">
        <asp:Image ID="Image2" runat="server" CssClass="auto-style11" Height="32px" Width="1501px"/>
        </span>
        <br />
        </strong></span><br />
    
        <span class="auto-style38"><strong>Registration Page</strong></span><br />
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style26">Username:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtUsername" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="you must enter a username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">E-mail:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px" TextMode="Email"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="you must enter an email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style29">Password:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style31">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="you must enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPw" ControlToValidate="txtPassword" ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtConfirmPw" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style36">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPw" ErrorMessage="you must enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPw" ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style33">Address:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="txtAddress" runat="server" Width="180px" CssClass="auto-style32"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="you must enter an address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
                    <input id="Reset1" class="auto-style5" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
