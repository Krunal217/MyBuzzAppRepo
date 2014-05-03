using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();

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



        public void FillListExamination()
        {
            PS.CategoryId = Convert.ToInt16(drpcategory.SelectedItem.Value);
            repeatersearchexamination.DataSource = PS.SearchExamination(PS);
            repeatersearchexamination.DataBind();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            FillListExamination();
        }
    }
}