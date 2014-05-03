using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

namespace EBuzz_Cloud.User
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtcl();
            }
        }

        public void txtcl()
        {
            txtuname.Text = string.Empty;
            txtanswer.Text = string.Empty;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            PS.Email = txtuname.Text;
            PS.SecurityQuestion = lblquestion1.Text;
            PS.SecurityAnswer = txtanswer.Text;
            PS.SelectPassword(PS);
            DataTable dt = new DataTable();
            dt = PS.SelectPassword(PS);
            if (dt.Rows.Count > 0)
            {
                //lblpwd.Visible = true;
                //lblpwd1.Visible = true;
                //lblpwd1.Text = dt.Rows[0]["password"].ToString();

                //PS.UserName = txtuname.Text;
                string Subject = "Mail From EBuzz.";
                string Msg = "Forgot Password??<br><br>Your UserName is " + PS.Email + " and Your Password is " + dt.Rows[0]["password"].ToString() + "<br><br>Please use this details to login into system..";
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage("chavadakrunal@gmail.com", PS.Email);
                mail.Subject = Subject;
                mail.Body = "<b>" + "Thank You " + "</b>" + txtuname.Text + "<br><br><br>" + "<b>" + " Purpose of mail is: " + "</b>" + "<br><br><br>" + Msg + "<br><br><br>" + "<b>Admin<br>Krunal Chavada..<br>EBuzz..</b>";
                mail.IsBodyHtml = true;
                SmtpClient client = new SmtpClient();
                client.Credentials = new System.Net.NetworkCredential("chavadakrunal@gmail.com", "9429001413");
                client.Port = 587; // Gmail works on this port
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true; //Gmail works on Server Secured Layer
                try
                {
                    client.Send(mail);
                }
                catch (Exception error)
                {
                    throw error;
                }
            }
            else
            {
                Response.Write("<script>alert('Your Answer Is Wrong!!!!');</script>");
                txtcl();

            }

        }

        protected void txtuname_TextChanged(object sender, EventArgs e)
        {
            PS.Email = txtuname.Text;
            DataTable dt = new DataTable();
            dt = PS.SelectSecurityQuestion(PS);
            if (dt.Rows.Count > 0)
            {
                lblquestion1.Text = dt.Rows[0]["securityquestion"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Your User Name Is Invalid!!!!');</script>");
            }
            txtanswer.Focus();
        }
    }
}