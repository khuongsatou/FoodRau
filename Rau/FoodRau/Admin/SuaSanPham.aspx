<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="SuaSanPham.aspx.cs" Inherits="FoodRau.Admin.SuaSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
     <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1>Thêm Sản Phẩm</h1>
                </div>
                <div class="user">
                    <div class="form-group row">
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtName" placeholder="Tên..." runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDescription" placeholder="Mô Tả..." runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtPrice" runat="server" min="0" TextMode="number" placeholder="Giá..." CssClass="form-control form-control-user"></asp:TextBox>
                          
                            <br />

                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4 mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPrice_promo" runat="server" TextMode="number" placeholder="(%)Giá Khuyến mãi..." CssClass="form-control form-control-user" min="0" step="0.01" max="1"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">

                            <asp:TextBox ID="txtStatus" runat="server" placeholder="Status..." CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                        </div>
                       <%-- <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtUserName" runat="server" placeholder="UserName..." CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                        </div>--%>
                        
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtUnit" runat="server"   placeholder="Đơn Vị..." CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPercent_Promo" TextMode="Number" placeholder="(%)Khuyến Mãi..." runat="server" CssClass="form-control form-control-user" min="0" step="0.01" max="1"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                             <asp:TextBox ID="txtRating" runat="server" TextMode="Number" placeholder="Rating..." CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                       </div>
                    </div>
                     <div class="form-group row">
                        <div class="col-sm-4  mb-3 mb-sm-0">
                             <asp:TextBox ID="txtSold" runat="server" TextMode="Number" min="0" step="0.01" placeholder="Sold..." CssClass="form-control form-control-user"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-sm-4  mb-3 mb-sm-0">
                            <asp:TextBox ID="txtPoint" runat="server" TextMode="Number" min="0" step="0.01" placeholder="Point..." CssClass="form-control form-control-user"></asp:TextBox>
                          
                            <br />
                        </div>
                         <div class="col-sm-4  mb-3 mb-sm-0">
                             <asp:DropDownList ID="ddListType" runat="server">
                             </asp:DropDownList>
                            <%--<asp:TextBox ID="txtType" runat="server"  placeholder="Type..." CssClass="form-control form-control-user"></asp:TextBox>--%>
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
                            <asp:Button ID="btnUpdate" OnClick="Btn_update_Click" CssClass="btn btn-primary btn-user btn-block"  runat="server" Text="Update"/>
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
