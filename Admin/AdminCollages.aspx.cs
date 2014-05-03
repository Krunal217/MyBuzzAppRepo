using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();
                FillDrpSubCategory();
                FillGridCollage();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtcollages.Text = string.Empty;
            txtcollagedetail.Text = string.Empty;
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

        public void FillGridCollage()
        {
            gridviewcollage.DataSource = PS.SelectAllCollage();
            gridviewcollage.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.CollageName = txtcollages.Text;
            PS.CollageLink = txtcollagelink.Text;
            PS.CollageDetail = txtcollagedetail.Text;
            PS.CategoryId = Convert.ToInt16(Drpcategory.SelectedItem.Value);
            PS.SubCategoryId = Convert.ToInt16(Drpsubcategory.SelectedItem.Value);
            PS.InsertCollage(PS);
            txtcl();
            FillGridCollage();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridCollage();
        }

        protected void gridviewcollage_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label LblCategory = (Label)gridviewcollage.Rows[e.NewEditIndex].FindControl("Label1");
            Label LblSubCategory = (Label)gridviewcollage.Rows[e.NewEditIndex].FindControl("Label2");

            gridviewcollage.EditIndex = e.NewEditIndex;
            FillGridCollage();

            DropDownList DrpCategory = (DropDownList)gridviewcollage.Rows[e.NewEditIndex].FindControl("DropDownList1");
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

            DropDownList DrpSubCategory = (DropDownList)gridviewcollage.Rows[e.NewEditIndex].FindControl("DropDownList2");
            PS.CategoryId = Convert.ToInt16(DrpCategory.SelectedItem.Value);
            DrpSubCategory.DataSource = PS.ShowSubCategory(PS);
            DrpSubCategory.DataTextField = "subcategoryname";
            DrpSubCategory.DataValueField = "subcategoryid";
            DrpSubCategory.DataBind();

            foreach (ListItem li in DrpSubCategory.Items)
            {
                if (li.Text == LblSubCategory.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void gridviewcollage_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewcollage.EditIndex = -1;
            FillGridCollage();
        }

        protected void gridviewcollage_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewcollage.PageIndex = e.NewPageIndex;
            FillGridCollage();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList DrpCategory = (DropDownList)gridviewcollage.Rows[gridviewcollage.EditIndex].FindControl("DropDownList1");
            DropDownList DrpSubCategory = (DropDownList)gridviewcollage.Rows[gridviewcollage.EditIndex].FindControl("DropDownList2");
            PS.CategoryId = Convert.ToInt16(DrpCategory.SelectedItem.Value);
            DrpSubCategory.DataSource = PS.ShowSubCategory(PS);
            DrpSubCategory.DataTextField = "subcategoryname";
            DrpSubCategory.DataValueField = "subcategoryid";
            DrpSubCategory.DataBind();
        }

        protected void gridviewcollage_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.CollageId = Convert.ToInt16(gridviewcollage.DataKeys[e.RowIndex].Value);
            PS.CollageName = ((TextBox)gridviewcollage.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.CollageLink = ((TextBox)gridviewcollage.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            PS.CollageDetail = ((TextBox)gridviewcollage.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            PS.CategoryId = Convert.ToInt16(((DropDownList)gridviewcollage.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
            PS.SubCategoryId = Convert.ToInt16(((DropDownList)gridviewcollage.Rows[e.RowIndex].FindControl("DropDownList2")).SelectedItem.Value);
            PS.UpdateCollage(PS);
            gridviewcollage.EditIndex = -1;
            FillGridCollage();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewcollage.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewcollage.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcollage.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewcollage.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcollage.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewcollage_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewcollage.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllCollage();
                }
                else
                {
                    for (int i = 0; i < gridviewcollage.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewcollage.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.CollageId = Convert.ToInt16(gridviewcollage.DataKeys[i].Value);
                            PS.DeleteCollage(PS);
                        }
                    }
                }
                FillGridCollage();
            }
        }
    }
}