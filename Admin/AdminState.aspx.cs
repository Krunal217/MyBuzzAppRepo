using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCountry();
                FillGridState();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtstate.Text = string.Empty;
        }

        public void FillDrpCountry()
        {
            drpcountry.DataSource = PS.ShowCountry();
            drpcountry.DataTextField = "countryname";
            drpcountry.DataValueField = "countryid";
            drpcountry.DataBind();
            ListItem li = new ListItem();
            li.Text = "--Select--";
            li.Value = "0";
            drpcountry.Items.Insert(0, li);
        }

        public void FillGridState()
        {
            gridviewstate.DataSource = PS.SelectAllState();
            gridviewstate.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.StateName = txtstate.Text;
            PS.CountryId = Convert.ToInt16(drpcountry.SelectedItem.Value);
            PS.InsertState(PS);
            txtcl();
            FillGridState();
            FillDrpCountry();
        }

        protected void gridviewstate_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label lblcountry = (Label)gridviewstate.Rows[e.NewEditIndex].FindControl("Label2");

            gridviewstate.EditIndex = e.NewEditIndex;
            FillGridState();

            DropDownList DrpCountry = ((DropDownList)gridviewstate.Rows[e.NewEditIndex].FindControl("DropDownList1"));
            DrpCountry.DataSource = PS.ShowCountry();
            DrpCountry.DataTextField = "countryname";
            DrpCountry.DataValueField = "countryid";
            DrpCountry.DataBind();

            foreach (ListItem li in DrpCountry.Items)
            {
                if (li.Text == lblcountry.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void gridviewstate_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewstate.EditIndex = -1;
            FillGridState();
        }

        protected void gridviewstate_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.StateId = Convert.ToInt16(gridviewstate.DataKeys[e.RowIndex].Value);
            PS.StateName = ((TextBox)gridviewstate.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.CountryId = Convert.ToInt16(((DropDownList)gridviewstate.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
            PS.UpdateState(PS);
            gridviewstate.EditIndex = -1;
            FillGridState();
        }

        protected void gridviewstate_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewstate.PageIndex = e.NewPageIndex;
            FillGridState();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewstate.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewstate.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewstate.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewstate.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewstate.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewstate_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewstate.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllState();
                }
                else
                {
                    for (int i = 0; i < gridviewstate.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewstate.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.StateId = Convert.ToInt16(gridviewstate.DataKeys[i].Value);
                            PS.DeleteState(PS);
                        }
                    }
                }
                FillGridState();
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridState();
            FillDrpCountry();
        }
    }
}