using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Button2_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "I am called";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
        }
    }
}