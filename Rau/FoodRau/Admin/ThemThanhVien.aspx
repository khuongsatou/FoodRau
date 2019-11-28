<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="ThemThanhVien.aspx.cs" Inherits="FoodRau.Admin.ThemThanhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1>Thêm Tài Khoản</h1>
                </div>
                <div class="user">
                    <div class="form-group row">
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control form-control-user" ></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rfvUserName" runat="server" ErrorMessage="Bạn Chưa Nhập User Name" ControlToValidate="txtUserName"></asp:RequiredFieldValidator><br />
                            <asp:RegularExpressionValidator ID="revUserName" runat="server" ErrorMessage="Bạn Phải Nhập Chữ" ValidationExpression="[A-Za-z_]" ControlToValidate="txtUserName"></asp:RegularExpressionValidator>
                        </div>

                        <div class="col-sm-4">
                            <asp:TextBox ID="txtName" runat="server"  CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rfvName" runat="server" ErrorMessage="Bạn Chưa Nhập Name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="email" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn Chưa Nhập Email" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="rev_email" runat="server" ErrorMessage="Email Chưa đúng định dạng" ValidationGroup="vsNotification" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4 mb-3 mb-sm-0">

                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-user" ></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rvPass" runat="server" ErrorMessage="Bạn Chưa Nhập Password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ValidationGroup="vsNotification" ID="revPassword" runat="server" ErrorMessage="Bạn Phải Nhập 3 đến 10 kí tự" ControlToValidate="txtPassword" ValidationExpression="[A-Za-z0-9]{3,10}"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtRepass" runat="server" TextMode="password" CssClass="form-control form-control-user"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvRepass" runat="server" ErrorMessage="Bạn Chưa nhập rePass" ControlToValidate="txtRepass" ValidationGroup="vsNotification"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ValidationGroup="vsNotification" ID="cvRepass" runat="server" ErrorMessage="rePass Chưa giống pass" ControlToCompare="txtPassword" ControlToValidate="txtRepass" Type="String"></asp:CompareValidator>
                            <br />
                           
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPhone" runat="server" TextMode="Number" CssClass="form-control form-control-user" Text="0" ></asp:TextBox>
                            <asp:RegularExpressionValidator ValidationGroup="vsNotification" ID="revPhone" runat="server" ErrorMessage="Bạn Phải Nhập 10 số" ControlToValidate="txtPhone" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>

                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:DropDownList ID="ddl_user" runat="server" CssClass="form-control">
                                <asp:ListItem Enabled="true" Value="-1">--Role--</asp:ListItem>
                                <asp:ListItem Value="1">Admin</asp:ListItem>
                                <asp:ListItem Value="0">User</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:DropDownList ID="ddl_status" runat="server" CssClass="form-control">
                                <asp:ListItem Enabled="true" Value="-1">--Status--</asp:ListItem>
                                <asp:ListItem Value="1">Đang Hoạt Động</asp:ListItem>
                                <asp:ListItem Value="0">Ngưng Hoạt Động</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <i class="fas fa-fw fa-cog"></i>
                            <asp:Button ValidationGroup="vsNotification" ID="btn_register" runat="server"  Text="Register Account" CssClass="btn btn-primary btn-user btn-block" OnClick="Btn_register_Click"
                                
                                />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <i class="fab fa-google fa-fw"></i>
                            <asp:Button ID="btn_google" CssClass="btn btn-google btn-user btn-block" runat="server" Text="Register with Google" />

                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <i class="fab fa-facebook-f fa-fw"></i>
                            <asp:Button ID="btn_fb" runat="server" Text="Register with Facebook" CssClass="btn btn-facebook btn-user btn-block" />

                        </div>

                        <hr>
                    </div>

                </div>
                <hr>

                <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                </div>
                <div class="text-center">
                    <a class="small" href="login.html">Already have an account? Login!</a>
                </div>
                <asp:ValidationSummary ID="vsGroup" runat="server" ValidationGroup="vsNotification" />

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
</asp:Content>
