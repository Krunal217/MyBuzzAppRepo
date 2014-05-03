using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EBuzz_Cloud.User
{
    public partial class UserStartExam : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();
        static int C = 1;
        static bool aaa = false;
        static int CategoryID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetQuestions();
                C = 1;
                lblRemainTime.Text = DateTime.Now.ToShortTimeString();

                if (aaa)
                {
                    if (ScriptManager1.IsInAsyncPostBack)
                    {
                        Session["timeout"] = DateTime.Now.AddMinutes(120).ToString();
                    }
                }

                if (!aaa)
                {
                    if (!ScriptManager1.IsInAsyncPostBack)
                    {
                        Session["timeout"] = DateTime.Now.AddMinutes(120).ToString();
                        aaa = true;
                    }
                }
            }
        }

        public void GetQuestions()
        {
            if (Session["ExamData"] != null)
            {
                ExamData.DataSource = (DataTable)Session["ExamData"];
                ExamData.DataBind();
                CategoryID = Convert.ToInt16(((DataTable)Session["ExamData"]).Rows[0]["fkcategoryid"].ToString());
            }
            else
            {
                Response.Redirect("~/User (Student)/UserExamInitPage.aspx");
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblRemainTime.Text = string.Format("{0}:{1}:{2}", ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Hours).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Minutes).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());
        }

        protected void ExamData_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            for (int i = 0; i < ExamData.Items.Count; i++)
            {
                Label lblQCounter = (Label)ExamData.Items[i].FindControl("lblQCounter");
                if (lblQCounter.Text == "")
                {
                    lblQCounter.Text = C.ToString();
                    C++;
                }
            }
        }

        protected void ExamData_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "SubmitExam")
            {
                ViewState["M"] = 0;
                for (int i = 0; i < ExamData.Items.Count; i++)
                {
                    RadioButton rdoOpA = (RadioButton)ExamData.Items[i].FindControl("rdoA");
                    RadioButton rdoOpB = (RadioButton)ExamData.Items[i].FindControl("rdoB");
                    RadioButton rdoOpC = (RadioButton)ExamData.Items[i].FindControl("rdoC");
                    RadioButton rdoOpD = (RadioButton)ExamData.Items[i].FindControl("rdoD");
                    HiddenField hdQid = (HiddenField)ExamData.Items[i].FindControl("hdQid");
                    Label hdAns = (Label)ExamData.Items[i].FindControl("lblCAns");
                    if (rdoOpA.Checked)
                    {
                        PS.GivenAnswer = "Option A";
                    }
                    else if (rdoOpB.Checked)
                    {
                        PS.GivenAnswer = "Option B";
                    }
                    else if (rdoOpC.Checked)
                    {
                        PS.GivenAnswer = "Option C";
                    }
                    else if (rdoOpD.Checked)
                    {
                        PS.GivenAnswer = "Option D";
                    }
                    else
                    {
                        PS.GivenAnswer = "NA";
                    }

                    if (PS.GivenAnswer == hdAns.Text)
                    {
                        ViewState["M"] = Convert.ToInt16(ViewState["M"].ToString()) + 1;
                    }
                }

            }
            Session.Remove("timeout");
            Panel1.Controls.Clear();
            Label lblMessage = new Label();
            LinkButton lnkCloseWindow = new LinkButton();

            lblMessage.Attributes.Add("style", "color:Red;font-weight:bold;font-size:xx-large;");
            lnkCloseWindow.Attributes.Add("style", "text-decoration:none;color:Black;font-family:Verdana;font-size:large;");

            lblMessage.Text = "<br><br>Congratulations <span style='text-transform:capitalize;'>" + Session["UserName"].ToString() + "</span><br><br>Your Marks are<br><h1><font color='blue' style='text-decoration:blink;'>" + Convert.ToInt16(ViewState["M"].ToString()) + "</font></h1>";
            lnkCloseWindow.Text = "Click here to Close Window.!!";
            lnkCloseWindow.Attributes.Add("onclick", "window.close();");
            Panel1.Controls.Add(lblMessage);
            Panel1.Controls.Add(lnkCloseWindow);

            Panel1.HorizontalAlign = HorizontalAlign.Center;
            PS.StudentName = Session["UserName"].ToString();
            PS.CategoryId = CategoryID;
            PS.Marks = Convert.ToInt16(ViewState["M"].ToString());
            PS.SubmitStudentStuff(PS);
        }
    }
}