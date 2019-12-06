using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau
{
    public partial class admin : System.Web.UI.MasterPage
    {
        private bool checkExist = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            //nếu gán rồi
            
            if (Session["username"] !=null)
            {
                lblLogin.Text = "Logout";
                lblModal_title.Text = "Bạn có muốn thoát?";
                lblModal_body.Text = "Nhấn vào \' Logout \' để thoát ?";
                btnLogin.Visible = checkExist;
                btnLogout.Visible = !checkExist;
                lblUserName.Text = Session["username"].ToString();
            }
            else
            {
                lblLogin.Text = "Login";
                lblModal_title.Text = "Bạn có muốn đăng nhập?";
                lblModal_body.Text = "Nhấn vào \' Login \' để vào trang đăng nhập !";
                btnLogin.Visible = !checkExist;
                btnLogout.Visible = checkExist;
                lblUserName.Text = "Unknown";
            }
        }

     

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                //xóa username
                Session.Remove("username");
                //mấy thằng khác xóa luôn
                Session.RemoveAll();
                Response.Redirect("~/Admin/login.aspx");
            }
        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/login.aspx");
        }

    }
}