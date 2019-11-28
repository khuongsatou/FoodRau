using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] !=null)
            {
                Response.Redirect("~");
            }
        }

        protected void Btn_register_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddl_user.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn user') </script>");
                return;
            }
            if (Convert.ToInt32(ddl_status.SelectedValue) < 0)
            {
                Response.Write("<script>alert('Bạn Chưa chọn status') </script>");
                return;
            }

            Member member = new Member();
            //nếu trả về false là chưa tồn tại
            if (!member.exist(txtUserName.Text))
            {
                member.UserName = txtUserName.Text;
                member.Name = txtName.Text;
                member.Pass = txtPassword.Text;
                member.Email = txtEmail.Text;
                member.Phone = txtPhone.Text;
                member.Role = Convert.ToInt32(ddl_user.SelectedValue);
                member.Status = Convert.ToInt32(ddl_status.SelectedValue);
                //thêm vào trả về số dòng tác động , thành công 1(true) , thất bại 0(false)
                if (member.add())
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
    }
}