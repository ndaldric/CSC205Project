<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Matthews_List.aspx.cs" Inherits="Matthews_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style11 {
            background-color: #3366FF;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <strong><span class="auto-style2">
        <a href="http://cooltext.com"><img src="https://images.cooltext.com/4813390.png" width="492" height="73" alt="Address Book" /></a>&nbsp;&nbsp;
        <asp:Image  runat= "server" ImageUrl="~/Image/globe.PNG" Height="70px" Width="70px" ID="Image2"></asp:Image> </span><span class="auto-style12">
        <br />
        <asp:Image ID="Image1" runat="server" CssClass="auto-style11" Height="32px" Width="1501px"/>
        <br />
        </span><span class="auto-style14">
        Matthews Family</span></strong><div class="auto-style13">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="Id" DataSourceID="MatthewsFamilyData" ForeColor="#333333" GridLines="None" BackColor="Black" BorderColor="Black" CellSpacing="2" Width="800px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Member Name" HeaderText="Member Name" SortExpression="Member Name" />
                <asp:BoundField DataField="Relation" HeaderText="Relation" SortExpression="Relation" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="MatthewsFamilyData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [MatthewsFamilyData]"></asp:SqlDataSource>
    </form>
</body>
</html>
