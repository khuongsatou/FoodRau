<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="food.aspx.cs" Inherits="FoodRau.Admin.food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1>Sản Phẩm</h1>
                </div>
                <div class="user">
                    <div class="form-group row">
                        <div class="col-sm-4 mb-3 mb-sm-0">
                            <asp:TextBox ID="txtName" placeholder="Tên..." runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="rfvName" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="col-sm-4 mb-3 mb-sm-0">
                            <asp:TextBox ID="txtDescription" placeholder="Mô Tả..." runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="rfvDescription" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtUnit" runat="server" placeholder="Đơn vị tính..." CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtUnit"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtRating" runat="server" TextMode="Number" placeholder="Rating..." min="0" step="1" max="10" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtRating"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RangeValidator MinimumValue="0" MaximumValue="10" ValidationGroup="f_t" ForeColor="Red" ID="RangeValidator5" ControlToValidate="txtRating" runat="server" ErrorMessage="Không hợp lệ" Type="Integer"></asp:RangeValidator>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPoint" runat="server" TextMode="Number" min="0" step="1" placeholder="Điểm..." max="99" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtPoint"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RangeValidator MinimumValue="0" MaximumValue="99" ValidationGroup="f_t" ForeColor="Red" ID="RangeValidator6" ControlToValidate="txtPoint" runat="server" ErrorMessage="Không hợp lệ" Type="Double"></asp:RangeValidator>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:DropDownList ID="ddl_status" runat="server" CssClass="form-control">
                                <asp:ListItem Enabled="true" Value="-1">--Status--</asp:ListItem>
                                <asp:ListItem Value="1">Đang Hoạt Động</asp:ListItem>
                                <asp:ListItem Value="0">Ngưng Hoạt Động</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator InitialValue="-1" ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Chưa chọn" ControlToValidate="ddl_status"></asp:RequiredFieldValidator>

                            <br />
                        </div>


                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12  mb-3 mb-sm-0">
                            <asp:DropDownList ID="ddListType" runat="server" CssClass="form-control"></asp:DropDownList>
                            <br />
                        </div>

                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4 mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPrice" runat="server" step="0.1" min="0" TextMode="number" placeholder="Giá..." CssClass="form-control form-control-user" onfocusout="checkPricePromo();"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RangeValidator MinimumValue="0" MaximumValue="1000000000" ValidationGroup="f_t" ForeColor="Red" ID="RangeValidator1" ControlToValidate="txtPrice" runat="server" ErrorMessage="Giá trong khoản 0 đến 1.000.000.000" Type="Double"></asp:RangeValidator>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPercent_Promo" TextMode="Number" placeholder="(%)Khuyến Mãi..." runat="server" CssClass="form-control form-control-user" min="0" step="1" max="99" onfocusout="checkPricePromo();"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="f_t" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtPercent_Promo"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RangeValidator MinimumValue="0" MaximumValue="99" ValidationGroup="f_t" ForeColor="Red" ID="RangeValidator4" ControlToValidate="txtPercent_Promo" runat="server" Type="Double" ErrorMessage="0 đến 99%"></asp:RangeValidator>
                            <asp:RegularExpressionValidator ControlToValidate="txtPercent_Promo" ID="RegularExpressionValidator1" ValidationExpression="[0-9]{0,2}" ForeColor="Red" ValidationGroup="f_t" runat="server" ErrorMessage="0 -> 99"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                        <div class="col-sm-4 mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPrice_promo" runat="server" placeholder="(%)Giá Khuyến mãi..." CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:HiddenField ID="hfPrice_Promo" runat="server" />
                            <br />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <asp:Image ID="imgThumb" Height="150px" Width="150px" runat="server" ImageUrl="~/Admin/img/10.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <asp:Image ID="imgImage" Height="250px" Width="250px" runat="server" ImageUrl="~/Admin/img/10.jpg" />
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6">
                            <span class="col-sm-4">
                                <asp:FileUpload ID="fuThumb" runat="server" />
                            </span>
                            <span class="col-sm-8">
                                <asp:Button CssClass="btn btn-success" OnClick="BtnUpThumb_Click" ValidationGroup="uploadThumb" ID="btnThumb" runat="server" Text="Upload Thumb" />
                                <br />
                                <asp:Label ID="lblThongBaoThumb" runat="server"></asp:Label>
                                <asp:HiddenField ID="hfSaveThumb" runat="server" />

                            </span>
                        </div>
                        <div class="col-sm-6">
                            <span class="col-sm-4">
                                <asp:FileUpload ID="fuImage" runat="server" />
                            </span>
                            <span class="col-sm-8">
                                <asp:Button CssClass="btn btn-success" OnClick="BtnUpImage_Click" ValidationGroup="uploadImage" ID="btnUpImage" runat="server" Text="Upload Image" />
                                <br />
                                <asp:Label ID="lblThongBaoImage" runat="server"></asp:Label>
                                <asp:HiddenField ID="hfSaveImage" runat="server" />

                            </span>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-12  mb-3 mb-sm-0">
                            <asp:Button ValidationGroup="f_t" ID="btnThem" OnClick="Btn_Them_Click" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Thêm" OnClientClick="return Valid();" />
                        </div>
                        <div class="col-sm-12  mb-3 mb-sm-0">
                            <asp:Button ValidationGroup="f_t" ID="btnUpdate" OnClick="Btn_update_Click" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Update" OnClientClick="return Valid();" />
                        </div>
                        <hr>
                    </div>
                </div>
                <hr>
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
                                <a class="btn btn-primary" href="lst_food.aspx">Có</a>
                                <a class="btnConfirm btn btn-danger" href='<%if (Request["id"] != null) Response.Write("food.aspx?id=" + Request["id"]); else Response.Write("food.aspx"); %>'>Không</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="js/ajax/food.js"></script>
</asp:Content>

