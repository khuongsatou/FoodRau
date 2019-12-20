<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultTest.aspx.cs" Inherits="FoodRau.DefaultTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

            </asp:Repeater>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    price_promo:
                    <asp:Label ID="price_promoLabel" runat="server" Text='<%# Eval("price_promo") %>' />
                    <br />
                    thumb:
                    <asp:Label ID="thumbLabel" runat="server" Text='<%# Eval("thumb") %>' />
                    <br />
                    img:
                    <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                    <br />
                    unit:
                    <asp:Label ID="unitLabel" runat="server" Text='<%# Eval("unit") %>' />
                    <br />
                    percent_promo:
                    <asp:Label ID="percent_promoLabel" runat="server" Text='<%# Eval("percent_promo") %>' />
                    <br />
                    rating:
                    <asp:Label ID="ratingLabel" runat="server" Text='<%# Eval("rating") %>' />
                    <br />
                    sold:
                    <asp:Label ID="soldLabel" runat="server" Text='<%# Eval("sold") %>' />
                    <br />
                    point:
                    <asp:Label ID="pointLabel" runat="server" Text='<%# Eval("point") %>' />
                    <br />
                    type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    status:
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    <br />
                    username:
                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                    <br />
                    modified:
                    <asp:Label ID="modifiedLabel" runat="server" Text='<%# Eval("modified") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RauConnectionString %>" SelectCommand="SELECT * FROM [food] WHERE ([name] LIKE '%' + @name + '%')">
                <SelectParameters>
                    <asp:Parameter Name="name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
