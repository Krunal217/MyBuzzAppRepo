using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCollages();
            }
        }

        public void FillDrpCollages()
        {
            drpcollages.DataSource = PS.SelectAllCollage();
            drpcollages.DataTextField = "collagename";
            drpcollages.DataValueField = "collageid";
            drpcollages.DataBind();
            drpcollages.Items.Insert(0, "--Select--");
        }

        public void FillDataCollages()
        {
            PS.CollageId = Convert.ToInt16(drpcollages.SelectedItem.Value);
            datalistcollages.DataSource = PS.SearchCollages(PS);
            datalistcollages.DataBind();
        }

        protected void drpcollages_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDataCollages();
        }
    }
}