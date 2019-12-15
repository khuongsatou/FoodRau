<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="food_type.aspx.cs" Inherits="FoodRau.Admin.food_type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
    <!-- Custom styles for this page -->
    <link href="<%=Page.ResolveUrl("~") %>Admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <!-- Page Heading -->

    <div class="row" id="chon">
        <div class="col-lg-12">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Thêm Sản Phẩm</h1>
            </div>
            <div class="user">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <div class="col-sm-12">
                                <asp:TextBox ID="txtName" CssClass="form-control form-control-user" runat="server" placeholder="Tên loại" ValidationGroup="f_them"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ValidationGroup="f_them" ControlToValidate="txtName" ID="rfvName" runat="server" ForeColor="Red" ErrorMessage="Bạn chưa nhập tên loại"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator runat="server" ValidationGroup="f_them" ID="revUserName" ErrorMessage="Không chưa kí tự đặt biệt và phải 2 đến 20 kí tự" ValidationExpression="[A-Za-z0-9\s]{2,20}" ControlToValidate="txtName" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>

                            <div class="col-sm-12">
                                <asp:TextBox ID="txtPost" TextMode="Number" CssClass="form-control form-control-user" runat="server" placeholder="Xếp loại mấy..." step="1" min="0" max="5"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ForeColor="Red" ValidationGroup="f_them" ControlToValidate="txtPost" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa nhập xếp loại"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RangeValidator ValidationGroup="f_them" ID="RangeValidator1" runat="server" ErrorMessage="Xếp hạng trong khoản 1 -> 5" ControlToValidate="txtPost" ForeColor="Red" MaximumValue="5" MinimumValue="1"></asp:RangeValidator>
                                <asp:RegularExpressionValidator ForeColor="Red" runat="server" ValidationGroup="f_them" ID="RegularExpressionValidator1" ErrorMessage="Chỉ được nhập 1 số" ValidationExpression="[0-9]+" ControlToValidate="txtPost"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-sm-8">
                                <asp:FileUpload ID="fuImg" runat="server" BorderStyle="None" />
                            </div>
                             <div class="col-sm-4">
                                <asp:Button CssClass="btn btn-success" OnClick="BtnUpImg_Click" ValidationGroup="upload" ID="btnUpImg" runat="server" Text="UpLoad" OnClientClick="UploadImage();return false;" />
                                <br />
                                <asp:Label ID="lblThongBao" runat="server" CssClass="text-danger"></asp:Label>
                                <asp:HiddenField ID="hfNameImg" runat="server" />
                            </div>
                            <div class="col-sm-12">
                                <br />
                                <asp:DropDownList ID="ddlStatus" placeholder="Trạng Thái" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="-1">--Trạng Thái--</asp:ListItem>
                                    <asp:ListItem Value="1">Còn Hàng</asp:ListItem>
                                    <asp:ListItem Value="0">Hết Hàng</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ValidationGroup="f_them" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa chọn trạng thái" InitialValue="-1" ControlToValidate="ddlStatus" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-6">
                                <asp:Image ID="imgReview" Height="350px" Width="350px" runat="server" ImageUrl="~/Admin/img/10.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button ID="btnThem" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Thêm" ValidationGroup="f_them" OnClientClick="Insert();return false;"/>
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="btnCapNhat" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Cập Nhật" ValidationGroup="f_them" OnClientClick="Update();return false;" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="btnHuy" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Hủy"  />
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
                        <div class="card-header py-3">
                            <div class="row">
                                <div class="col-md-2">
                                    <p>Tìm Kiếm</p>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox CssClass="form-control col-md-12" ValidationGroup="t_them" ID="txtTimKiem" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Button ID="Button1" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Tìm" ValidationGroup="t_them" OnClientClick="TimKiem();return false;" />
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable_custom">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên Loại</th>
                                        <th>Xếp Loại</th>
                                        <th>Hình ảnh</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên Loại</th>
                                        <th>Xếp Loại</th>
                                        <th>Hình ảnh</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                                <tbody id="repeater">
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
    <script src="js/ajax/food_type.js"></script>
</asp:Content>
