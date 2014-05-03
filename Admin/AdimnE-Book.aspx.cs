using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCategory();
                FillDrpSubCategory();
                FillGridEBook();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtbookname.Text = string.Empty;
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

        public void FillGridEBook()
        {
            gridviewebook.DataSource = PS.SelectAllEBook();
            gridviewebook.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            if (fileuploadbookfile.HasFile)
            {
                PS.BookName = txtbookname.Text;
                PS.CategoryId = Convert.ToInt16(Drpcategory.SelectedItem.Value);
                PS.SubCategoryId = Convert.ToInt16(Drpsubcategory.SelectedItem.Value);
                PS.BookFile = ("~/EBook/" + fileuploadbookfile.PostedFile.FileName);
                PS.InsertEBook(PS);
                fileuploadbookfile.SaveAs(Server.MapPath(PS.BookFile));
                txtcl();
                FillGridEBook();
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridEBook();
        }

        protected void gridviewebook_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label LblCategory = (Label)gridviewebook.Rows[e.NewEditIndex].FindControl("Label1");
            Label LblSubCategory = (Label)gridviewebook.Rows[e.NewEditIndex].FindControl("Label2");

            gridviewebook.EditIndex = e.NewEditIndex;
            FillGridEBook();

            DropDownList DrpCategory = (DropDownList)gridviewebook.Rows[e.NewEditIndex].FindControl("DropDownList1");
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

            DropDownList DrpSubCategory = (DropDownList)gridviewebook.Rows[e.NewEditIndex].FindControl("DropDownList2");
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

        protected void gridviewebook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewebook.EditIndex = -1;
            FillGridEBook();
        }

        protected void gridviewebook_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewebook.PageIndex = e.NewPageIndex;
            FillGridEBook();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList DrpCategory = (DropDownList)gridviewebook.Rows[gridviewebook.EditIndex].FindControl("DropDownList1");
            DropDownList DrpSubCategory = (DropDownList)gridviewebook.Rows[gridviewebook.EditIndex].FindControl("DropDownList2");
            PS.CategoryId = Convert.ToInt16(DrpCategory.SelectedItem.Value);
            DrpSubCategory.DataSource = PS.ShowSubCategory(PS);
            DrpSubCategory.DataTextField = "subcategoryname";
            DrpSubCategory.DataValueField = "subcategoryid";
            DrpSubCategory.DataBind();
        }

        protected void gridviewebook_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.BookId = Convert.ToInt16(gridviewebook.DataKeys[e.RowIndex].Value);
            PS.BookName = ((TextBox)gridviewebook.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.CategoryId = Convert.ToInt16(((DropDownList)gridviewebook.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
            PS.SubCategoryId = Convert.ToInt16(((DropDownList)gridviewebook.Rows[e.RowIndex].FindControl("DropDownList2")).SelectedItem.Value);
            PS.BookFile = (((FileUpload)gridviewebook.Rows[e.RowIndex].FindControl("FileUpload1")).PostedFile.FileName);
            PS.UpdateEBook(PS);
            fileuploadbookfile.SaveAs(Server.MapPath(PS.BookFile));
            gridviewebook.EditIndex = -1;
            FillGridEBook();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewebook.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewebook.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewebook.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewebook.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewebook.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewebook_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "bookfile")
            {
                PS.BookId = Convert.ToInt16(e.CommandArgument);
                Response.Redirect("Default.aspx");
            }

            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewebook.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllEBook();
                }
                else
                {
                    for (int i = 0; i < gridviewebook.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewebook.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.BookId = Convert.ToInt16(gridviewebook.DataKeys[i].Value);
                            PS.DeleteEBook(PS);
                        }
                    }
                }
                FillGridEBook();
            }
        }
    }
}