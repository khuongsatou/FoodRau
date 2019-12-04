using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_click(object sender, EventArgs e)
        {
            if (TextBox1.Text =="1")
            {
                
                Response.Write("");
            }


        }



        
    }
}