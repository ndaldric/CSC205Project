<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<script runat="server">
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            }
        .auto-style2 {
            text-align: right;
            width: 76px;
        }
        .auto-style3 {
            width: 76px;
        }
        .auto-style4 {
            margin-right: 349px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style8 {
            width: 159px;
            text-align: left;
        }
        .auto-style11 {
            background-color: #3366FF;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            margin-left: 640px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
    <div class="auto-style1">
    
        <br />
        <a href="http://cooltext.com"><img src="https://images.cooltext.com/4813390.png" width="492" height="73" alt="Address Book" /></a>
        <asp:Image  runat= "server" ImageUrl="~/Image/globe.PNG" Height="70px" Width="70px"></asp:Image> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style12">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style11" Height="32px" Width="1501px"/>
        <br />
        
        <asp:Label ID="Label1" runat="server" Text="Use Address Book to stay in contact with family members and friends."></asp:Label>
        </span>
        <br />
        <br />
    
        Login</div>
            or <asp:LinkButton ID="btnRegister" runat="server" OnClick="btnRegister_Click">Register</asp:LinkButton>
            <br />
        </div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">Username:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtUsername" runat="server" Width="149px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter a username." ForeColor="Red" BackColor="Yellow" BorderColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPassword" runat="server" Width="149px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red" BackColor="Yellow">Please enter a password.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <div class="auto-style13">
            <asp:TextBox ID="TextBox1" runat="server" Height="162px" Width="442px" TextMode="MultiLine">Im still working on getting login to work, as well as register. When the buttons are pushed it doesnt redirect to the new page. All of the pages run, and except for this page, everything works for the most part. I didn&#39;t really focus on front end or back end specifically, I just did a good amount of work on both. You can try logining in with Username: Admin Password: password. But it won&#39;t work</asp:TextBox>
        </div>
    </form>
</body>
</html>
