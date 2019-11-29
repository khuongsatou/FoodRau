﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="SuaSanPham.aspx.cs" Inherits="FoodRau.Admin.SuaSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
     <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1>Cập Nhật Sản Phẩm</h1>
                </div>
                <div class="user">
                    <div class="form-group row">
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtName" placeholder="Tên..." runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Bạn Chưa Nhập Tên!" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDescription" placeholder="Mô Tả..." runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ErrorMessage="Bạn Chưa Nhập Mô Tả!" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtPrice" runat="server" min="0" step="1" TextMode="number" placeholder="Giá..." CssClass="form-control form-control-user"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn Chưa Nhập Giá!" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                            <br />

                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4 mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPrice_promo" runat="server" TextMode="number" placeholder="(%)Giá Khuyến mãi..." CssClass="form-control form-control-user" min="0" step="0.01" max="1" Text="0"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn Chưa Nhập Giá Khuyến Mãi!" ControlToValidate="txtPrice_promo"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:DropDownList ID="ddl_status" runat="server" CssClass="form-control">
                                <asp:ListItem Enabled="true" Value="-1">--Status--</asp:ListItem>
                                <asp:ListItem Value="0">Đang Hoạt Động</asp:ListItem>
                                <asp:ListItem Value="1">Ngưng Hoạt Động</asp:ListItem>
                            </asp:DropDownList>
                        

                            <br />
                        </div>
                 
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtUnit" Text="Quả" runat="server"   placeholder="Đơn Vị..." CssClass="form-control form-control-user"></asp:TextBox>
                            <br/>
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPercent_Promo" TextMode="Number" placeholder="(%)Khuyến Mãi..." runat="server" CssClass="form-control form-control-user" min="0" step="0.01" max="0.9" Text="0"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn Chưa Nhập KM!" ControlToValidate="txtPercent_Promo"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                             <asp:TextBox ID="txtRating" runat="server" TextMode="Number" placeholder="Rating..." Text="0" min="0" step="1" max="10" CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                       </div>
                    </div>
                     <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                             <asp:TextBox ID="txtSold" runat="server" TextMode="Number" min="0" step="0.01" Text="0" placeholder="Sold..." CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPoint" runat="server" Text="0" TextMode="Number" min="0" step="0.01" placeholder="Point..." max="0.9" CssClass="form-control form-control-user"></asp:TextBox>
                          
                            <br />
                        </div>
                         <div class="col-sm-4  mb-3 mb-sm-0">
                             <asp:DropDownList ID="ddListType" runat="server" CssClass="form-control"> </asp:DropDownList>
                       
                             <br />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                             <asp:FileUpload ID="fuThumb" runat="server" /> 
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:FileUpload ID="fuImg" runat="server" />
                        </div>
                    </div>

                    <div class="form-group row">
                          <div class="col-sm-4  mb-3 mb-sm-0">
                            
                           </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:Button ID="btnCapNhat" OnClick="Btn_update_Click" CssClass="btn btn-primary btn-user btn-block"  runat="server" Text="Cập Nhật" />
                        </div>
                        
                       

                        <hr>
                    </div>

                </div>
                <hr>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
</asp:Content>