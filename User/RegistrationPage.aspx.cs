using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpCountry();
                FillDrpState();
                FillDrpCity();
                txtcl();
            }
        }

        public void txtcl()
        {
            txtfname.Text = string.Empty;
            txtlname.Text = string.Empty;
            txtmobileno.Text = string.Empty;
            txtusername.Text = string.Empty;
            txtemailid.Text = string.Empty;
            txtpassword.Text = string.Empty;
            txtconfirmpwd.Text = string.Empty;
            txtdob.Text = string.Empty;
            txtanswer.Text = string.Empty;
            txtcaptcha.Text = string.Empty;
            rndbtnlistgender.ClearSelection();
            drpsecurityquestion.ClearSelection();
            drpcountry.ClearSelection();
            drpstate.ClearSelection();
            drpcity.ClearSelection();
        }

        public void FillDrpCountry()
        {
            drpcountry.DataSource = PS.ShowCountry();
            drpcountry.DataTextField = "countryname";
            drpcountry.DataValueField = "countryid";
            drpcountry.DataBind();
            ListItem li = new ListItem();
            li.Text = "-- Select Country --";
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
                li.Text = "-- Select State --";
                li.Value = "0";
                drpstate.Items.Insert(0, li);
            }
            else
            {
                ListItem li = new ListItem();
                li.Text = "-- Select State --";
                li.Value = "0";
                drpstate.Items.Insert(0, li);
            }
        }

        public void FillDrpCity()
        {
            if (drpstate.SelectedIndex != 0)
            {
                PS.StateId = Convert.ToInt16(drpstate.SelectedItem.Value);
                drpcity.DataSource = PS.ShowCity(PS);
                drpcity.DataTextField = "cityname";
                drpcity.DataValueField = "cityid";
                drpcity.DataBind();
                ListItem li = new ListItem();
                li.Text = "-- Select City --";
                li.Value = "0";
                drpcity.Items.Insert(0, li);
            }
            else
            {
                ListItem li = new ListItem();
                li.Text = "-- Select City --";
                li.Value = "0";
                drpcity.Items.Insert(0, li);
            }
        }



        protected void drpcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDrpState();
        }

        protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDrpCity();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            CaptchaControl1.ValidateCaptcha(txtcaptcha.Text.Trim());
            if (CaptchaControl1.UserValidated)
            {
                if (fileuploadphoto.HasFile)
                {
                    if (fileuploadphoto.PostedFile.ContentType == "image/jpeg" || fileuploadphoto.PostedFile.ContentType == "image/png" || fileuploadphoto.PostedFile.ContentType == "image/gif" || fileuploadphoto.PostedFile.ContentType == "image/jpg")
                    {
                        if (fileuploadresume.HasFile)
                        {
                            if (fileuploadphoto.PostedFile.ContentType == "document/txt" || fileuploadresume.PostedFile.ContentType == "text/plain" || fileuploadphoto.PostedFile.ContentType == "document/odf" || fileuploadphoto.PostedFile.ContentType == "document/doc" || fileuploadphoto.PostedFile.ContentType == "document/docx" || fileuploadphoto.PostedFile.ContentType == "document/pdf")
                            {
                                PS.FirstName = txtfname.Text;
                                PS.LastName = txtlname.Text;
                                PS.UserName = txtusername.Text;
                                PS.Password = txtpassword.Text;
                                PS.Email = txtemailid.Text;
                                PS.MobileNo = Convert.ToDecimal(txtmobileno.Text);
                                PS.Gender = Convert.ToString(rndbtnlistgender.SelectedItem.Value);
                                PS.DateOfBirth = Convert.ToDateTime(txtdob.Text);
                                PS.SecurityQuestion = Convert.ToString(drpsecurityquestion.SelectedItem.Value);
                                PS.SecurityAnswer = txtanswer.Text;
                                PS.CountryId = Convert.ToInt16(drpcountry.SelectedItem.Value);
                                PS.StateId = Convert.ToInt16(drpstate.SelectedItem.Value);
                                PS.CityId = Convert.ToInt16(drpcity.SelectedItem.Value);
                                PS.Photos = ("~/Photos/" + fileuploadphoto.PostedFile.FileName);
                                PS.Resume = ("Resume/" + fileuploadresume.PostedFile.FileName);
                                PS.InsertRegistration(PS);
                                fileuploadphoto.SaveAs(Server.MapPath(PS.Photos));
                                fileuploadresume.SaveAs(Server.MapPath(PS.Resume));
                                txtcl();
                            }
                            else
                            {
                                Response.Write("<script>alert('Please Select Proper Format Document. Like(TXT,ODF,PDF,DOC,DOCX);')</script>");
                            }
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Please Select Proper Format Image. Like(JPEG,JPG,PNG,GIF)');</script>");
                    }
                }
            }
            else
            {
                lblmessage.ForeColor = System.Drawing.Color.Red;
                lblmessage.Text = "Re-Enter Captcha";
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
        }

        protected void txtlname_TextChanged(object sender, EventArgs e)
        {
            txtusername.Text = txtfname.Text + ' ' + txtlname.Text;
            txtemailid.Focus();
        }

        protected void imgbtn_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}