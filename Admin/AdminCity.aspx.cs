using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCountry();
                FillDrpState();
                FillGridCity();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtcity.Text = string.Empty;
            drpcountry.ClearSelection();
            drpstate.ClearSelection();
        }

        public void FillDrpCountry()
        {
            drpcountry.DataSource = PS.ShowCountry();
            drpcountry.DataTextField = "countryname";
            drpcountry.DataValueField = "countryid";
            drpcountry.DataBind();
            ListItem li = new ListItem();
            li.Text = "-- Select --";
            li.Value = "0";
            drpcountry.Items.Insert(0, li);
        }

        public void FillDrpState()
        {
            if (drpcountry.SelectedIndex != 0)
            {
                PS.CountryId = Convert.ToInt16(drpcountry.SelectedItem.Value);
                drpstate.DataSource = PS.ShowStateReg(PS);
                drpstate.DataTextField = "statename";
                drpstate.DataValueField = "stateid";
                drpstate.DataBind();
                ListItem li = new ListItem();
                li.Text = "-- Select --";
                li.Value = "0";
                drpstate.Items.Insert(0, li);
            }
            else
            {
                ListItem li = new ListItem();
                li.Text = "-- Select --";
                li.Value = "0";
                drpstate.Items.Insert(0, li);
            }
        }

        protected void drpcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDrpState();
        }

        public void FillGridCity()
        {
            gridviewcity.DataSource = PS.SelectAllCity();
            gridviewcity.DataBind();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.CityName = txtcity.Text;
            PS.StateId = Convert.ToInt16(drpstate.SelectedItem.Value);
            PS.InsertCity(PS);
            txtcl();
            FillGridCity();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
            FillGridCity();
        }

        protected void gridviewcity_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label lblstate = (Label)gridviewcity.Rows[e.NewEditIndex].FindControl("Label2");

            gridviewcity.EditIndex = e.NewEditIndex;
            FillGridCity();

            DropDownList DrpState = ((DropDownList)gridviewcity.Rows[e.NewEditIndex].FindControl("DropDownList2"));
            DrpState.DataSource = PS.ShowState();
            DrpState.DataTextField = "statename";
            DrpState.DataValueField = "stateid";
            DrpState.DataBind();

            foreach (ListItem li in DrpState.Items)
            {
                if (li.Text == lblstate.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void gridviewcity_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewcity.EditIndex = -1;
            FillGridCity();
        }

        protected void gridviewcity_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewcity.PageIndex = e.NewPageIndex;
            FillGridCity();
        }

        protected void gridviewcity_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.CityId = Convert.ToInt16(gridviewcity.DataKeys[e.RowIndex].Value);
            PS.StateId = Convert.ToInt16(((DropDownList)gridviewcity.Rows[e.RowIndex].FindControl("DropDownList2")).SelectedItem.Value);
            PS.CityName = ((TextBox)gridviewcity.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.UpdateCity(PS);
            gridviewcity.EditIndex = -1;
            FillGridCity();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewcity.HeaderRow.FindControl("CheckBox2");
            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewcity.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcity.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewcity.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewcity.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewcity_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteAll")
            {
                CheckBox ChkAll = (CheckBox)gridviewcity.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllCity();
                }
                else
                {
                    for (int i = 0; i < gridviewcity.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewcity.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.CityId = Convert.ToInt16(gridviewcity.DataKeys[i].Value);
                            PS.DeleteCity(PS);
                        }
                    }
                }
                FillGridCity();
            }
        }
    }
}