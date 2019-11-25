<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="FoodRau.Admin.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <div class="row">
         <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
                    <%--//form--%>
                  <div class="user">
                    <div class="form-group">
                      <asp:TextBox placeholder="Enter User Name..." CssClass="form-control form-control-user" ID="txtUserName" runat="server" ></asp:TextBox>
                     
                    </div>
                    <div class="form-group">
                    <asp:TextBox placeholder="Password" CssClass="form-control form-control-user" ID="txtPassword" runat="server" ></asp:TextBox>
                    
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <asp:Button CssClass="btn btn-primary btn-user btn-block" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                   <%-- <a href="index.html" class="btn btn-primary btn-user btn-block">
                      Login
                    </a>--%>
                    <hr>
                    <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>
                  </div>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                </div>
              </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_js" runat="server">
</asp:Content>
