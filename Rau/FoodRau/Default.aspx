<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FoodRau.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RauConnectionString %>" SelectCommand="SELECT * FROM [member]"></asp:SqlDataSource>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="username" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                username:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                <br />
                pass:
                <asp:Label ID="passLabel" runat="server" Text='<%# Eval("pass") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                <br />
                role:
                <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
                <br />
                status:
                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Button" />
<br />
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
