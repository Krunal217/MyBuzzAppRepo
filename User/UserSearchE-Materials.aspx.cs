using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm12 : System.Web.UI.Page
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
            drpcategory.DataSource = PS.SelectAllCategory();
            drpcategory.DataTextField = "categoryname";
            drpcategory.DataValueField = "categoryid";
            drpcategory.DataBind();
            drpcategory.Items.Insert(0, "-- Select Category --");

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
                drpsubcategory.Items.Insert(0, "-- Select SubCategory --");
            }
            else
            {
                drpsubcategory.Items.Insert(0, "-- Select SubCategory --");
            }
        }

        public void FillSearchBook()
        {
            PS.CategoryId = Convert.ToInt16(drpcategory.SelectedItem.Value);
            PS.SubCategoryId = Convert.ToInt16(drpsubcategory.SelectedItem.Value);
            repeatersearchbook.DataSource = PS.SearchEBook(PS);
            repeatersearchbook.DataBind();
        }

        protected void drpcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDrpSubCategory();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            FillSearchBook();
        }

        protected void repeatersearchbook_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }
    }
}