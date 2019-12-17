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


            if (Request["id"] != null)
            {
                Food food = new Food();
                Food f = food.getItem(Convert.ToInt32(Request["id"]));
                lblName.Text = f.Name.ToString();
                lblPoint.Text = (f.Point * 10).ToString();
                lblRating.Text = f.Rating.ToString();
                lblSold.Text = f.Sold.ToString();
                lblPrice.Text = f.Price.ToString();
                lblDescription.Text = f.Description.ToString();
                lblUnit.Text = f.Unit.ToString();
                imgReview.ImageUrl = "images/" + f.Img;
                hlZoom.NavigateUrl = "images/" + f.Img;

                List<Food> fLates = f.getList(f.Type);
                //trường hợp lớn hơn 4 item thì remove các item còn lại
                for (int i = 0; i < fLates.Count; i++)
                {
                    if (i == 0 || i >= 4)
                    {
                        fLates.RemoveAt(i);
                    }
                }
                rptRelated.DataSource = fLates;
                rptRelated.DataBind();
            }
            else
            {
                Response.Redirect("shop.aspx");
            }
        }
    }
}