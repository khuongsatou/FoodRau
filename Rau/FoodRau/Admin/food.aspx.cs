using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class food : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FoodType ft = new FoodType();
                ddListType.DataSource = ft.getList();
                ddListType.DataTextField = "type_name";
                ddListType.DataValueField = "type_id";
                ddListType.DataBind();

            }
            //sửa
            if (!IsPostBack)
            {

                if (Request.QueryString["id"] != null)
                {

                    string hash = Request.QueryString["id"];
                    int id = Convert.ToInt32(HttpUtility.UrlDecode(hash));
                    Food fo = new Food();
                    if (fo.exist(id))
                    {
                        Food f = fo.getItem(id);
                        txtName.Text = f.Name;

                        txtPrice.Text = f.Price.ToString();
                        txtPrice_promo.Text = f.Price_promo.ToString();
                        txtUnit.Text = f.Unit.ToString();
                        txtPercent_Promo.Text = f.Percent_promo.ToString();
                        txtRating.Text = f.Rating.ToString();
                        txtSold.Text = f.Sold.ToString();
                        txtPoint.Text = f.Point.ToString();

                        ddl_status.SelectedValue = f.Status.ToString();
                        selectedDropDown(f.Type);

                    }

                }

            }
        }

        private void selectedDropDown(int value)
        {
            FoodType ft = new FoodType();
            ddListType.DataSource = ft.getList();
            ddListType.DataTextField = "type_name";
            ddListType.DataValueField = "type_id";
            ddListType.DataBind();
            ddListType.SelectedValue = value.ToString();
        }

        protected void Btn_Them_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddListType.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn type') </script>");
                return;
            }
            if (Convert.ToInt32(ddl_status.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn status') </script>");
                return;
            }

            Food f = new Food();
            //nếu trả về false là chưa tồn tại
            if (!f.exist(txtName.Text))
            {
                f.Name = txtName.Text;
                f.Type = Convert.ToInt32(ddListType.SelectedValue);
                f.Price = Convert.ToDecimal(txtPrice.Text);
                f.Price_promo = Convert.ToDecimal(txtPrice_promo.Text);
                f.Unit = txtUnit.Text;
                f.Percent_promo = Convert.ToDecimal(txtPercent_Promo.Text);
                f.Rating = Convert.ToInt32(txtRating.Text);
                f.Sold = Convert.ToInt32(txtSold.Text);
                f.Point = Convert.ToDecimal(txtPoint.Text);
                f.Type = Convert.ToInt32(ddListType.SelectedValue);
                f.Status = Convert.ToInt32(ddl_status.SelectedValue);
                f.Username = "ca";
                f.Modified = DateTime.Now;
                //thêm vào trả về số dòng tác động , thành công 1(true) , thất bại 0(false)
                if (f.add())
                {
                    //in ra hộp thoại thông báo.
                    Response.Write("<script>alert('Thành Công') </script>");
                }
                else
                {
                    Response.Write("<script>alert('Thất Bại') </script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Tồn Tại') </script>");
            }
        }

        protected void Btn_update_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddListType.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn type') </script>");
                return;
            }
            if (Convert.ToInt32(ddl_status.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn status') </script>");
                return;
            }

            Food f = new Food();
            //nếu trả về false là chưa tồn tại
            if (!f.exist(txtName.Text))
            {
                if (Request.QueryString["id"] != null)
                {

                    string hash = Request.QueryString["id"];
                    int id = Convert.ToInt32(HttpUtility.UrlDecode(hash));

                    f.Id = id;
                    f.Name = txtName.Text;
                    f.Type = Convert.ToInt32(ddListType.SelectedValue);
                    f.Price = Convert.ToDecimal(txtPrice.Text);
                    f.Price_promo = Convert.ToDecimal(txtPrice_promo.Text);
                    f.Unit = txtUnit.Text;
                    f.Percent_promo = Convert.ToDecimal(txtPercent_Promo.Text);
                    f.Rating = Convert.ToInt32(txtRating.Text);
                    f.Sold = Convert.ToInt32(txtSold.Text);
                    f.Point = Convert.ToDecimal(txtPoint.Text);
                    f.Type = Convert.ToInt32(ddListType.SelectedValue);
                    f.Status = Convert.ToInt32(ddl_status.SelectedValue);
                    f.Username = "ca";
                    f.Modified = DateTime.Now;
                    //thêm vào trả về số dòng tác động , thành công 1(true) , thất bại 0(false)
                    if (f.update())
                    {
                        //in ra hộp thoại thông báo.
                        Response.Write("<script>alert('Thành Công') </script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Thất Bại') </script>");
                    }
                }


            }
            else
            {
                Response.Write("<script>alert('Không tồn Tại') </script>");
            }
        }
        
    }
}