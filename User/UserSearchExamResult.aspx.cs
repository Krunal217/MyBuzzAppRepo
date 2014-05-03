using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm14 : System.Web.UI.Page
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
            drpexamresult.DataSource = PS.ShowExamination();
            drpexamresult.DataTextField = "examname";
            drpexamresult.DataValueField = "examid";
            drpexamresult.DataBind();
            drpexamresult.Items.Insert(0, "-- Select Category --");
        }

        public void FillListExamination()
        {
            PS.ExamId = Convert.ToInt16(drpexamresult.SelectedItem.Value);
            repeatersearchexamresult.DataSource = PS.SearchExamResult(PS);
            repeatersearchexamresult.DataBind();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            FillListExamination();
        }

        protected void repeatersearchexamresult_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ExamResult")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }
    }
}