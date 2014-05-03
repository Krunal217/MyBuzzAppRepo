using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridRegistration();
            }
            if (Session["UserID"] == null)
            {
                Response.Redirect("~/Visitors/VisitorHome.aspx");
            }
        }

        public void FillGridRegistration()
        {
            gridviewregistration.DataSource = PS.SelectAllRegistration();
            gridviewregistration.DataBind();
        }

        protected void gridviewregistration_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Session["Data"] = e.CommandArgument.ToString();
                FillUserDetails();
                ModalPopupExtender1.Show();
                //Response.Redirect("../Admin/AdminUserDetail.aspx?UserID=" + e.CommandArgument);
            }

            if (e.CommandName == "True")
            {
                PS.IsActiveUser(Convert.ToInt16(e.CommandArgument));
                FillGridRegistration();
            }

            if (e.CommandName == "False")
            {
                PS.BlockUser(Convert.ToInt16(e.CommandArgument));
                FillGridRegistration();
            }
            FillGridRegistration();
        }

        private void FillUserDetails()
        {
            datalistuserdetail.DataSource = PS.UserProfile(Convert.ToInt16(Session["Data"].ToString()));
            datalistuserdetail.DataBind();
        }
        protected void gridviewregistration_DataBound(object sender, EventArgs e)
        {
            for (int i = 0; i < gridviewregistration.Rows.Count; i++)
            {
                LinkButton lnkbtnstatus = (LinkButton)gridviewregistration.Rows[i].FindControl("LinkButton1");
                if (lnkbtnstatus.Text == "True" || lnkbtnstatus.Text == "true")
                {
                    lnkbtnstatus.CommandName = "False";
                    lnkbtnstatus.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lnkbtnstatus.CommandName = "True";
                    lnkbtnstatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void gridviewregistration_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewregistration.PageIndex = e.NewPageIndex;
            FillGridRegistration();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {

        }
    }
}