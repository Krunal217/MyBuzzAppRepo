using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillRepeaterSearchAustralia();
            }
        }

        public void FillRepeaterSearchAustralia()
        {
            repeatersearchaustralia.DataSource = PS.SearchCollagesAustralia();
            repeatersearchaustralia.DataBind();
        }

        protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
        {
            // Label1.Text= TabContainer1.ActiveTabIndex.ToString();

            switch (TabContainer1.ActiveTabIndex)
            {
                case 0:
                    FillRepeaterSearchAustralia();
                    break;

                case 1:
                    repeatersearchcanada.DataSource = PS.SearchCollagesCanada();
                    repeatersearchcanada.DataBind();
                    break;

                case 2:
                    repeatersearchchina.DataSource = PS.SearchCollagesChina();
                    repeatersearchchina.DataBind();
                    break;

                case 3:
                    repeatersearchnewzealand.DataSource = PS.SearchCollageNewZealand();
                    repeatersearchnewzealand.DataBind();
                    break;

                case 4:
                    repeatersearchsouthafrica.DataSource = PS.SearchCollageSouthAfrica();
                    repeatersearchsouthafrica.DataBind();
                    break;

                case 5:
                    repeatersearchusa.DataSource = PS.SearchCollageUSA();
                    repeatersearchusa.DataBind();
                    break;

                case 6:
                    repeatersearchuk.DataSource = PS.SearchCollageUK();
                    repeatersearchuk.DataBind();
                    break;

                case 7:
                    repeatersearchrussia.DataSource = PS.SearchCollageRussia();
                    repeatersearchrussia.DataBind();
                    break;

                case 8:
                    repeatersearchsingapore.DataSource = PS.SearchCollageSingapore();
                    repeatersearchsingapore.DataBind();
                    break;

            }
        }

        protected void repeatersearchaustralia_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchcanada_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchchina_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchnewzealand_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchsouthafrica_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchusa_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchuk_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchrussia_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersearchsingapore_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }
    }
}