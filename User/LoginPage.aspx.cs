using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            PS.Email = txtuname.Text;
            PS.Password = txtpassword.Text;
            if ((PS.UserLogInData(PS)).Rows.Count > 0)
            {
                Session["UserName"] = (PS.UserLogInData(PS).Rows[0]["username"].ToString());
                Session["UserID"] = (PS.UserLogInData(PS).Rows[0]["userid"].ToString());
                Session["UserPhoto"] = (PS.UserLogInData(PS).Rows[0]["photos"].ToString());
                if (Session["UserName"].ToString() == "Admin 1")
                {
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("~/User/UserHome.aspx");
                }
            }
            else
            {

                Response.Write("<script>alert('Please Enter Correct UserName & Password');</script>");
            }
        }
    }
}