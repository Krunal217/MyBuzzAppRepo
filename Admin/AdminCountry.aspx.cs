using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridCountry();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtcountry.Text = string.Empty;
        }

        public void FillGridCountry()
        {
            gridviewcountry.DataSource = PS.SelectAllCountry();
            gridviewcountry.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.CountryName = txtcountry.Text;
            PS.InsertCountry(PS);
            txtcl();
            FillGridCountry();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridCountry();
        }

        protected void gridviewcountry_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridviewcountry.EditIndex = e.NewEditIndex;
            FillGridCountry();
        }

        protected void gridviewcountry_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewcountry.EditIndex = -1;
            FillGridCountry();
        }

        protected void gridviewcountry_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.CountryId = Convert.ToInt16(gridviewcountry.DataKeys[e.RowIndex].Value);
            PS.CountryName = ((TextBox)gridviewcountry.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.UpdateCountry(PS);
            gridviewcountry.EditIndex = -1;
            FillGridCountry();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewcountry.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewcountry.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcountry.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewcountry.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcountry.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewcountry_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewcountry.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllCountry();
                }
                else
                {
                    for (int i = 0; i < gridviewcountry.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewcountry.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.CountryId = Convert.ToInt16(gridviewcountry.DataKeys[i].Value);
                            PS.DeleteCountry(PS);
                        }
                    }
                }
                FillGridCountry();
            }

        }

        protected void gridviewcountry_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewcountry.PageIndex = e.NewPageIndex;
            FillGridCountry();
        }
    }
}