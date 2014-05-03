using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();
                FillGridExamination();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtexamname.Text = string.Empty;
            txtexamdate.Text = string.Empty;
            txtexamdetail.Text = string.Empty;
            Drpcategory.ClearSelection();
            ListItem li = new ListItem();
            li.Text = "-- Select --";
            li.Value = "0";
            Drpcategory.Items.Insert(0, li);
        }

        public void FillDrpCategory()
        {
            Drpcategory.DataSource = PS.ShowCategory();
            Drpcategory.DataTextField = "categoryname";
            Drpcategory.DataValueField = "categoryid";
            Drpcategory.DataBind();
        }

        public void FillGridExamination()
        {
            gridviewexamination.DataSource = PS.SelectAllExamination();
            gridviewexamination.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.ExamName = txtexamname.Text;
            PS.ExamDate = Convert.ToDateTime(txtexamdate.Text);
            PS.ExamDetail = txtexamdetail.Text;
            PS.CategoryId = Convert.ToInt16(Drpcategory.SelectedItem.Value);
            PS.InsertExamination(PS);
            FillGridExamination();
            txtcl();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            FillGridExamination();
            txtcl();
        }

        protected void gridviewexamination_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label Lblcategory = (Label)gridviewexamination.Rows[e.NewEditIndex].FindControl("Label1");

            gridviewexamination.EditIndex = e.NewEditIndex;
            FillGridExamination();


            DropDownList DrpCategory = (DropDownList)gridviewexamination.Rows[e.NewEditIndex].FindControl("DropDownList1");
            DrpCategory.DataSource = PS.ShowCategory();
            DrpCategory.DataTextField = "categoryname";
            DrpCategory.DataValueField = "categoryid";
            DrpCategory.DataBind();

            foreach (ListItem li in DrpCategory.Items)
            {
                if (li.Text == Lblcategory.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void gridviewexamination_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewexamination.EditIndex = -1;
            FillGridExamination();
        }

        protected void gridviewexamination_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewexamination.PageIndex = e.NewPageIndex;
            FillGridExamination();
        }

        protected void gridviewexamination_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            PS.ExamId = Convert.ToInt16(gridviewexamination.DataKeys[e.RowIndex].Value);
            PS.ExamName = ((TextBox)gridviewexamination.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.ExamDetail = ((TextBox)gridviewexamination.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            PS.CategoryId = Convert.ToInt16(((DropDownList)gridviewexamination.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
            PS.UpdateExamination(PS);
            gridviewexamination.EditIndex = -1;
            FillGridExamination();
        }

        protected void gridviewexamination_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ExamResult")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
            if (e.CommandName == "Delete")
            {
                CheckBox ChkAll = (CheckBox)gridviewexamination.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllExamination();
                }
                else
                {
                    for (int i = 0; i < gridviewexamination.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewexamination.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.ExamId = Convert.ToInt16(gridviewexamination.DataKeys[i].Value);
                            PS.DeleteExamination(PS);
                        }
                    }
                }
                FillGridExamination();
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewexamination.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewexamination.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewexamination.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewexamination.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewexamination.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }
    }
}