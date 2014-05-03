using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Visitors
{
    public partial class WebForm4 : System.Web.UI.Page
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
            txtlname.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtphone.Text = string.Empty;
            txtemessage.Text = string.Empty;
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            PS.Name = txtlname.Text;
            PS.EmailId = txtemail.Text;
            PS.Mobileno = Convert.ToDecimal(txtphone.Text);
            PS.Message = txtemessage.Text;
            PS.InsertContactUs(PS);
            txtcl();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcl();
        }
    }
}