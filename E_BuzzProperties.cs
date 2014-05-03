using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EBuzz_Cloud
{
    public class E_BuzzProperties : E_BuzzDataService
    {
        //tblcountry

        public int CountryId { get; set; }
        public string CountryName { get; set; }

        //tblstate

        public int StateId { get; set; }
        public string StateName { get; set; }

        //tblcity

        public int CityId { get; set; }
        public string CityName { get; set; }

        //tblcategory

        public int CategoryId { get; set; }
        public string CategoryName { get; set; }

        //tblsubcategory

        public int SubCategoryId { get; set; }
        public string SubCategoryName { get; set; }

        //tblcollage

        public int CollageId { get; set; }
        public string CollageName { get; set; }
        public string CollageLink { get; set; }
        public string CollageDetail { get; set; }

        //tblcareer

        public int CareerId { get; set; }
        public string CareerName { get; set; }
        public string CareerDetail { get; set; }

        //tblebook

        public int BookId { get; set; }
        public string BookName { get; set; }
        public string BookFile { get; set; }

        //tblcontactus

        public int ContactId { get; set; }
        public string Name { get; set; }
        public string EmailId { get; set; }
        public decimal Mobileno { get; set; }
        public string Message { get; set; }
        public DateTime MessageDateTime { get; set; }

        //tblexamination

        public int ExamId { get; set; }
        public string ExamName { get; set; }
        public DateTime ExamDate { get; set; }
        public string ExamDetail { get; set; }

        //tblcategoryexamination

        public int QuestionId { get; set; }
        public string Question { get; set; }
        public string OptionA { get; set; }
        public string OptionB { get; set; }
        public string OptionC { get; set; }
        public string OptionD { get; set; }
        public string Answer { get; set; }

        //tblanswer

        public int AnswerID { get; set; }
        public string GivenAnswer { get; set; }
        public string CurrectAnswer { get; set; }
        public DateTime AnswerDate { get; set; }

        //tblstudentstuff

        public int StudentStuffID { get; set; }
        public string StudentName { get; set; }
        public int Marks { get; set; }
        public DateTime Date { get; set; }

        //tblexamresult

        public int ExamResultId { get; set; }
        public string ExamResult { get; set; }

        //tblregistration

        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public decimal MobileNo { get; set; }
        public string Gender { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Qualification { get; set; }
        public string Photos { get; set; }
        public string Resume { get; set; }
        public string SecurityQuestion { get; set; }
        public string SecurityAnswer { get; set; }
        public DateTime RegistrationDateTime { get; set; }
        public bool IsActive { get; set; }
    }
}