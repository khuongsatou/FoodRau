﻿using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class lst_food : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] != null)
            //{
            //    Response.Redirect("~");
            //}
            if (!Page.IsPostBack)
            {
                resetList();
            }
        }

        private void resetList()
        {
            Food f = new Food();
            List<Food> fl = new List<Food>();
            fl.AddRange(f.getListFoodType());
            rptDSSP.DataSource =fl;
            rptDSSP.DataBind();
        }



        protected void rptDSSP_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "s")
            {
                string id = e.CommandArgument.ToString();
                //mã hóa
                string hash = Server.UrlEncode(id);
                Response.Redirect("~/Admin/Food.aspx?id=" + hash);
            }
            //xóa
            if (e.CommandName == "x")
            {
                Food f = new Food();
                f.Id = Convert.ToInt32(e.CommandArgument.ToString());
                if (f.delete())
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