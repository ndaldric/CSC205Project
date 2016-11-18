<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trumps_List.aspx.cs" Inherits="Trumps_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style11 {
            background-color: #3366FF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong><span class="auto-style2">
        <a href="http://cooltext.com"><img src="https://images.cooltext.com/4813390.png" width="492" height="73" alt="Address Book" /></a>&nbsp;
        <asp:Image  runat= "server" ImageUrl="~/Image/globe.PNG" Height="70px" Width="70px" ID="Image2"></asp:Image> </span><br />
        <span class="auto-style12">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style11" Height="32px" Width="1501px"/>
        <br />
        </span>Trump Family</strong></div>
        <div class="auto-style2" aria-sort="none">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="TrumpFamilyData" ForeColor="#333333" GridLines="None" Width="800px">
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
        <asp:SqlDataSource ID="TrumpFamilyData" runat="server" ConnectionString="<%$ ConnectionStrings:TrumpFamilyData %>" SelectCommand="SELECT * FROM [TrumpFamilyData]"></asp:SqlDataSource>
    </form>
</body>
</html>
