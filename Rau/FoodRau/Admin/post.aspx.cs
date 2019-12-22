using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodRau.Admin
{
    public partial class post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected override void OnLoad(EventArgs e)
        {
            CKFinder.FileBrowser _f = new CKFinder.FileBrowser();
            _f.BasePath = "ckfinder";
            _f.SetupCKEditor(CKEditorControl1);
        }
    }
}