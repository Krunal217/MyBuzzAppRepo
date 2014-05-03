using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();
                FillDrpSubCategory();
                FillGridCareer();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtcareer.Text = string.Empty;
            txtcareerdetails.Text = string.Empty;
            Drpcategory.ClearSelection();
            Drpsubcategory.ClearSelection();
        }

        public void FillDrpCategory()
        {
            Drpcategory.DataSource = PS.ShowCategory();
            Drpcategory.DataTextField = "categoryname";
            Drpcategory.DataValueField = "categoryid";
            Drpcategory.DataBind();
            ListItem li = new ListItem();
            li.Text = "-- Select --";
            li.Value = "0";
            Drpcategory.Items.Insert(0, li);
        }

        public void FillDrpSubCategory()
        {
            if (Drpcategory.SelectedIndex != 0)
            {
                PS.CategoryId = Convert.ToInt16(Drpcategory.SelectedItem.Value);
                Drpsubcategory.DataSource = PS.ShowSubCategory(PS);
                Drpsubcategory.DataTextField = "subcategoryname";
                Drpsubcategory.DataValueField = "subcategoryid";
                Drpsubcategory.DataBind();
                ListItem li = new ListItem();
                li.Text = "-- Select --";
                li.Value = "0";
                Drpsubcategory.Items.Insert(0, li);
            }
            else
            {
                ListItem li = new ListItem();
                li.Text = "-- Select --";
                li.Value = "0";
                Drpsubcategory.Items.Insert(0, li);
            }
        }

        protected void Drpcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDrpSubCategory();
        }

        public void FillGridCareer()
        {
            gridviewcareer.DataSource = PS.SelectAllCareer();
            gridviewcareer.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.CareerName = txtcareer.Text;
            PS.CareerDetail = txtcareerdetails.Text;
            PS.CategoryId = Convert.ToInt16(Drpcategory.SelectedItem.Value);
            PS.SubCategoryId = Convert.ToInt16(Drpsubcategory.SelectedItem.Value);
            PS.InsertCareeer(PS);
            txtcl();
            FillGridCareer();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridCareer();
        }

        protected void gridviewcareer_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label LblCategory = (Label)gridviewcareer.Rows[e.NewEditIndex].FindControl("Label1");
            Label LblSubCategory = (Label)gridviewcareer.Rows[e.NewEditIndex].FindControl("Label2");

            gridviewcareer.EditIndex = e.NewEditIndex;
            FillGridCareer();

            DropDownList DrpCategoryGrid = (DropDownList)gridviewcareer.Rows[e.NewEditIndex].FindControl("DropDownList1");
            DrpCategoryGrid.DataSource = PS.ShowCategory();
            DrpCategoryGrid.DataTextField = "categoryname";
            DrpCategoryGrid.DataValueField = "categoryid";
            DrpCategoryGrid.DataBind();

            foreach (ListItem li in DrpCategoryGrid.Items)
            {
                if (li.Text == LblCategory.Text)
                {
                    li.Selected = true;
                }
            }

            PS.CategoryId = Convert.ToInt16(DrpCategoryGrid.SelectedItem.Value);
            DropDownList DrpSubCategoryGrid = (DropDownList)gridviewcareer.Rows[e.NewEditIndex].FindControl("DropDownList2");
            DrpSubCategoryGrid.DataSource = PS.ShowSubCategory(PS);
            DrpSubCategoryGrid.DataTextField = "subcategoryname";
            DrpSubCategoryGrid.DataValueField = "subcategoryid";
            DrpSubCategoryGrid.DataBind();

            foreach (ListItem li in DrpSubCategoryGrid.Items)
            {
                if (li.Text == LblSubCategory.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void gridviewcareer_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewcareer.EditIndex = -1;
            FillGridCareer();
        }

        protected void gridviewcareer_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewcareer.PageIndex = e.NewPageIndex;
            FillGridCareer();
        }

        protected void gridviewcareer_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.CareerId = Convert.ToInt16(gridviewcareer.DataKeys[e.RowIndex].Value);
            PS.CareerName = ((TextBox)gridviewcareer.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.CareerDetail = ((TextBox)gridviewcareer.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            PS.CategoryId = Convert.ToInt16(((DropDownList)gridviewcareer.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
            PS.SubCategoryId = Convert.ToInt16(((DropDownList)gridviewcareer.Rows[e.RowIndex].FindControl("DropDownList2")).SelectedItem.Value);
            PS.UpdateCareer(PS);
            gridviewcareer.EditIndex = -1;
            FillGridCareer();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList DrpCategoryGrid = (DropDownList)gridviewcareer.Rows[gridviewcareer.EditIndex].FindControl("DropDownList1");
            DropDownList DrpSubCategoryGrid = (DropDownList)gridviewcareer.Rows[gridviewcareer.EditIndex].FindControl("DropDownList2");
            PS.CategoryId = Convert.ToInt16(DrpCategoryGrid.SelectedItem.Value);
            DrpSubCategoryGrid.DataSource = PS.ShowSubCategory(PS);
            DrpSubCategoryGrid.DataTextField = "subcategoryname";
            DrpSubCategoryGrid.DataValueField = "subcategoryid";
            DrpSubCategoryGrid.DataBind();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewcareer.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewcareer.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcareer.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewcareer.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcareer.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewcareer_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewcareer.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllCareer();
                }
                else
                {
                    for (int i = 0; i < gridviewcareer.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewcareer.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.CareerId = Convert.ToInt16(gridviewcareer.DataKeys[i].Value);
                            PS.DeleteCareer(PS);
                        }
                    }
                }
                FillGridCareer();
            }
        }
    }
}