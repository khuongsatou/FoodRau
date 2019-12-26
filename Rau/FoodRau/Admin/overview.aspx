<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="overview.aspx.cs" Inherits="FoodRau.Admin.overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
       <!-- Collapsable Card Example -->
    <div class="card shadow mb-4">
        <!-- Card Header - Accordion -->
        <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardExample">
            <h6 class="m-0 font-weight-bold text-primary">Cài Đặt</h6>
        </a>
        <!-- Card Content - Collapse -->
        <div class="collapse show" id="collapseCardExample">
            <table style="width:75%">
                <tr>
                    <td class="form-control form-control-user">
                        <asp:Label ID="lblDesAdmin" runat="server" Text="Phân Trang(Admin)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox TextMode="Number" CssClass="form-control form-control-user" ID="txtRecordAdmin" runat="server" step="1" min="1" max="50" Text="1"></asp:TextBox>
                        <asp:HiddenField ID="hfIDRecordAdmin" runat="server" />
                        <asp:HiddenField ID="hfNameAdmin" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" ControlToValidate="txtRecordAdmin"></asp:RequiredFieldValidator>
                    </td>
                    <td><asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="BtnSave_Click1" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="form-control form-control-user">
                        <asp:Label ID="lblDesHome" runat="server" Text="Phân Trang(Home)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox TextMode="Number" CssClass="form-control form-control-user" ID="txtRecordHome" runat="server" step="1" min="1" max="50" Text="1"></asp:TextBox>
                         <asp:HiddenField ID="hfIDRecordHome" runat="server" />
                         <asp:HiddenField ID="hfNameHome" runat="server" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không được để trống" ControlToValidate="txtRecordHome"></asp:RequiredFieldValidator>
                        </td>
              
                    <td><asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="BtnSave_Click2" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                     </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
          
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
                                .Bạn có muốn quay về...
                                <asp:HiddenField ID="hfUserNameConfirm" runat="server" />
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-primary" href="overview.aspx">Có</a>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script>
        //modal
        function showModal() {
            $("#myModal").modal('show');
        }
    </script>
</asp:Content>
