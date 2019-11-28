using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class ThemSanPham : System.Web.UI.Page
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
        }

        protected void Btn_Them_Click(object sender, EventArgs e)
        {
            //if (Convert.ToInt32(ddl_user.SelectedValue) < 0)
            //{
            //    Response.Write("<script>alert('Bạn Chưa chọn user') </script>");
            //    return;
            //}
            //if (Convert.ToInt32(ddl_status.SelectedValue) < 0)
            //{
            //    Response.Write("<script>alert('Bạn Chưa chọn status') </script>");
            //    return;
            //}

            Food f = new Food();
            //nếu trả về false là chưa tồn tại
            if (!f.exist(txtName.Text))
            {
                f.Name = txtName.Text;
                f.Type = Convert.ToInt32(ddListType.SelectedValue);
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
    }
}