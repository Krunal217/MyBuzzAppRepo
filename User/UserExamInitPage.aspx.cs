using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm8 : System.Web.UI.Page
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
            drpcategory.DataSource = PS.ShowCategory();
            drpcategory.DataTextField = "categoryname";
            drpcategory.DataValueField = "categoryid";
            drpcategory.DataBind();
            ListItem li = new ListItem();
            li.Text = "-- Select Category --";
            li.Value = "0";
            drpcategory.Items.Insert(0, li);
        }

        protected void drpcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpcategory.SelectedItem.Value != "0")
            {
                Session["ExamData"] = PS.GetQuestionByCat(Convert.ToInt16(drpcategory.SelectedItem.Value));
                btnexam.Enabled = true;
            }
            else
            {
                btnexam.Enabled = false;
            }
        }

        protected void btnexam_Click(object sender, EventArgs e)
        {

        }
    }
}