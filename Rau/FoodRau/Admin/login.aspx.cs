using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            Member mb = new Member();
            string us = txtUserName.Text;
            string pw = txtPassword.Text;
            mb.UserName = us;
            if (mb.exist(us))
            {
                if (mb.getItem(us).Pass == StringProc.MD5Hash(pw))
                {
                    Session["username"] = us;
                    Response.Write("<script>alert('Đăng Nhập Thành công');</script>");
                    Response.Redirect("~");
                }
                else
                {
                    Response.Write("<script>alert('Mật Khẩu Sai');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Tài Khoản Không Tồn Tại');</script>");
            }
        }
    }
}