<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="DSLoaiSanPham.aspx.cs" Inherits="FoodRau.Admin.DSLoaiSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
    <!-- Custom styles for this page -->
    <link href="<%=Page.ResolveUrl("~") %>Admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Thêm Sản Phẩm</h1>
            </div>
            <div class="user">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <div class="col-sm-12">
                                <asp:TextBox ID="txtName" CssClass="form-control form-control-user" runat="server" placeholder="Tên"></asp:TextBox>
                                <br />
                            </div>

                            <div class="col-sm-12">
                                <asp:TextBox ID="txtPost" TextMode="Number" CssClass="form-control form-control-user" runat="server" placeholder="bài viết"></asp:TextBox>
                                 <br />
                            </div>
                            <div class="col-sm-12">
                                <asp:FileUpload ID="fuImg" runat="server" />
                                 <br />

                            </div>
                            <div class="col-sm-12">
                                 <br />
                                <asp:DropDownList ID="ddlStatus" placeholder="Trạng Thái" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="-1">--Trạng Thái--</asp:ListItem>
                                    <asp:ListItem Value="1">Còn Hàng</asp:ListItem>
                                    <asp:ListItem Value="0">Hết Hàng</asp:ListItem>
                                </asp:DropDownList>
                                 <br />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-6">
                                <asp:Image ID="imgReview" Height="250px" Width="250px" runat="server" ImageUrl="~/Admin/img/c.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button ID="btnThem" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Thêm" OnClick="BtnThem_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="btnSua" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Sửa" OnClick="BtnSua_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="btnHuy" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Hủy" OnClick="BtnHuy_Click" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <hr />
            <div class="col-lg-12">
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Danh Sách</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên</th>
                                        <th>Bài Viết</th>
                                        <th>Hình ảnh</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên</th>
                                        <th>Bài Viết</th>
                                        <th>Hình ảnh</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                                <tbody>

                                    <asp:Repeater ID="rptDSLoaiSP" runat="server" OnItemCommand="rptDSLoaiSP_OnItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblID" runat="server" Text="<%#Container.ItemIndex+1  %>"></asp:Label>
                                                </td>
                                                <td>
                                                    <%# Eval("type_post") %>
                                                </td>
                                                <td>
                                                    <%# Eval("type_name") %>
                                                </td>
                                                <td>
                                                    <asp:Image Width="50px" Height="50px" ID="imgHinh" runat="server" ImageUrl='<%# "~/Admin/img/"+Eval("type_img") %>' />
                                                </td>
                                                <td>
                                                    <asp:CheckBox Checked='<%#Convert.ToBoolean(Eval("status")) %>' ID="ckbStatus" runat="server" />

                                                </td>
                                                <td>
                                                    <asp:Button CausesValidation="false" ID="btnChon" runat="server" Text="Chọn" CommandName="c" CommandArgument='<%# Eval("type_id") %>' />
                                                    <asp:Button CausesValidation="false" ID="btnXoa" runat="server" Text="Xoa" CommandName="x" CommandArgument='<%# Eval("type_id") %>' />
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
