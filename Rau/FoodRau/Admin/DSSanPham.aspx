<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="DSSanPham.aspx.cs" Inherits="FoodRau.Admin.DSSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
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
                                <a class="form-control" href="<%=Page.ResolveUrl("~") %>Admin/ThemSanPham.aspx">Thêm Sản Phẩm</a>
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
                                        <th>Hình ảnh</th>
                                        <th>Đơn Vị</th>
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
                                        <th>Hình ảnh</th>
                                        <th>Đơn Vị</th>
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
                                                    <asp:Image ID="imgHinh" Width="50px" Height="50px" runat="server" ImageUrl='<%# "~/Admin/img/"+Eval("img") %>' />
                                                </td>
                                                <td><%# Eval("unit") %>
                                                </td>
                                                <td><%# Eval("username") %>
                                                </td>


                                                <td>
                                                    <asp:CheckBox Checked='<%#Convert.ToBoolean(Eval("status")) %>' ID="ckbStatus" runat="server" />
                                                </td>
                                                <td>
                                                   <%-- <asp:Button CausesValidation="false" ID="btnChiTiet" runat="server" Text="Chi Tiết" CommandName="ct" CommandArgument='<%# Eval("id") %>' />--%>
                                                    <asp:Button CausesValidation="false" ID="btnCapNhat" runat="server" Text="Sửa" CommandName="s" CommandArgument='<%# Eval("id") %>' />
                                                    <asp:Button CausesValidation="false" ID="btnXoa" runat="server" Text="Xóa" CommandName="x" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('Bạn Có Muốn Xóa')" />
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
</asp:Content>
