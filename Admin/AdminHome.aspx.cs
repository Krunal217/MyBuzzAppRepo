using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/Visitors/VisitorHome.aspx");
            }
        }
    }
}