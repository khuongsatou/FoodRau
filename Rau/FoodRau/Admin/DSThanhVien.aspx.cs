using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class DSThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                resetList();
            }
        }

        private void resetList()
        {
            Member member = new Member();
            rptDSThanhVien.DataSource = member.getList();
            rptDSThanhVien.DataBind();
        }

        protected void rptDSThanhVien_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "s")
            {
                string username = e.CommandArgument.ToString();
                //mã hóa
                string hash = Server.UrlEncode(username);
                Response.Redirect("~/Admin/SuaThanhVien.aspx?username="+hash);
            }
            if(e.CommandName == "x")
            {
                Member member = new Member();
                member.UserName = e.CommandArgument.ToString();
                if (member.delete())
                {
                    //in ra hộp thoại thông báo.
                    Response.Write("<script>alert('Thành Công') </script>");
                }
                else
                {
                    Response.Write("<script>alert('Thất Bại') </script>");
                }
                resetList();
            }
        }


    }
}