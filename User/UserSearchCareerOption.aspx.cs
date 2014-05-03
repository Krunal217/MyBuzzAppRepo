using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EBuzz_Cloud.User
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();
        static int T = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillRepeaterSearchArts();
                // ViewState["d"] = 0;
                // btnPrev.Enabled = false;
            }
        }

        public void FillRepeaterSearchArts()
        {
            repeatersearchcareerarts.DataSource = PS.SearchCareerArts();
            repeatersearchcareerarts.DataBind();
        }


        public void FillRepeaterSearchCommerce()
        {
            repeatersearchcommerce.DataSource = PS.SearchCareerCommerce();
            repeatersearchcommerce.DataBind();

            //DataSet ds = new DataSet();
            //ds = PS.SearchCareerCommerce1();
            //T = PS.SearchCareerCommerce1().Tables[0].Rows.Count;
            //PagedDataSource pdf = new PagedDataSource();
            //pdf.DataSource = ds.Tables[0].DefaultView;
            //pdf.CurrentPageIndex = Convert.ToInt16(ViewState["d"].ToString());
            //pdf.AllowPaging = true;
            //pdf.PageSize = 2;
            //DataList1.DataSource = pdf;
            //DataList1.DataBind();

        }

        protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
        {
            switch (TabContainer1.ActiveTabIndex)
            {
                case 0:
                    FillRepeaterSearchArts();
                    break;

                case 1:
                    FillRepeaterSearchCommerce();
                    break;

                case 2:
                    repeatersearchscience.DataSource = PS.SearchCareerScience();
                    repeatersearchscience.DataBind();
                    break;

                case 3:
                    repeatersearchengineering.DataSource = PS.SearchCareerEngineering();
                    repeatersearchengineering.DataBind();
                    break;

                case 4:
                    repeatersearchbanking.DataSource = PS.SearchCereerBanking();
                    repeatersearchbanking.DataBind();
                    break;

                case 5:
                    repeatersearchcomputer.DataSource = PS.SearchCareerComputersAndIT();
                    repeatersearchcomputer.DataBind();
                    break;
            }
        }

        protected void repeatersearchcareerarts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatersearchcommerce_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatersearchscience_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatersearchengineering_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatersearchbanking_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatersearchcomputer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }
        //protected void btnPrev_Click(object sender, EventArgs e)
        //{
        //    if (Convert.ToInt16(ViewState["d"].ToString()) > 0)
        //    {
        //        ViewState["d"] = Convert.ToInt16(ViewState["d"].ToString()) - 1;
        //        FillRepeaterSearchCommerce();
        //        btnNext.Enabled = true;
        //    }
        //    else
        //    {
        //        btnPrev.Enabled = false;
        //    }

        //}
        //protected void btnNext_Click(object sender, EventArgs e)
        //{
        //        ViewState["d"] = Convert.ToInt16(ViewState["d"].ToString()) + 1;
        //        FillRepeaterSearchCommerce();
        //        btnPrev.Enabled = true;
        //}
    }
}