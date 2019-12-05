using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
namespace FoodRau.Admin
{
    public partial class food : System.Web.UI.Page
    {
        private string hash = Guid.NewGuid().ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                btnUpdate.Visible = false;
                btnThem.Visible = false;
                resetDropDownType();
                if (Request.QueryString["id"] != null)
                {
                    btnUpdate.Visible = true;
                    string hash = Request.QueryString["id"];
                    int id = Convert.ToInt32(HttpUtility.UrlDecode(hash));
                    Food fo = new Food();
                    if (fo.exist(id))
                    {
                        Food f = fo.getItem(id);
                        txtName.Text = f.Name;
                        txtDescription.Text = f.Description;
                        txtPrice.Text = f.Price.ToString();
                        txtPrice_promo.Text = f.Price_promo.ToString();
                        txtUnit.Text = f.Unit.ToString();
                        txtPercent_Promo.Text = f.Percent_promo.ToString();
                        txtRating.Text = f.Rating.ToString();
                        txtPoint.Text = f.Point.ToString();
                        txtSaveImage.Text = f.Img;
                        txtSaveThumb.Text = f.Thumb;
                        imgImage.ImageUrl = "~/Admin/img/" + f.Img;
                        imgThumb.ImageUrl = "~/Admin/img/" + f.Thumb;
                        ddl_status.SelectedValue = f.Status.ToString();
                        selectedDropDown(f.Type);

                    }

                }
                else
                {
                    btnThem.Visible = true;
                }

            }

        }

        private void resetDropDownType()
        {
            FoodType ft = new FoodType();
            ddListType.DataSource = ft.getList();
            ddListType.DataTextField = "type_name";
            ddListType.DataValueField = "type_id";
            ddListType.DataBind();
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
            Food f = new Food();
            //nếu trả về false là chưa tồn tại
            if (!f.exist(txtName.Text))
            {
                f.Name = txtName.Text;
                f.Type = Convert.ToInt32(ddListType.SelectedValue);
                f.Description = txtDescription.Text;
                f.Price = Convert.ToDecimal(txtPrice.Text);
                f.Price_promo = Convert.ToDecimal(txtPrice_promo.Text);
                f.Unit = txtUnit.Text;
                f.Percent_promo = Convert.ToDecimal(txtPercent_Promo.Text);
                f.Rating = Convert.ToInt32(txtRating.Text);
                f.Point = Convert.ToDecimal(txtPoint.Text);
                f.Type = Convert.ToInt32(ddListType.SelectedValue);
                f.Status = Convert.ToInt32(ddl_status.SelectedValue);
                f.Img = txtSaveImage.Text;
                f.Thumb = txtSaveThumb.Text;
                f.Username = "khuong";
                f.Modified = DateTime.Now;
                if (f.add())
                {
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
        protected void Btn_Calc_Click(object sender, EventArgs e)
        {
            decimal price = Convert.ToDecimal(txtPrice.Text);
            decimal percent = Convert.ToDecimal(txtPercent_Promo.Text);
            //giá km = giá gốc + (giá * % khuyến mãi);
            txtPrice_promo.Text = (price + (price * percent)).ToString();
        }
        protected void BtnUpThumb_Click(object sender, EventArgs e)
        {
            lblThongBaoThumb.Text = "";
            if (fuThumb.HasFile)
            {
                string extension = Path.GetExtension(fuThumb.FileName);
                if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                {
                    //Lấy đường dẫn project server
                    //tại sao lại có \\ thì đường dẫn nó có đạng C:\\FoodRau\\...
                    string path = Server.MapPath("img\\");
                    string imgName = hash + fuThumb.FileName;
                    fuThumb.SaveAs(path + imgName);
                    imgThumb.ImageUrl = "~/Admin/img/" + imgName;
                    txtSaveThumb.Text = imgName;

                    lblThongBaoThumb.Text = "Saved";
                    lblThongBaoThumb.ForeColor = Color.Blue;
                }
                else
                {
                    lblThongBaoThumb.Text = "Hình ảnh phải là .jpg || .png || .gif";
                    lblThongBaoThumb.ForeColor = Color.Red;
                }
            }
            else
            {
                lblThongBaoThumb.Text = "Tìm 1 file mà chọn";
                lblThongBaoThumb.ForeColor = Color.Red;
            }
        }
        protected void BtnUpImage_Click(object sender, EventArgs e)
        {
            lblThongBaoImage.Text = "";
            if (fuImage.HasFile)
            {
                string extension = Path.GetExtension(fuImage.FileName);
                if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                {
                    //Lấy đường dẫn project server
                    //tại sao lại có \\ thì đường dẫn nó có đạng C:\\FoodRau\\...
                    string path = Server.MapPath("img\\");
                    string imgName = hash + fuImage.FileName;
                    fuImage.SaveAs(path + imgName);
                    imgImage.ImageUrl = "~/Admin/img/" + imgName;
                    txtSaveImage.Text = imgName;

                    lblThongBaoImage.Text = "Saved";
                    lblThongBaoImage.ForeColor = Color.Blue;
                }
                else
                {
                    lblThongBaoImage.Text = "Hình ảnh phải là .jpg || .png || .gif";
                    lblThongBaoImage.ForeColor = Color.Red;
                }
            }
            else
            {
                lblThongBaoImage.Text = "Tìm 1 file mà chọn";
                lblThongBaoImage.ForeColor = Color.Red;
            }
        }
        protected void Btn_update_Click(object sender, EventArgs e)
        {
            //xử lí thêm trường hợp tồn tại
            Food f = new Food();
            if (Request.QueryString["id"] != null)
            {
                string hash = Request.QueryString["id"];
                int id = Convert.ToInt32(HttpUtility.UrlDecode(hash));
                f.Id = id;
                f.Name = txtName.Text;
                f.Type = Convert.ToInt32(ddListType.SelectedValue);
                f.Description = txtDescription.Text;
                f.Price = Convert.ToDecimal(txtPrice.Text);
                f.Price_promo = Convert.ToDecimal(txtPrice_promo.Text);
                f.Unit = txtUnit.Text;
                f.Percent_promo = Convert.ToDecimal(txtPercent_Promo.Text);
                f.Rating = Convert.ToInt32(txtRating.Text);
                f.Point = Convert.ToDecimal(txtPoint.Text);
                f.Type = Convert.ToInt32(ddListType.SelectedValue);
                f.Status = Convert.ToInt32(ddl_status.SelectedValue);
                f.Img = txtSaveImage.Text;
                f.Thumb = txtSaveThumb.Text;
                f.Username = "khuong";
                f.Modified = DateTime.Now;
                if (f.update())
                {
                    Response.Write("<script>alert('Thành Công') </script>");
                }
                else
                {
                    Response.Write("<script>alert('Thất Bại') </script>");
                }

            }
        }


    }
}