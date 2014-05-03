using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillUserDetails();
            }
        }

        public void FillUserDetails()
        {
            datalistuserdetail.DataSource = PS.UserProfile(Convert.ToInt16(Request.QueryString["UserID"].ToString()));
            datalistuserdetail.DataBind();
        }
    }
}