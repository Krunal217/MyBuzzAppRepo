using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridCategory();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtcategory.Text = string.Empty;
        }

        public void FillGridCategory()
        {
            gridviewcategory.DataSource = PS.SelectAllCategory();
            gridviewcategory.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.CategoryName = txtcategory.Text;
            PS.InsertCategory(PS);
            txtcl();
            FillGridCategory();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridCategory();
        }

        protected void gridviewcategory_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridviewcategory.EditIndex = e.NewEditIndex;
            FillGridCategory();
        }

        protected void gridviewcategory_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewcategory.EditIndex = -1;
            FillGridCategory();
        }

        protected void gridviewcategory_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewcategory.PageIndex = e.NewPageIndex;
            FillGridCategory();
        }

        protected void gridviewcategory_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.CategoryId = Convert.ToInt16(gridviewcategory.DataKeys[e.RowIndex].Value);
            PS.CategoryName = ((TextBox)gridviewcategory.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.UpdateCategory(PS);
            gridviewcategory.EditIndex = -1;
            FillGridCategory();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewcategory.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewcategory.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcategory.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewcategory.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcategory.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewcategory_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewcategory.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllCategory();
                }
                else
                {
                    for (int i = 0; i < gridviewcategory.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewcategory.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.CategoryId = Convert.ToInt16(gridviewcategory.DataKeys[i].Value);
                            PS.DeleteCategory(PS);
                        }
                    }
                }
                FillGridCategory();
            }
        }
    }
}