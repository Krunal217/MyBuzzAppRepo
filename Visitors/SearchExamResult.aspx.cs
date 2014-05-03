using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Visitors
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpExam();
            }
        }

        public void FillDrpExam()
        {
            drpexam.DataSource = PS.ShowExamination();
            drpexam.DataTextField = "examname";
            drpexam.DataValueField = "examid";
            drpexam.DataBind();
            ListItem li = new ListItem();
            li.Text = "-- Select Exam --";
            li.Value = "0";
            drpexam.Items.Insert(0, li);
        }

        public void FillExamResult()
        {
            PS.ExamId = Convert.ToInt16(drpexam.SelectedItem.Value);
            repeaterexamresult.DataSource = PS.SearchExamResult(PS);
            repeaterexamresult.DataBind();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            FillExamResult();
        }

        protected void repeaterexamresult_ItemCommand(object source, RepeaterCommandEventArgs e)
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