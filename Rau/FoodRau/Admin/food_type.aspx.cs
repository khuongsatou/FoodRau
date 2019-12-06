using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.Services;
namespace FoodRau.Admin
{
    public partial class food_type : System.Web.UI.Page
    {
        private bool isEnable = false;
        private string hash = Guid.NewGuid().ToString();
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

        protected void BtnUpImg_Click(object sender, EventArgs e)
        {
            lblThongBao.Text = "";
            if (fuImg.HasFile)
            {
                string extension = Path.GetExtension(fuImg.FileName);
                if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                {
                    //Lấy đường dẫn project server
                    //tại sao lại có \\ thì đường dẫn nó có đạng C:\\FoodRau\\...
                    string path = Server.MapPath("img\\");
                    string imgName = hash + fuImg.FileName;
                    fuImg.SaveAs(path + imgName);
                    imgReview.ImageUrl = "~/Admin/img/" + imgName;
                    txtSaveNameImg.Text = imgName;
                    
                    lblThongBao.Text = "Saved";
                    lblThongBao.ForeColor = Color.Blue;
                }
                else
                {
                    lblThongBao.Text = "Hình ảnh phải là .jpg || .png || .gif";
                    lblThongBao.ForeColor = Color.Red;
                }
            }
            else
            {
                lblThongBao.Text = "Tìm 1 file mà chọn";
                lblThongBao.ForeColor = Color.Red;
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
            txtSaveNameImg.Text = "";
            lblThongBao.Text = "";
            imgReview.ImageUrl = "~/Admin/img/10.jpg";
            //img....
            ddlStatus.SelectedIndex = -1;
            this.isEnable = false;
            CheckEnable();
            resetList();
        }


        protected void BtnThem_Click(object sender, EventArgs e)
        {
            if (txtSaveNameImg.Text == "")
            {
                lblThongBao.Text = "Bạn Chưa Upload Ảnh";
                lblThongBao.ForeColor = Color.Red;
                return;
            }
            FoodType ft = new FoodType();
            if (!ft.exist(txtName.Text))
            {
                
                ft.Type_name = txtName.Text;
                ft.Type_post = Convert.ToInt32(txtPost.Text);
                ft.Type_img = txtSaveNameImg.Text;
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
            ft.Type_img = txtSaveNameImg.Text;
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
                    txtSaveNameImg.Text = f.Type_img;
                    imgReview.ImageUrl = "~/Admin/img/" + f.Type_img.ToString();
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
            //FoodType ft = new FoodType();
            //rptDSLoaiSP.DataSource = ft.getList();
            //rptDSLoaiSP.DataBind();
        }

        [WebMethod]
        public static FoodType[] SelectAll()
        {
            FoodType ft = new FoodType();
            return ft.getList().ToArray();
        }

        [WebMethod]
        public static FoodType[] InsertObject(string type_name, string type_post, string status)
        {
            FoodType ft = new FoodType();
            ft.Type_name = type_name;
            ft.Type_post = Convert.ToInt32(type_post);
            ft.Type_img = "21";
            ft.Status = Convert.ToInt32(status);
            ft.Username = "khuong";
            bool exist = ft.add();
            return ft.getList().ToArray();
        }

        [WebMethod]
        public static string UploadImageFood(string fileName)
        {
            //string hashCode = Guid.NewGuid().ToString();
            //string path = HttpContext.Current.Server.MapPath("icon\\");
            //string imgName = hashCode + fileName;
            //string[] files = System.IO.Directory.GetFiles(path);

            //upload.SaveAs(path + imgName);
            return "success";
        }

        [WebMethod]
        public static FoodType[] Search(string type_name)
        {
            FoodType ft = new FoodType();
            return ft.search(type_name).ToArray();
        }

        

    }
}