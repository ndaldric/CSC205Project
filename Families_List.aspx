<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Families_List.aspx.cs" Inherits="families_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 154px;
            text-align: left;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: left;
            font-size: x-large;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style11 {
            background-color: #3366FF;
        }
        .auto-style13 {
            width: 154px;
            text-align: left;
            height: 23px;
        }
        .auto-style14 {
            text-align: left;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style4">
    
        <strong><span class="auto-style2">
        <a href="http://cooltext.com"><img src="https://images.cooltext.com/4813390.png" width="492" height="73" alt="Address Book" /></a>&nbsp;
        <asp:Image  runat= "server" ImageUrl="~/Image/globe.PNG" Height="70px" Width="70px" ID="Image2"></asp:Image> </span><br />
        <span class="auto-style12">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style11" Height="32px" Width="1501px"/>
        <br />
        </span>
        Families List</strong></div>
        <table class="auto-style12" border="0">
            <tr>
                <td class="auto-style2">Sampsons</td>
                <td class="auto-style3">
                    <asp:LinkButton ID="btnViewSampsons" runat="server" OnClick="btnViewSampsons_Click">View Details</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Hendersons</td>
                <td class="auto-style3">
                    <asp:LinkButton ID="btnViewHendersons" runat="server" OnClick="btnViewHendersons_Click">View Details</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Matthews</td>
                <td class="auto-style3">
                    <asp:LinkButton ID="btnViewMatthews" runat="server" OnClick="btnViewMatthews_Click">View Details</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Trumps</td>
                <td class="auto-style14">
                    <asp:LinkButton ID="btnViewTrumps" runat="server" OnClick="btnViewTrumps_Click">View Details</asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
