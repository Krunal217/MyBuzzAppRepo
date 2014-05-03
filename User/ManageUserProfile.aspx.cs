using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDetailUser();
            }
        }

        public void FillDetailUser()
        {
            int UserId = Convert.ToInt16(Session["UserID"].ToString());
            datalistuser.DataSource = PS.UserProfile(UserId);
            datalistuser.DataBind();
            lbluname.Text = Session["UserName"].ToString();
        }

        protected void datalistuser_EditCommand(object source, DataListCommandEventArgs e)
        {
            Label LblGender = (Label)e.Item.FindControl("lblgender1");
            Label LblCountry = (Label)e.Item.FindControl("lblcountry1");
            Label LblCity = (Label)e.Item.FindControl("lblcity1");
            Label LblSecurityQuestion = (Label)e.Item.FindControl("lblsecurityquestion1");
            Label LblState = (Label)e.Item.FindControl("lblstate1");

            datalistuser.EditItemIndex = e.Item.ItemIndex;
            FillDetailUser();

            RadioButtonList Rndbtn = (RadioButtonList)datalistuser.Items[e.Item.ItemIndex].FindControl("rndbtnlistgender");
            foreach (ListItem li in Rndbtn.Items)
            {
                if (li.Text == LblGender.Text)
                {
                    li.Selected = true;
                }
            }

            DropDownList DrpCountry = (DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpcountry");
            DrpCountry.DataSource = PS.ShowCountry();
            DrpCountry.DataTextField = "countryname";
            DrpCountry.DataValueField = "countryid";
            DrpCountry.DataBind();
            foreach (ListItem li in DrpCountry.Items)
            {
                if (li.Text == LblCountry.Text)
                {
                    li.Selected = true;
                }
            }

            DropDownList DrpState = (DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpstate");
            PS.CountryId = Convert.ToInt16(DrpCountry.SelectedItem.Value);
            DrpState.DataSource = PS.ShowStateReg(PS);
            DrpState.DataTextField = "statename";
            DrpState.DataValueField = "stateid";
            DrpState.DataBind();
            foreach (ListItem li in DrpState.Items)
            {
                if (li.Text == LblState.Text)
                {
                    li.Selected = true;
                }
            }

            DropDownList DrpCity = (DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpcity");
            PS.StateId = Convert.ToInt16(DrpState.SelectedItem.Value);
            DrpCity.DataSource = PS.ShowCity(PS);
            DrpCity.DataTextField = "cityname";
            DrpCity.DataValueField = "cityid";
            DrpCity.DataBind();
            foreach (ListItem li in DrpCity.Items)
            {
                if (li.Text == LblCity.Text)
                {
                    li.Selected = true;
                }
            }

            DropDownList DrpSecurityQuestion = (DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpsecurityquestion");
            foreach (ListItem li in DrpSecurityQuestion.Items)
            {
                if (li.Text == LblSecurityQuestion.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void drpcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList DrpCountry = (DropDownList)datalistuser.Items[datalistuser.EditItemIndex].FindControl("drpcountry");
            DropDownList DrpState = (DropDownList)datalistuser.Items[datalistuser.EditItemIndex].FindControl("drpstate");
            PS.CountryId = Convert.ToInt16(DrpCountry.SelectedItem.Value);
            DrpState.DataSource = PS.ShowStateReg(PS);
            DrpState.DataTextField = "statename";
            DrpState.DataValueField = "stateid";
            DrpState.DataBind();
        }

        protected void drpcity_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList DrpState = (DropDownList)datalistuser.Items[datalistuser.EditItemIndex].FindControl("drpstate");
            DropDownList DrpCity = (DropDownList)datalistuser.Items[datalistuser.EditItemIndex].FindControl("drpcity");
            PS.StateId = Convert.ToInt16(DrpState.SelectedItem.Value);
            DrpCity.DataSource = PS.ShowCity(PS);
            DrpCity.DataTextField = "cityname";
            DrpCity.DataValueField = "cityid";
            DrpCity.DataBind();
        }

        protected void datalistuser_CancelCommand(object source, DataListCommandEventArgs e)
        {
            datalistuser.EditItemIndex = -1;
            FillDetailUser();
        }

        protected void datalistuser_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            FileUpload FileUploadPhoto = (FileUpload)e.Item.FindControl("fileuploaduser");
            FileUpload FileUploadResume = (FileUpload)e.Item.FindControl("fileuploadresume");
            Image ImgUserPhoto = (Image)e.Item.FindControl("imguser");
            LinkButton LnkbtnResume = (LinkButton)e.Item.FindControl("lnkbtnresume");


            PS.UserId = Convert.ToInt16(datalistuser.DataKeys[datalistuser.EditItemIndex].ToString());
            PS.FirstName = ((TextBox)datalistuser.Items[e.Item.ItemIndex].FindControl("txtfname")).Text;
            PS.LastName = ((TextBox)datalistuser.Items[e.Item.ItemIndex].FindControl("txtlastname")).Text;
            PS.UserName = ((TextBox)datalistuser.Items[e.Item.ItemIndex].FindControl("txtusername")).Text;
            PS.Email = ((TextBox)datalistuser.Items[e.Item.ItemIndex].FindControl("txtemail")).Text;
            PS.MobileNo = Convert.ToDecimal(((TextBox)datalistuser.Items[e.Item.ItemIndex].FindControl("txtmobileno")).Text);
            PS.Gender = (((RadioButtonList)datalistuser.Items[e.Item.ItemIndex].FindControl("rndbtnlistgender")).SelectedItem.Value);
            PS.DateOfBirth = Convert.ToDateTime(((TextBox)datalistuser.Items[e.Item.ItemIndex].FindControl("txtdob")).Text);
            PS.CountryId = Convert.ToInt16(((DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpcountry")).SelectedItem.Value);
            PS.StateId = Convert.ToInt16(((DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpstate")).SelectedItem.Value);
            PS.CityId = Convert.ToInt16(((DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpcity")).SelectedItem.Value);
            PS.SecurityQuestion = (((DropDownList)datalistuser.Items[e.Item.ItemIndex].FindControl("drpsecurityquestion")).SelectedItem.Value);
            PS.SecurityAnswer = ((TextBox)datalistuser.Items[e.Item.ItemIndex].FindControl("txtsecurityansewr")).Text;
            if (FileUploadPhoto.HasFile)
            {
                PS.Photos = ("~/Photos/" + FileUploadPhoto.PostedFile.FileName);
                FileUploadPhoto.SaveAs(Server.MapPath(PS.Photos));
            }
            else
            {
                PS.Photos = ImgUserPhoto.ImageUrl;
            }
            if (FileUploadResume.HasFile)
            {
                PS.Resume = ("Resume/" + FileUploadResume.PostedFile.FileName);
                FileUploadResume.SaveAs(Server.MapPath(PS.Resume));
            }
            else
            {
                PS.Resume = LnkbtnResume.Text;
            }
            PS.UpdateUserProfile(PS);
            datalistuser.EditItemIndex = -1;
            FillDetailUser();

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            PS.UserId = Convert.ToInt16(Session["UserID"].ToString());
            PS.UserName = Session["UserName"].ToString();
            PS.Password = txtopwd.Text;
            if ((PS.UserLogInData(PS)).Rows.Count > 0)
            {
                PS.Password = txtnpwd.Text;
                PS.ChangePassword(PS);
                Response.Write("To Sucessfully Changed Password!!!!");
            }
            else
            {
                Response.Write("Please Enter Currect Old Password....");
            }
        }

        protected void datalistuser_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            //LinkButton lnkbtnresume = (LinkButton)e.Item.FindControl("lnkbtnresume1");
            //lnkbtnresume.PostBackUrl = "javascript:download('" + lnkbtnresume.Text + "');";
        }
    }
}