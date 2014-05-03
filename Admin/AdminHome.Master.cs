using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class AdminHome : System.Web.UI.MasterPage
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                imgphoto.ImageUrl = Session["UserPhoto"].ToString();
                lblname.Text = Session["UserName"].ToString();
            }
        }

        protected void lnkbtnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Visitors/VisitorHome.aspx");
        }
    }
}