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
                string ten = Session["username"].ToString();
                Response.Write("Xin chao " + ten + " !!!");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session["username"] = txtUserName.Text;
            Session["pass"] = txtPassword.Text;
            Member mb = new Member();
            mb.UserName = Session["username"].ToString();
            mb.Pass = Session["pass"].ToString();
            
            //mb.UserName = txtUserName.Text;
            //mb.Pass = txtPassword.Text;
            if (mb.exist(mb.UserName))
            {
                if (mb.getItem(mb).Pass == Session["pass"].ToString())
                {
                    Response.Write("<script>alert('Đăng Nhập Thành công');</script>");
                    Response.Write(mb.getItem(mb).UserName);
                }
                else
                {
                    Response.Write("<script>alert('Pass Sai');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Đăng Nhập Thất Bại');</script>");
            }
        }
    }
}