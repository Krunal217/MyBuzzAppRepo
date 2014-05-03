using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/Visitors/VisitorHome.aspx");
            }
        }

        protected void lnkbtnartscollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ArtsCollage");
        }

        protected void lnkbtncommerce_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=CommerceCollage");
        }

        protected void lnkbtnsciencecollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ScienceCollage");
        }

        protected void lnkbtnanimation_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=AnimationCollage");
        }

        protected void lnkbtnarchitecture_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ArchitectureCollage");
        }

        protected void lnkbtnengineering_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=EngineeringCollage");
        }

        protected void lnkbtnbanking_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=BankingCollage");
        }

        protected void lnkbtncomputer_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ComputerCollage");
        }

        protected void lnkbtnhotelmanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=HotelCollage");
        }

        protected void lnkbtnbusiness_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=BusinessCollage");
        }

        protected void lnkbtnmedical_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=MedicalCollage");
        }

        protected void lnkbtntravel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=TravelCollage");
        }
    }
}