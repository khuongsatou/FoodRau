<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="post.aspx.cs" Inherits="FoodRau.Admin.post" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>


<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">

    <!-- Collapsable Card Example -->
    <div class="card shadow mb-4">
        <!-- Card Header - Accordion -->
        <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardExample">
            <h6 class="m-0 font-weight-bold text-primary">Viết Bài mới</h6>
        </a>
        <!-- Card Content - Collapse -->
        <div class="collapse show" id="collapseCardExample">
            <div class="form-group row">
                <div class="col-sm-12 mb-12 mb-sm-0">
                    <asp:TextBox ID="txtTile" placeholder="Title Bài viết..." runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="rfvName" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtTile"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-6 mb-sm-0">
                    <asp:TextBox TextMode="MultiLine" ID="txtShortDes" placeholder="Mô Tả Ngắn..." runat="server" CssClass="form-control form-control-user" Style="resize: none;" Rows="4"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-3  mb-3 mb-sm-0">
                    <asp:DropDownList CssClass="form-control form-control-user" ID="ddlStatus" runat="server">
                        <asp:ListItem Value="-1">--Status--</asp:ListItem>
                        <asp:ListItem Value="1">Hoạt động</asp:ListItem>
                        <asp:ListItem Value="1">Không hoạt động</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="-1" ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="ddlStatus"></asp:RequiredFieldValidator>
                </div>
                 <div class="col-sm-3  mb-3 mb-sm-0">
                    <asp:DropDownList CssClass="form-control form-control-user" ID="ddlType" runat="server">

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="ddlType"></asp:RequiredFieldValidator>
                 </div>
            </div>

            <div class="form-group row">
                <asp:Image ID="Image1" CssClass="img" runat="server" Width="100" Height="100" />
                <input id="cmdSelect" class="cmdSelect" type="button" value="button" />
            </div>
            <h6>Mô Tả bài viết</h6>
            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" BasePath="/ckeditor/" Height="400px" ResizeEnabled="False"></CKEditor:CKEditorControl>
            </div>
            <asp:Button ID="btnThem" runat="server" Text="Thêm" />
        </div>
    </div>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Thông báo</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <asp:HiddenField ID="hfUserNameConfirm" runat="server" />
                </div>
                <div class="modal-footer">
                    <div class="btnConfỉrm btn btn-danger" onclick="xacNhanXoa();">
                        Có
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="ckfinder/ckfinder.js"></script>
    <script>
        var finder = new CKFinder();
        $(".cmdSelect").click(function () {
            finder.selectActionFunction = function (fileUrl) {
                $(".img").attr("src", fileUrl);
            };
            finder.popup();
        });
    </script>
</asp:Content>
