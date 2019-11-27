using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class DSLoaiSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                resetList();
            }
        }

        protected void BtnThem_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlStatus.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn status') </script>");
                return;
            }
            FoodType ft = new FoodType();

            //nếu trả về false là chưa tồn tại
            if (!ft.exist(txtName.Text))
            {
                ft.Type_name = txtName.Text;
                ft.Type_post = Convert.ToInt32(txtPost.Text);
                ft.Type_img = "1";
                ft.Username = "ca";
                ft.Modified = DateTime.Now;
                if (ft.add())
                {
                    //in ra hộp thoại thông báo.
                    Response.Write("<script>alert('Thành Công') </script>");
                    resetList();
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
        protected void BtnSua_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlStatus.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn status') </script>");
                return;
            }
            FoodType ft = new FoodType();
            ft.Type_name = txtName.Text;
            ft.Type_post = Convert.ToInt32(txtPost.Text);
            ft.Type_img = "1";
            ft.Username = "ca";
            ft.Modified = DateTime.Now;
            //nếu trả về false là chưa tồn tại
            if (ft.update())
            {
                txtName.Text = String.Empty;
                txtPost.Text = String.Empty;
                txtName.Enabled = true;
                //in ra hộp thoại thông báo.
                Response.Write("<script>alert('Thành Công') </script>");
                resetList();
            }
            else
            {
                Response.Write("<script>alert('Thất Bại') </script>");
            }



        }

        protected void BtnHuy_Click(object sender, EventArgs e)
        {
            txtName.Text = String.Empty;
            txtPost.Text = String.Empty;
            ddlStatus.SelectedValue = "-1";
        }

        protected void rptDSLoaiSP_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "c")
            {
                int type_id = Convert.ToInt32(e.CommandArgument.ToString());
                FoodType ft = new FoodType();
                if (ft.exist(type_id))
                {
                    FoodType f = ft.getItem(type_id);
                    txtName.Text = f.Type_name;
                    txtPost.Text = f.Type_post.ToString();
                    txtName.Enabled = false;
                }
                else
                {
                    Response.Write("<script>alert('Chưa Tồn Tại') </script>");
                }
                resetList();
            }

            if (e.CommandName == "x")
            {
                string type_id = e.CommandArgument.ToString();
                FoodType ft = new FoodType();
                ft.Type_id = Convert.ToInt32(type_id);
                if (ft.delete())
                {
                    Response.Write("<script>alert('Thành Công') </script>");
                    resetList();
                }
                else
                {
                    Response.Write("<script>alert('Thất Bại') </script>");
                }
            }
        }



        private void resetList()
        {
            FoodType ft = new FoodType();
            rptDSLoaiSP.DataSource = ft.getList();
            rptDSLoaiSP.DataBind();
        }


    }
}