using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();
                FillGridCategoryExamination();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtquestion.Text = string.Empty;
            txtoptiona.Text = string.Empty;
            txtoptionb.Text = string.Empty;
            txtoptionc.Text = string.Empty;
            txtoptiond.Text = string.Empty;
            drpcategory.ClearSelection();
            drpanswer.ClearSelection();
        }

        public void FillDrpCategory()
        {
            drpcategory.DataSource = PS.ShowCategory();
            drpcategory.DataTextField = "categoryname";
            drpcategory.DataValueField = "categoryid";
            drpcategory.DataBind();
            ListItem li = new ListItem();
            li.Text = "--Select--";
            li.Value = "0";
            drpcategory.Items.Insert(0, li);
        }

        public void FillGridCategoryExamination()
        {
            gridviewcategoryexamination.DataSource = PS.SelectAllCategoryExamination();
            gridviewcategoryexamination.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.CategoryId = Convert.ToInt16(drpcategory.SelectedItem.Value);
            PS.Question = txtquestion.Text;
            PS.OptionA = txtoptiona.Text;
            PS.OptionB = txtoptionb.Text;
            PS.OptionC = txtoptionc.Text;
            PS.OptionD = txtoptiond.Text;
            PS.Answer = Convert.ToString(drpanswer.SelectedItem.Value);
            if (PS.Answer != "0")
            {
                PS.InsertCategoryExamination(PS);
                FillGridCategoryExamination();
                txtcl();
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridCategoryExamination();
        }

        protected void gridviewcategoryexamination_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label LblCategory = (Label)gridviewcategoryexamination.Rows[e.NewEditIndex].FindControl("Label1");
            Label LblAnswer = (Label)gridviewcategoryexamination.Rows[e.NewEditIndex].FindControl("Label7");

            gridviewcategoryexamination.EditIndex = e.NewEditIndex;
            FillGridCategoryExamination();

            DropDownList DrpCategory = (DropDownList)gridviewcategoryexamination.Rows[e.NewEditIndex].FindControl("DropDownList1");
            DrpCategory.DataSource = PS.ShowCategory();
            DrpCategory.DataTextField = "categoryname";
            DrpCategory.DataValueField = "categoryid";
            DrpCategory.DataBind();

            foreach (ListItem li in DrpCategory.Items)
            {
                if (li.Text == LblCategory.Text)
                {
                    li.Selected = true;
                }
            }

            DropDownList DrpAnswer = (DropDownList)gridviewcategoryexamination.Rows[e.NewEditIndex].FindControl("DropDownList2");

            foreach (ListItem li in DrpAnswer.Items)
            {
                if (li.Text == LblAnswer.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void gridviewcategoryexamination_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewcategoryexamination.EditIndex = -1;
            FillGridCategoryExamination();
        }

        protected void gridviewcategoryexamination_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.QuestionId = Convert.ToInt16(gridviewcategoryexamination.DataKeys[e.RowIndex].Value);
            PS.CategoryId = Convert.ToInt16(((DropDownList)gridviewcategoryexamination.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
            PS.Question = ((TextBox)gridviewcategoryexamination.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.OptionA = ((TextBox)gridviewcategoryexamination.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            PS.OptionB = ((TextBox)gridviewcategoryexamination.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            PS.OptionC = ((TextBox)gridviewcategoryexamination.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            PS.OptionD = ((TextBox)gridviewcategoryexamination.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            PS.Answer = Convert.ToString(((DropDownList)gridviewcategoryexamination.Rows[e.RowIndex].FindControl("DropDownList2")).SelectedItem.Value);
            PS.UpdateCategoryExamination(PS);
            gridviewcategoryexamination.EditIndex = -1;
            FillGridCategoryExamination();
        }

        protected void gridviewcategoryexamination_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewcategoryexamination.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllCategoryExamination();
                }
                else
                {
                    for (int i = 0; i < gridviewcategoryexamination.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewcategoryexamination.Rows[i].FindControl("CheckBox1");
                        PS.QuestionId = Convert.ToInt16(gridviewcategoryexamination.DataKeys[i].Value);
                        PS.DeleteCategoryExamination(PS);
                    }
                }
                FillGridCategoryExamination();
            }
        }

        protected void gridviewcategoryexamination_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewcategoryexamination.PageIndex = e.NewPageIndex;
            FillGridCategoryExamination();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewcategoryexamination.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewcategoryexamination.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcategoryexamination.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewcategoryexamination.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcategoryexamination.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }
    }
}