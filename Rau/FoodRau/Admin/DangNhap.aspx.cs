using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class DangNhap : System.Web.UI.Page
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

            //Session["username"] = txtUserName.Text;
            //Session["pass"] = txtPassword.Text;
            //Member mb = new Member();
            //string username =
            //mb.UserName = Session["username"].ToString();
            //mb.Pass = Session["pass"].ToString();

            ////mb.UserName = txtUserName.Text;
            ////mb.Pass = txtPassword.Text;
            //if (mb.exist(mb.UserName))
            //{
            //    if (mb.getItem(mb).Pass == Session["pass"].ToString())
            //    {
            //        Response.Write("<script>alert('Đăng Nhập Thành công');</script>");
            //        Response.Write(mb.getItem(mb).UserName);
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('Pass Sai');</script>");
            //    }
            //}
            //else
            //{
            //    Response.Write("<script>alert('Đăng Nhập Thất Bại');</script>");
            //}
        }
    }
}