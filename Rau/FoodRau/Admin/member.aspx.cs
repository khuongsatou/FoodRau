using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class member : System.Web.UI.Page
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
            btn_register.Enabled = !isEnable;
            btn_update.Enabled = isEnable;
            btn_cancel.Enabled = isEnable;
        }


        protected void Btn_cancel_Click(object sender, EventArgs e)
        {
            txtUserName.Enabled = true;
            txtUserName.Text ="";
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddl_user.SelectedIndex = -1;
            ddl_status.SelectedIndex = -1;
            this.isEnable = false;
            CheckEnable();
            resetList();
        }

        protected void Btn_update_Click(object sender, EventArgs e)
        {
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
                    Btn_cancel_Click(sender, e);
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



        protected void Btn_register_Click(object sender, EventArgs e)
        {
            Member member = new Member();
            if (!member.exist(txtUserName.Text))
            {
                member.UserName = txtUserName.Text;
                member.Name = txtName.Text;
                member.Pass = txtPassword.Text;
                member.Email = txtEmail.Text;
                member.Phone = txtPhone.Text;
                member.Role = Convert.ToInt32(ddl_user.SelectedValue);
                member.Status = Convert.ToInt32(ddl_status.SelectedValue);
                if (member.add())
                {
                    Btn_cancel_Click(sender, e);
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


        private void resetList()
        {
            Member member = new Member();
            rptDSThanhVien.DataSource = member.getList();
            rptDSThanhVien.DataBind();
        }

        protected void rptDSThanhVien_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "c")
            {
                string username = e.CommandArgument.ToString();
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
                Member member = new Member();
                member.UserName = e.CommandArgument.ToString();
                if (member.delete())
                {
                    //in ra hộp thoại thông báo.
                    Response.Write("<script>alert('Thành Công') </script>");
                }
                else
                {
                    Response.Write("<script>alert('Thất Bại') </script>");
                }
                resetList();
            }
        }

    }
}