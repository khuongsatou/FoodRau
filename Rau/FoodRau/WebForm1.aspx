<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FoodRau.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RauConnectionString %>" SelectCommand="SELECT * FROM [member] WHERE (([username] LIKE '%' + @username + '%') AND ([name] LIKE '%' + @name + '%') AND ([email] LIKE '%' + @email + '%') AND ([phone] LIKE '%' + @phone + '%'))">
                <SelectParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
