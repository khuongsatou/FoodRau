using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Home
{
    public partial class product_single : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["id"] !=null)
            {
                Food food = new Food();
                Food f = food.getItem(Convert.ToInt32(Request["id"]));
                lblName.Text = f.Name.ToString();
                lblPoint.Text = f.Point.ToString();
                lblRating.Text = f.Rating.ToString();
                lblSold.Text = f.Sold.ToString();
                lblPrice.Text = f.Price.ToString();
                lblDescription.Text = f.Description.ToString();
                lblUnit.Text = f.Unit.ToString();
            }
        }
    }
}