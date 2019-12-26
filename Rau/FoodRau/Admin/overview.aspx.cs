using FoodRau.HttpCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class overview : System.Web.UI.Page
    {
        public static int LIMIT_ADMIN = 5;
        public static int LIMIT_HOME = 5;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Setting obj = new Setting();
                List<Setting> objs = obj.getList();

                LIMIT_ADMIN = Convert.ToInt32(objs[0].Value);
                hfIDRecordAdmin.Value = objs[0].IdSetting.ToString();
                hfNameAdmin.Value = objs[0].Name.ToString();
                lblDesAdmin.Text = objs[0].Des.ToString();
                txtRecordAdmin.Text = LIMIT_ADMIN.ToString();

                LIMIT_HOME = Convert.ToInt32(objs[1].Value);
                hfIDRecordHome.Value = objs[1].IdSetting.ToString();
                hfNameHome.Value = objs[1].Name.ToString();
                lblDesHome.Text = objs[1].Des.ToString();
                txtRecordHome.Text =  LIMIT_HOME.ToString();
            }
        }

        protected void BtnSave_Click1(object sender, EventArgs e)
        {
            LIMIT_ADMIN =Convert.ToInt32(txtRecordAdmin.Text);
            Setting obj = new Setting();
            obj.IdSetting = Convert.ToInt32(hfIDRecordAdmin.Value);
            obj.Name = hfNameAdmin.Value;
            obj.Value = txtRecordAdmin.Text;
            obj.Des = lblDesAdmin.Text;
            if (obj.update())
            {
                lblMessage.Text = "Cập Nhật Thành Công";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            }
        }

        protected void BtnSave_Click2(object sender, EventArgs e)
        {
            LIMIT_HOME = Convert.ToInt32(txtRecordHome.Text);
            Setting obj = new Setting();
            obj.IdSetting = Convert.ToInt32(hfIDRecordHome.Value);
            obj.Name = hfNameHome.Value;
            obj.Des = lblDesHome.Text;
            obj.Value = txtRecordHome.Text;
            if (obj.update())
            {
                lblMessage.Text = "Cập Nhật Thành Công";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            }
        }
    }
}