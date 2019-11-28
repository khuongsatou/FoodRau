using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class SuaSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if (Request.QueryString["id"] != null)
                {

                    string hash = Request.QueryString["id"];
                    int id =Convert.ToInt32(HttpUtility.UrlDecode(hash));
                    Food fo = new Food();
                    if (fo.exist(id))
                    {
                        Food f = fo.getItem(id);
                        txtName.Text =f.Name;
                        selectedDropDown(f.Type);
                        //ddl_user.SelectedValue = m.Role.ToString();
                        //ddl_status.SelectedValue = m.Status.ToString();
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
            ddListType.SelectedValue =value.ToString();
        }

        protected void Btn_update_Click(object sender, EventArgs e)
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

            Food fo = new Food();
            //nếu trả về false là chưa tồn tại
            if (!fo.exist(txtName.Text))
            {
                if (Request.QueryString["id"] != null)
                {

                    string hash = Request.QueryString["id"];
                    int id = Convert.ToInt32(HttpUtility.UrlDecode(hash));

                    fo.Id = id;
                    fo.Name = txtName.Text;
                    fo.Type = Convert.ToInt32(ddListType.SelectedValue);
                    //thêm vào trả về số dòng tác động , thành công 1(true) , thất bại 0(false)
                    if (fo.update())
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