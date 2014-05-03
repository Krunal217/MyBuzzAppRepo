using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridSubCategory();
                FillDrpCategory();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtsubcategory.Text = string.Empty;
        }

        public void FillDrpCategory()
        {
            Drpcategory.DataSource = PS.ShowCategory();
            Drpcategory.DataTextField = "categoryname";
            Drpcategory.DataValueField = "categoryid";
            Drpcategory.DataBind();
            ListItem li = new ListItem();
            li.Text = "--Select--";
            li.Value = "0";
            Drpcategory.Items.Insert(0, li);
        }

        public void FillGridSubCategory()
        {
            gridviewsubcategory.DataSource = PS.SelectAllSubCategory();
            gridviewsubcategory.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.SubCategoryName = txtsubcategory.Text;
            PS.CategoryId = Convert.ToInt16(Drpcategory.SelectedItem.Value);
            PS.InsertSubCategory(PS);
            txtcl();
            FillGridSubCategory();
            FillDrpCategory();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridSubCategory();
            FillDrpCategory();
        }

        protected void gridviewsubcategory_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label LblCategory = (Label)gridviewsubcategory.Rows[e.NewEditIndex].FindControl("Label1");

            gridviewsubcategory.EditIndex = e.NewEditIndex;
            FillGridSubCategory();

            DropDownList DrpCategory = (DropDownList)gridviewsubcategory.Rows[e.NewEditIndex].FindControl("DropDownList1");
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
        }

        protected void gridviewsubcategory_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewsubcategory.EditIndex = -1;
            FillGridSubCategory();
        }

        protected void gridviewsubcategory_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewsubcategory.PageIndex = e.NewPageIndex;
            FillGridSubCategory();
        }

        protected void gridviewsubcategory_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.SubCategoryId = Convert.ToInt16(gridviewsubcategory.DataKeys[e.RowIndex].Value);
            PS.SubCategoryName = ((TextBox)gridviewsubcategory.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.CategoryId = Convert.ToInt16(((DropDownList)gridviewsubcategory.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
            PS.UpdateSubCategory(PS);
            gridviewsubcategory.EditIndex = -1;
            FillGridSubCategory();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewsubcategory.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewsubcategory.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewsubcategory.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewsubcategory.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewsubcategory.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewsubcategory_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewsubcategory.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllSubCategory();
                }
                else
                {
                    for (int i = 0; i < gridviewsubcategory.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewsubcategory.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.SubCategoryId = Convert.ToInt16(gridviewsubcategory.DataKeys[i].Value);
                            PS.DeleteSubCategory(PS);
                        }
                    }
                }
                FillGridSubCategory();
            }
        }
    }
}