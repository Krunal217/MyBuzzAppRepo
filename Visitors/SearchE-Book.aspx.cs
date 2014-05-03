using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Visitors
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();
                FillDrpSubCategory();
            }
        }

        public void FillDrpCategory()
        {
            drpcategory.DataSource = PS.ShowCategory();
            drpcategory.DataTextField = "categoryname";
            drpcategory.DataValueField = "categoryid";
            drpcategory.DataBind();
            ListItem li = new ListItem();
            li.Text = "-- Select Category --";
            li.Value = "0";
            drpcategory.Items.Insert(0, li);
        }

        public void FillDrpSubCategory()
        {
            if (drpcategory.SelectedIndex != 0)
            {
                PS.CategoryId = Convert.ToInt16(drpcategory.SelectedItem.Value);
                drpsubcategory.DataSource = PS.ShowSubCategory(PS);
                drpsubcategory.DataTextField = "subcategoryname";
                drpsubcategory.DataValueField = "subcategoryid";
                drpsubcategory.DataBind();
                ListItem li = new ListItem();
                li.Text = "-- Select Category --";
                li.Value = "0";
                drpsubcategory.Items.Insert(0, li);
            }
            else
            {
                ListItem li = new ListItem();
                li.Text = "-- Select Sub Category --";
                li.Value = "0";
                drpsubcategory.Items.Insert(0, li);
            }
        }

        protected void drpcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDrpSubCategory();
        }

        public void FillSearchBook()
        {
            PS.CategoryId = Convert.ToInt16(drpcategory.SelectedItem.Value);
            PS.SubCategoryId = Convert.ToInt16(drpsubcategory.SelectedItem.Value);
            repeaterebook.DataSource = PS.SearchEBook(PS);
            repeaterebook.DataBind();
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            FillSearchBook();
        }

        protected void repeaterebook_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void lnkbtnartscollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArtsCollage");
        }

        protected void lnkbtncommerce_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=CommerceCollage");
        }

        protected void lnkbtnsciencecollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ScienceCollage");
        }

        protected void lnkbtnanimation_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=AnimationCollage");
        }

        protected void lnkbtnarchitecture_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArchitectureCollage");
        }

        protected void lnkbtnengineering_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=EngineeringCollage");
        }

        protected void lnkbtnbanking_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BankingCollage");
        }

        protected void lnkbtncomputer_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ComputerCollage");
        }

        protected void lnkbtnhotelmanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=HotelCollage");
        }

        protected void lnkbtnbusiness_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BusinessCollage");
        }

        protected void lnkbtnmedical_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=MedicalCollage");
        }

        protected void lnkbtntravel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=TravelCollage");
        }
    }
}