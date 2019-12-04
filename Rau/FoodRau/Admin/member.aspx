<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="member.aspx.cs" Inherits="FoodRau.Admin.member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
    <!-- Custom styles for this page -->
    <link href="<%=Page.ResolveUrl("~") %>Admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="user">
                <div class="text-center">
                    <h1>Thành Viên</h1>
                </div>
                <div class="user">
                    <div class="form-group row">
                        <div class="col-sm-4">
                            <asp:TextBox placeholder="Tên Đăng nhập..." ID="txtUserName" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ValidationGroup="vsNotification" ErrorMessage="Bạn chưa nhập tên đăng nhập" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator runat="server" ValidationGroup="vsNotification" ID="revUserName" ErrorMessage="Phải là chữ cái hoặc 3 đến 10 kí tự" ValidationExpression="[A-Za-z]{3,10}" ControlToValidate="txtUserName" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>

                        <div class="col-sm-4">
                            <asp:TextBox placeholder="Họ & Tên..." ID="txtName" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rfvName" runat="server" ErrorMessage="Bạn chưa nhập họ và tên" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox placeholder="Email..." ID="txtEmail" runat="server" TextMode="email" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="rev_email" runat="server" ErrorMessage="Email chưa đúng định dạng" ValidationGroup="vsNotification" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4 mb-3 mb-sm-0">

                            <asp:TextBox placeholder="Mật Khẩu..." ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rvPass" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ValidationGroup="vsNotification" ID="revPassword" runat="server" ErrorMessage="Bạn mật khẩu từ 3 đến 10 kí tự" ControlToValidate="txtPassword" ValidationExpression="[A-Za-z0-9]{3,10}" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox placeholder="Nhập Lại Mật Khẩu..." ID="txtRepass" runat="server" TextMode="password" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvRepass" runat="server" ErrorMessage="Mật khẩu xác thực không được để trống" ControlToValidate="txtRepass" ValidationGroup="vsNotification" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:CompareValidator ValidationGroup="vsNotification" ID="cvRepass" runat="server" ErrorMessage="Mật Khẩu xác thực không khớp" ControlToCompare="txtPassword" ControlToValidate="txtRepass" Type="String" ForeColor="Red"></asp:CompareValidator>
                            <br />

                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox placeholder="Số Điện Thoại..." ID="txtPhone" runat="server" TextMode="Number" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập Số điện thoại" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:RegularExpressionValidator ValidationGroup="vsNotification" ID="revPhone" runat="server" ErrorMessage="Số điện thoại phải có 10 và phải đúng định dạng " ControlToValidate="txtPhone" ValidationExpression="0[0-9]{9}" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>

                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:DropDownList ID="ddl_user" runat="server" CssClass="form-control">
                                <asp:ListItem Enabled="true" Value="-1">--Role--</asp:ListItem>
                                <asp:ListItem Value="1">Admin</asp:ListItem>
                                <asp:ListItem Value="0">User</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ForeColor="Red" InitialValue="-1" ID="Req_ID" Display="Dynamic"
                                ValidationGroup="vsNotification" runat="server" ControlToValidate="ddl_user"
                                ErrorMessage="Bạn chưa chọn"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:DropDownList ID="ddl_status" runat="server" CssClass="form-control">
                                <asp:ListItem Enabled="true" Value="-1">--Status--</asp:ListItem>
                                <asp:ListItem Value="1">Đang Hoạt Động</asp:ListItem>
                                <asp:ListItem Value="0">Ngưng Hoạt Động</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" ValidationGroup="vsNotification" runat="server" ErrorMessage="Bạn chưa chọn" ControlToValidate="ddl_status" InitialValue="-1" ></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <i class="fas fa-fw fa-cog"></i>
                            <asp:Button ValidationGroup="vsNotification" ID="btn_register" runat="server" Text="Đăng kí" CssClass="btn btn-primary btn-user btn-block" OnClick="Btn_register_Click" />
                        </div>
                         <div class="col-sm-4  mb-3 mb-sm-0">
                            <i class="fas fa-fw fa-cog"></i>
                            <asp:Button ValidationGroup="vsNotification" ID="btn_update" runat="server" Text="Cập Nhật" CssClass="btn btn-primary btn-user btn-block" OnClick="Btn_update_Click" />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <i class="fas fa-fw fa-cog"></i>
                            <asp:Button ID="btn_cancel" runat="server" Text="Hủy" CssClass="btn btn-primary btn-user btn-block" OnClick="Btn_cancel_Click"/>
                        </div>
                        <hr>
                    </div>

                </div>
                <hr>
                <asp:ValidationSummary ID="vsGroup" runat="server" ValidationGroup="vsNotification" />

            </div>
        </div>
    </div>

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Danh Sách Thành Viên</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Danh Sách Thành Viên</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tài Khoản</th>
                            <th>Tên</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Quyền Admin</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>STT</th>
                            <th>Tài Khoản</th>
                            <th>Tên</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Quyền</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </tfoot>
                    <tbody>

                        <asp:Repeater ID="rptDSThanhVien" runat="server" OnItemCommand="rptDSThanhVien_OnItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblID" runat="server" Text="<%#Container.ItemIndex  %>"></asp:Label>
                                    </td>
                                    <td><%# Eval("username") %></td>
                                    <td><%# Eval("name") %></td>
                                    <td><%# Eval("email") %></td>
                                    <td><%# Eval("phone") %></td>
                                    <td>
                                        <asp:CheckBox Enabled="false" Checked='<%#Convert.ToBoolean(Eval("role")) %>' ID="ckbRole" runat="server" /></td>
                                    <td>
                                        <asp:CheckBox Enabled="false" Checked='<%#Convert.ToBoolean(Eval("status")) %>' ID="ckbStatus" runat="server" /></td>
                                    <td>
                                        <asp:Button CssClass="btn btn-warning" CausesValidation="false" ID="btnChon" runat="server" Text="Chọn" CommandName="c" CommandArgument='<%# Eval("username") %>' />
                                            <asp:Button CssClass="btn btn-danger" CausesValidation="false" ID="btnXoa" runat="server" Text="Xóa" CommandName="x" CommandArgument='<%# Eval("username") %>' OnClientClick="return confirm('Bạn Có Muốn Xóa')" />             
             
                                        
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
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

    <script>

</script>
</asp:Content>
