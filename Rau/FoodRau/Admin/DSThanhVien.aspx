<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="DSThanhVien.aspx.cs" Inherits="FoodRau.Admin.DSThanhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
    <!-- Custom styles for this page -->
    <link href="<%=Page.ResolveUrl("~") %>Admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Danh Sách Thành Viên</h1>
    <div class="row">
        <div class="col-md-3">
            <a class="form-control" href="<%=Page.ResolveUrl("~") %>Admin/ThemThanhVien.aspx">Thêm Thành Viên</a>
        </div>
    </div>


    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
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
                                        <asp:CheckBox Checked='<%#Convert.ToBoolean(Eval("role")) %>' ID="ckbRole" runat="server" /></td>
                                    <td>
                                        <asp:CheckBox Checked='<%#Convert.ToBoolean(Eval("status")) %>' ID="ckbStatus" runat="server" /></td>
                                    <td>
                                        <asp:Button CausesValidation="false" ID="btnCapNhat" runat="server" Text="Sửa" CommandName="s" CommandArgument='<%# Eval("username") %>' />
                                        <asp:Button CausesValidation="false" ID="btnXoa" runat="server" Text="Xóa" CommandName="x" CommandArgument='<%# Eval("username") %>' OnClientClick="return confirm('Bạn Có Muốn Xóa')"/>
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
</asp:Content>
