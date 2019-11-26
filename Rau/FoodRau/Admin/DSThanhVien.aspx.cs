using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodRau.HttpCode;
namespace FoodRau.Admin
{
    public partial class DSThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Member member = new Member();
                rptDSThanhVien.DataSource = member.getList();
                rptDSThanhVien.DataBind();
            }
        }

        //protected void rptDSThanhVien_ItemCommand(object sender, RepeaterCommandEventArgs e)
        //{
        //    if (e.CommandName == "CapNhat")
        //    {
        //        string username = e.CommandArgument.ToString();
        //        Member member = new Member();
        //        if (member.exist(username))
        //        {
                    

        //            //Response.Write("<script>alert('có')</script>");
        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('không tồn tại')</script>");
        //        }

        //        //rptDSThanhVien.DataSource = member.getList();
        //        //rptDSThanhVien.DataBind();
        //    }
           
        //}

        


    }
}