<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="lst_food.aspx.cs" Inherits="FoodRau.Admin.lst_food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
     <!-- Custom styles for this page -->
    <link href="<%=Page.ResolveUrl("~") %>Admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <hr />
            <div class="col-lg-12">
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Danh Sách</h6>
                        <div class="row">
                            <div class="col-md-3">
                                <a class="form-control" href="<%=Page.ResolveUrl("~") %>Admin/food.aspx">Thêm Sản Phẩm</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên</th>
                                        <th>Mô Tả</th>
                                        <th>Giá</th>
                                        <th>Giá Khuyến Mãi</th>
                                        <th>Số Lượng</th>
                                        <th>Xếp Hạng</th>
                                        <th>Đã Bán</th>
                                        <th>Thuộc Loại</th>
                                        <th>Hình thu nhỏ </th>
                                        <th>Hình ảnh Sản Phẩm</th>
                                        <th>Người Lập</th>
                                        <th>Trạng Thái</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên</th>
                                        <th>Mô Tả</th>
                                        <th>Giá</th>
                                        <th>Giá Khuyến Mãi</th>
                                        <th>Số Lượng</th>
                                        <th>Xếp Hạng</th>
                                        <th>Đã Bán</th>
                                        <th>Thuộc Loại</th>
                                        <th>Hình thu nhỏ </th>
                                        <th>Hình ảnh Sản Phẩm</th>
                                        <th>Người Lập</th>
                                        <th>Trạng Thái</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                                <tbody>

                                    <asp:Repeater ID="rptDSSP" runat="server" OnItemCommand="rptDSSP_OnItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <%#Container.ItemIndex+1  %>
                                                </td>
                                                <td>
                                                    <%# Eval("name") %>
                                                </td>
                                                <td>
                                                    <%# Eval("description") %>
                                                </td>
                                                <td>
                                                    <%# Eval("price") %>
                                                </td>
                                                <td>
                                                    <%# Eval("price_promo") %>
                                                </td>
                                                <td>
                                                    <%# Eval("unit") %>
                                                </td>
                                                 <td>
                                                    <%# Eval("rating") %>
                                                </td>
                                                 <td>
                                                    <%# Eval("sold") %>
                                                </td>
                                                 <td>
                                                    <%# Eval("typename") %>
                                                </td>
                                                <td>
                                                    <asp:Image ID="imgThumb" Width="50px" Height="50px" runat="server" ImageUrl='<%# "~/Admin/img/"+Eval("thumb") %>' />
                                                </td>
                                                <td>
                                                    <asp:Image ID="imgHinh" Width="50px" Height="50px" runat="server" ImageUrl='<%# "~/Admin/img/"+Eval("img") %>' />
                                                </td>
                                                <td><%# Eval("username") %>
                                                </td>

                                                <td>
                                                    <asp:CheckBox Enabled="false" Checked='<%#Convert.ToBoolean(Eval("status")) %>' ID="ckbStatus" runat="server" />
                                                </td>
                                                <td>
                                                    <asp:Button CssClass="btn btn-warning" CausesValidation="false" ID="btnCapNhat" runat="server" Text="Sửa" CommandName="s" CommandArgument='<%# Eval("id") %>' />
                                                    <asp:Button CssClass="btn btn-danger" CausesValidation="false" ID="btnXoa" runat="server" Text="Xóa" CommandName="x" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('Bạn Có Muốn Xóa')" />
                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
      <!-- Page level plugins -->
    <script src="<%=Page.ResolveUrl("~") %>Admin/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<%=Page.ResolveUrl("~") %>Admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<%=Page.ResolveUrl("~") %>Admin/js/demo/datatables-demo.js"></script>
</asp:Content>

