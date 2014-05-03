using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Visitors
{
    public partial class Visitor : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void lnkbtnanimation_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=AnimationCollage");
        }

        protected void lnkbtnarchitecture_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArchitectureCollage");
        }

        protected void lnkbtnartscollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArtsCollage");
        }

        protected void lnkbtncommerce_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=CommerceCollage");
        }

        protected void lnkbtnsciencecollages_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ScienceCollage");
        }

        protected void lnkbtnengineering_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=EngineeringCollage");
        }

        protected void lnkbtnbanking_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BankingCollage");
        }

        protected void lnkbtncomputer_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ComputerCollage");
        }

        protected void lnkbtnhotelmanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=HotelCollage");
        }

        protected void lnkbtnbusiness_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BusinessCollage");
        }

        protected void lnkbtnmedical_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=MedicalCollage");
        }

        protected void lnkbtntravel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=TravelCollage");
        }

        protected void lnkbtnartscareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArtsCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtncommercecareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=CommerceCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnsciencecareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ScienceCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnanimationcareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=AnimationCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnarchitecturecareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArchitectureCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnengineeringcareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=EngineeringCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnbankingcareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BankingCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtncomputercareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ComputerCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnhotelcareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=HotelCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnbusinesscareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BusinessCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnmedicalcareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=MedicalCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtntravelcareer_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=TravelCareer&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnaustralia_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Australia");
        }

        protected void lnkbtncanada_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Canada");
        }

        protected void lnkbtnchina_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=China");
        }

        protected void lnkbtnnewzealand_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=NewZealand");
        }

        protected void lnkbtmsouthafrica_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=SouthAfrica");
        }

        protected void lnkbtnusa_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=USA");
        }

        protected void lnkbtnuk_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=UK");
        }

        protected void lnkbtnrussia_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Russia");
        }

        protected void lnkbtnsingapore_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Singapore");
        }

        protected void lnkbtnengineeringexam_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=EngineeringExam&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnmedicalexam_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=MedicalExam&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnpharmacyexam_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=PharmacyExam&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnematerial_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Visitors/SearchE-Book.aspx");
        }

        protected void lnkbtnexmresult_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Visitors/SearchExamResult.aspx");
        }

        protected void lnkbtnarts1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArtsCollage");
        }

        protected void lmkbtncommerce1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=CommerceCollage");
        }

        protected void lnkbtnscience1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ScienceCollage");
        }

        protected void lnkbtnanimation1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=AnimationCollage");
        }

        protected void lnkbtnarchitecture1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ArchitectureCollage");
        }

        protected void lnkbtnengineering1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=EngineeringCollage");
        }

        protected void lnkbtnbanking1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BankingCollage");
        }

        protected void lnkbtncomputer1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=ComputerCollage");
        }

        protected void lnkbtnhotel1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=HotelCollage");
        }

        protected void lnkbtnmanagement1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=BusinessCollage");
        }

        protected void lnkbtnmedical1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=MedicalCollage");
        }

        protected void lnkbtntravel1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=TravelCollage");
        }

        protected void lnkbtncareerengineering1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=EngineeringExam&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtncareermedical_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=MedicalExam&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtncareerpharmacy_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=PharmacyExam&ID=" + e.CommandArgument.ToString());
        }

        protected void lnkbtnematerials1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Visitors/SearchE-Book.aspx");
        }

        protected void lnkbtnexamresult1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Visitors/SearchExamResult.aspx");
        }

        protected void lnkbtnaustralia1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Australia");
        }

        protected void lnkbtncanada1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Canada");
        }

        protected void lnkbtnchina1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=China");
        }

        protected void lnkbtnnewzealand1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=NewZealand");
        }

        protected void lnkbtnsouthafrica1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=SouthAfrica");
        }

        protected void lnkbtnusa1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=USA");
        }

        protected void lnkbtnuk1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=UK");
        }

        protected void lnkbtnrussia1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Russia");
        }

        protected void lnkbtnsingapore1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCategories.aspx?Category=Singapore");
        }
    }
}