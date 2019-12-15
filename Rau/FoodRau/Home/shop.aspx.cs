using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Home
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Food food = new Food();
            rptSanPham.DataSource = food.getList();
            rptSanPham.DataBind();

            FoodType ft = new FoodType();
            rptLoaiSP.DataSource = ft.getList();
            rptLoaiSP.DataBind();
        }


    }
}