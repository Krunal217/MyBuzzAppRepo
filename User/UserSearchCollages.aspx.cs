using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();
                FillDrpCity();
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

        public void FillDrpCity()
        {
            drpstate.DataSource = PS.ShowStateIndia();
            drpstate.DataTextField = "statename";
            drpstate.DataValueField = "stateid";
            drpstate.DataBind();
            drpstate.Items.Insert(0, "-- Select State --");
        }

        public void FillListCollage()
        {
            PS.CategoryId = Convert.ToInt16(drpcategory.SelectedItem.Value);
            PS.StateName = drpstate.SelectedItem.Text;
            repeatersearchcollage.DataSource = PS.SearchCollages(PS);
            repeatersearchcollage.DataBind();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            FillListCollage();
        }

        protected void repeatersearchcollage_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }
    }
}