using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridContactUs();
            }
        }

        public void FillGridContactUs()
        {
            gridviewcontactu.DataSource = PS.SelectAllContactUs();
            gridviewcontactu.DataBind();
        }

        protected void gridviewcontactu_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            for (int i = 0; i < gridviewcontactu.Rows.Count; i++)
            {
                if (e.CommandName == "SendMail")
                {
                    PS.ContactId = Convert.ToInt16(gridviewcontactu.DataKeys[i].Value);
                    Session["Data"] = e.CommandArgument.ToString();
                    ModalPopupExtender1.Show();
                    // Response.Redirect("../Admin/AdminContactUsMail.aspx?ContactId=" + e.CommandArgument);

                    //string Subject = "Mail From EBuzz.";
                    //string Msg = "Forgot Password??<br><br>Your UserName is " + PS.Email + " and Your Message is " + dt.Rows[0]["password"].ToString() + "<br><br>Please use this details to login into system..";
                    //System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage("chavadakrunal@gmail.com", PS.Email);
                    //mail.Subject = Subject;
                    //mail.Body = "<b>" + "Thank You " + "</b>" + PS.Email + "<br><br><br>" + "<b>" + " Purpose of mail is: " + "</b>" + "<br><br><br>" + Msg + "<br><br><br>" + "<b>Admin<br>Krunal Chavada..<br>EBuzz..</b>";
                    //mail.IsBodyHtml = true;
                    //SmtpClient client = new SmtpClient();
                    //client.Credentials = new System.Net.NetworkCredential("chavadakrunal@gmail.com", "9429001413");
                    //client.Port = 587; // Gmail works on this port
                    //client.Host = "smtp.gmail.com";
                    //client.EnableSsl = true; //Gmail works on Server Secured Layer
                    //try
                    //{
                    //    client.Send(mail);
                    //}
                    //catch (Exception error)
                    //{
                    //    throw error;
                    //}
                }
            }
        }
    }
}