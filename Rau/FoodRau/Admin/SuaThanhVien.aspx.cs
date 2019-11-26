using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class SuaThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetPlaceHolder();
                if (Request.QueryString["username"] != null)
                {
                    
                    string hash = Request.QueryString["username"];
                    string username = HttpUtility.UrlDecode(hash);
                    Member mb = new Member();
                    if (mb.exist(username))
                    {
                        Member m = mb.getItem(username);
                        txtUserName.Enabled = false;
                        txtUserName.Text = m.UserName;
                        txtName.Text = m.Name;
                        txtEmail.Text = m.Email;
                        txtPhone.Text = m.Phone;
                        ddl_user.SelectedValue = m.Role.ToString();
                        ddl_status.SelectedValue = m.Status.ToString();
                    }

                }
                else
                {
                    lblShow.Text = "NULL USERNAME";
                }
            }
        }


        protected void Btn_update_Click(object sender, EventArgs e)
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
            if (member.exist(txtUserName.Text))
            {
                member.UserName = txtUserName.Text;
                member.Name = txtName.Text;
                member.Pass = txtPassword.Text;
                member.Email = txtEmail.Text;
                member.Phone = txtPhone.Text;
                member.Role = Convert.ToInt32(ddl_user.SelectedValue);
                member.Status = Convert.ToInt32(ddl_status.SelectedValue);
                //thêm vào trả về số dòng tác động , thành công 1(true) , thất bại 0(false)
                if (member.update())
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
                Response.Write("<script>alert('Không tồn Tại') </script>");
            }
        }

        private void SetPlaceHolder()
        {
            txtUserName.Attributes.Add("placeholder", "username");
            txtName.Attributes.Add("placeholder", "name");
            txtPassword.Attributes.Add("placeholder", "password");
            txtRepass.Attributes.Add("placeholder", "repass");
            txtEmail.Attributes.Add("placeholder", "email");
            txtPhone.Attributes.Add("placeholder", "phone");
        }

    }
}