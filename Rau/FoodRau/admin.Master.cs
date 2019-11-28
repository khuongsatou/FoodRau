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
        protected void Page_Load(object sender, EventArgs e)
        {
            //nếu gán rồi
            if (Session["username"] !=null)
            {
                lblUserName.Text = Session["username"].ToString();
            }
            else
            {
                lblUserName.Text = "Unknown";
                //Response.Redirect("~/Admin/DangNhap.aspx");
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
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
        }
        
    }
}