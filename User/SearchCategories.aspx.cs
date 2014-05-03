using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.User
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string QData = "";
                if (Request.QueryString["Category"] != null)
                {
                    QData = Request.QueryString["Category"].ToString();

                    switch (QData)
                    {
                        case "AnimationCollage":
                            repateranimation.DataSource = PS.SearchAnimationCollage();
                            repateranimation.DataBind();
                            break;

                        case "ArchitectureCollage":
                            repeaterarchitecture.DataSource = PS.SearchArchitecture();
                            repeaterarchitecture.DataBind();
                            break;

                        case "ArtsCollage":

                            repeaterarts.DataSource = PS.SearchArtsCollages();
                            repeaterarts.DataBind();
                            break;

                        case "CommerceCollage":
                            repeatercommerce.DataSource = PS.SearchCommerce();
                            repeatercommerce.DataBind();
                            break;

                        case "ScienceCollage":
                            repeaterscience.DataSource = PS.SearchScience();
                            repeaterscience.DataBind();
                            break;

                        case "EngineeringCollage":
                            repeaterengineering.DataSource = PS.SearchEngineering();
                            repeaterengineering.DataBind();
                            break;

                        case "BankingCollage":
                            repeaterbanking.DataSource = PS.SearchBanking();
                            repeaterbanking.DataBind();
                            break;

                        case "ComputerCollage":
                            repeateromputer.DataSource = PS.SearchComputer();
                            repeateromputer.DataBind();
                            break;

                        case "HotelCollage":
                            repeaterhotel.DataSource = PS.SearchHotel();
                            repeaterhotel.DataBind();
                            break;

                        case "BusinessCollage":
                            repeaterbusiness.DataSource = PS.SearchBusiness();
                            repeaterbusiness.DataBind();
                            break;

                        case "MedicalCollage":
                            repeatermedical.DataSource = PS.SearchMedical();
                            repeatermedical.DataBind();
                            break;

                        case "TravelCollage":
                            repeatertravel.DataSource = PS.SearchTravel();
                            repeatertravel.DataBind();
                            break;

                        case "ArtsCareer":
                            PS.CategoryId = Convert.ToInt16(10);
                            repeaterartscareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeaterartscareer.DataBind();
                            break;

                        case "CommerceCareer":
                            PS.CategoryId = Convert.ToInt16(5);
                            repeatercommercecareeer.DataSource = PS.SearchCareerInCategory(PS);
                            repeatercommercecareeer.DataBind();
                            break;

                        case "ScienceCareer":
                            PS.CategoryId = Convert.ToInt16(6);
                            repeatersciencecareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeatersciencecareer.DataBind();
                            break;

                        case "AnimationCareer":
                            PS.CategoryId = Convert.ToInt16(8);
                            repeateranimationcareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeateranimationcareer.DataBind();
                            break;

                        case "ArchitectureCareer":
                            PS.CategoryId = Convert.ToInt16(9);
                            repeaterarchitecturecareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeaterarchitecturecareer.DataBind();
                            break;

                        case "EngineeringCareer":
                            PS.CategoryId = Convert.ToInt16(7);
                            repeaterengineeringcareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeaterengineeringcareer.DataBind();
                            break;

                        case "BankingCareer":
                            PS.CategoryId = Convert.ToInt16(11);
                            repeaterbankingcareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeaterbankingcareer.DataBind();
                            break;

                        case "ComputerCareer":
                            PS.CategoryId = Convert.ToInt16(12);
                            repeatercomputercareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeatercomputercareer.DataBind();
                            break;

                        case "HotelCareer":
                            PS.CategoryId = Convert.ToInt16(13);
                            repeaterhotelcareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeaterhotelcareer.DataBind();
                            break;

                        case "BusinessCareer":
                            PS.CategoryId = Convert.ToInt16(14);
                            repeaterbusinesscareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeaterbusinesscareer.DataBind();
                            break;

                        case "MedicalCareer":
                            PS.CategoryId = Convert.ToInt16(15);
                            repeatermedicalcareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeatermedicalcareer.DataBind();
                            break;

                        case "TravelCareer":
                            PS.CategoryId = Convert.ToInt16(16);
                            repeatertravelcareer.DataSource = PS.SearchCareerInCategory(PS);
                            repeatertravelcareer.DataBind();
                            break;

                        case "Australia":
                            repeateraustralia.DataSource = PS.SearchCollagesAustralia();
                            repeateraustralia.DataBind();
                            break;

                        case "Canada":
                            repeatercanada.DataSource = PS.SearchCollagesCanada();
                            repeatercanada.DataBind();
                            break;

                        case "China":
                            repeaterchina.DataSource = PS.SearchCollagesChina();
                            repeaterchina.DataBind();
                            break;

                        case "NewZealand":
                            repeaternewzealand.DataSource = PS.SearchCollageNewZealand();
                            repeaternewzealand.DataBind();
                            break;

                        case "SouthAfrica":
                            repeatersouthafrica.DataSource = PS.SearchCollageSouthAfrica();
                            repeatersouthafrica.DataBind();
                            break;

                        case "USA":
                            repeaterusa.DataSource = PS.SearchCollageUSA();
                            repeaterusa.DataBind();
                            break;

                        case "UK":
                            repeateruk.DataSource = PS.SearchCollageUK();
                            repeateruk.DataBind();
                            break;

                        case "Russia":
                            repeaterrussia.DataSource = PS.SearchCollageRussia();
                            repeaterrussia.DataBind();
                            break;

                        case "Singapore":
                            repeatersingapore.DataSource = PS.SearchCollageSingapore();
                            repeatersingapore.DataBind();
                            break;

                        case "EngineeringExam":
                            PS.CategoryId = Convert.ToInt16(7);
                            repeaterengineeringexam.DataSource = PS.SearchEngineeringExam(PS);
                            repeaterengineeringexam.DataBind();
                            break;

                        case "MedicalExam":
                            PS.CategoryId = Convert.ToInt16(15);
                            repeatermedicalexam.DataSource = PS.SearchEngineeringExam(PS);
                            repeatermedicalexam.DataBind();
                            break;

                        case "PharmacyExam":
                            PS.CategoryId = Convert.ToInt16(15);
                            repeaterpharmacyexam.DataSource = PS.SearchEngineeringExam(PS);
                            repeaterpharmacyexam.DataBind();
                            break;
                    }
                }
            }
        }

        protected void repateranimation_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterarchitecture_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterarts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeatercommerce_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterscience_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterengineering_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterbanking_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeateromputer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterhotel_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterbusiness_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeatermedical_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeatertravel_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect(e.CommandArgument.ToString());
        }

        protected void repeaterartscareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatercommercecareeer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatersciencecareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeateranimationcareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeaterarchitecturecareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeaterengineeringcareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeaterbankingcareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatercomputercareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeaterhotelcareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeaterbusinesscareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatermedicalcareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeatertravelcareer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect("http://www.naukri.com");
            }
        }

        protected void repeateraustralia_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatercanada_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeaterchina_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeaternewzealand_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersouthafrica_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeaterusa_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }
        protected void repeateruk_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeaterrussia_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void repeatersingapore_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "MoreInfo")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
        }

        protected void lnkbtnartscollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ArtsCollage");
        }

        protected void lnkbtncommerce_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=CommerceCollage");
        }

        protected void lnkbtnsciencecollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ScienceCollage");
        }

        protected void lnkbtnanimation_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=AnimationCollage");
        }

        protected void lnkbtnarchitecture_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ArchitectureCollage");
        }

        protected void lnkbtnengineering_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=EngineeringCollage");
        }

        protected void lnkbtnbanking_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=BankingCollage");
        }

        protected void lnkbtncomputer_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=ComputerCollage");
        }

        protected void lnkbtnhotelmanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=HotelCollage");
        }

        protected void lnkbtnbusiness_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=BusinessCollage");
        }

        protected void lnkbtnmedical_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=MedicalCollage");
        }

        protected void lnkbtntravel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategories.aspx?Category=TravelCollage");
        }
    }
}