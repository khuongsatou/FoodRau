using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class food_type : System.Web.UI.Page
    {
        private bool isEnable = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] != null)
            //{
            //    Response.Redirect("~");
            //}
            if (!Page.IsPostBack)
            {
                resetList();
                CheckEnable();
            }
        }

        public void CheckEnable()
        {
            btnThem.Enabled = !isEnable;
            btnCapNhat.Enabled = isEnable;
            btnHuy.Enabled = isEnable;

            txtName.Enabled = !isEnable;
        }

        protected void Btn_cancel_Click(object sender, EventArgs e)
        {
            txtName.Enabled = isEnable;
            txtName.Text = "";
            txtPost.Text = "";
            //img....
            ddlStatus.SelectedIndex = -1;
            this.isEnable = false;
            CheckEnable();
            resetList();
        }


        protected void BtnThem_Click(object sender, EventArgs e)
        {
            FoodType ft = new FoodType();
            if (!ft.exist(txtName.Text))
            {
                ft.Type_name = txtName.Text;
                ft.Type_post = Convert.ToInt32(txtPost.Text);
                ft.Type_img = "1.jpg";
                ft.Username = "khuong";
                if (ft.add())
                {
                    Btn_cancel_Click(sender, e);
                    resetList();
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
        protected void BtnCapNhat_Click(object sender, EventArgs e)
        {
            FoodType ft = new FoodType();
            ft.Type_name = txtName.Text;
            ft.Type_post = Convert.ToInt32(txtPost.Text);
            ft.Type_img = "1.jpg";
            ft.Username = "khuong";
            if (ft.update())
            {
                Btn_cancel_Click(sender, e);
                Response.Write("<script>alert('Thành Công') </script>");
                resetList();
            }
            else
            {
                Response.Write("<script>alert('Thất Bại') </script>");
            }



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
                    ddlStatus.SelectedValue = f.Status.ToString();
                    this.isEnable = true;
                    CheckEnable();
                }
                else
                {
                    Response.Write("<script>alert('Chưa Tồn Tại') </script>");
                }
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