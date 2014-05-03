using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EBuzz_Cloud
{
    public class E_BuzzDataService
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;

        #region Country

        /// <summary>
        /// Purpose : To Insert Country Into tblcountry Table.
        /// </summary>
        /// <param name="@CountryName"></param>

        public void InsertCountry(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertCountry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CountryName", PS.CountryName);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Retrive All Country Name From tblcountry Table.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllCountry()
        {
            cmd = new SqlCommand("sp_SelectAllCountry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Update Country Name Into tblcountry Table.
        /// </summary>
        /// <param name="@CountryName"></param>
        /// <param name="@CountryID"></param>

        public void UpdateCountry(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateCountry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CountryName", PS.CountryName);
            cmd.Parameters.AddWithValue("@CountryID", PS.CountryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All Country Name Into tblcountry Table.
        /// </summary>

        public void DeleteAllCountry()
        {
            cmd = new SqlCommand("sp_DeleteAllCountry", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete Selected Country Name Into tblcountry Table.
        /// </summary>
        /// <param name="@CountryID"></param>

        public void DeleteCountry(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteCountry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CountryID", PS.CountryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        #endregion

        #region State

        /// <summary>
        /// Purpose : To Show All Country Data Into tblcountry Table.
        /// </summary>
        /// <returns></returns>

        public DataTable ShowCountry()
        {
            cmd = new SqlCommand("sp_ShowCountry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Retrive All State Data Where CointryID Is India From tblstate Table.
        /// </summary>
        /// <returns></returns>

        public DataTable ShowStateIndia()
        {
            cmd = new SqlCommand("sp_ShowStateIndia", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Insert Into State Data Into tblstate Table.
        /// </summary>
        /// <param name="@StateName"></param>
        /// <param name="@FK_CountryId"></param>

        public void InsertState(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertState", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StateName", PS.StateName);
            cmd.Parameters.AddWithValue("@FK_CountryId", PS.CountryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Select All State From tblstate.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllState()
        {
            cmd = new SqlCommand("sp_SelectAllState", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Update State Data Into tblstate Table.
        /// </summary>
        /// <param name="@StateName"></param>
        /// <param name="@FK_CountryID"></param>
        /// <param name="@StateId"></param>

        public void UpdateState(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateState", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StateName", PS.StateName);
            cmd.Parameters.AddWithValue("@FK_CountryID", PS.CountryId);
            cmd.Parameters.AddWithValue("@StateId", PS.StateId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All State From tblstate Table.
        /// </summary>

        public void DeleteAllState()
        {
            cmd = new SqlCommand("sp_DeleteAllState", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purrpose : To Delete Selected Data From tblstate Table.
        /// </summary>
        /// <param name="PS"></param>

        public void DeleteState(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteState", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StateID", PS.StateId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        #endregion

        #region City

        /// <summary>
        /// Purpose : To Retrive StateName From tblstate.
        /// </summary>
        /// <param name="@FK_CountryID"></param>
        /// <returns></returns>

        public DataTable ShowState()
        {
            cmd = new SqlCommand("sp_ShowState", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Retrive All City Data Into tblcity.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllCity()
        {
            cmd = new SqlCommand("sp_SelectAllCity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Insert City Data Into tblcity.
        /// </summary>
        /// <param name="@CityName"></param>
        /// <param name="@FK_StateID"></param>

        public void InsertCity(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertCity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CityName", PS.CityName);
            cmd.Parameters.AddWithValue("@FK_StateID", PS.StateId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Update All City Data Into tblcity.
        /// </summary>
        /// <param name="@CityName"></param>
        /// <param name="@FK_StateID"></param>
        /// <param name="@CityID"></param>

        public void UpdateCity(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateCity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CityName", PS.CityName);
            cmd.Parameters.AddWithValue("@FK_StateID", PS.StateId);
            cmd.Parameters.AddWithValue("@CityID", PS.CityId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All City Data Into tblcity.
        /// </summary>
        /// <param name="PS"></param>

        public void DeleteAllCity()
        {
            cmd = new SqlCommand("sp_DeleteAllCity", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete Selected Data From tblcity.
        /// </summary>
        /// <param name="@CityID"></param>

        public void DeleteCity(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteCity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CityID", PS.CityId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        #endregion

        #region Category

        /// <summary>
        /// Purpose : To Insert Category Data Into tblcategory.
        /// </summary>
        /// <param name="@CategoryName"></param>

        public void InsertCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryName", PS.CategoryName);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Select All Category from tblcategory.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllCategory()
        {
            cmd = new SqlCommand("sp_SelectAllCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Update Category Data Into tblcategory.
        /// </summary>
        /// <param name="@CategoryName"></param>
        /// <param name="@CategoryID"></param>

        public void UpdateCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryName", PS.CategoryName);
            cmd.Parameters.AddWithValue("@CategoryID", PS.CategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All Category Data Into tblcategory.
        /// </summary>

        public void DeleteAllCategory()
        {
            cmd = new SqlCommand("sp_DeleteAllCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            cmd.Clone();
        }

        /// <summary>
        /// Purpose : To Delete Selected Category Data Into tblcategory.
        /// </summary>
        /// <param name="@CategoryID"></param>

        public void DeleteCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryID", PS.CategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        #endregion

        #region SubCategory

        /// <summary>
        /// Purpose : To Retrive Category Data From tblcategory.
        /// </summary>
        /// <returns></returns>

        public DataTable ShowCategory()
        {
            cmd = new SqlCommand("sp_ShowCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Insert Sub Category Data Into tblsubcategory Table.
        /// </summary>
        /// <param name="@SubCategoryName"></param>
        /// <param name="@FK_CategoryID"></param>

        public void InsertSubCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubCategoryName", PS.SubCategoryName);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Select All Sub Category Data From tblsubcategory.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllSubCategory()
        {
            cmd = new SqlCommand("sp_SelectAllSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Update Sub Category Data Into tblsubcategory Table.
        /// </summary>
        /// <param name="@SubCategoryName"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@SubCategoryID"></param>

        public void UpdateSubCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubCategoryName", PS.SubCategoryName);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@SubCategoryID", PS.SubCategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All Sub Category Data From tblsubcategory Table.
        /// </summary>

        public void DeleteAllSubCategory()
        {
            cmd = new SqlCommand("sp_DeleteAllSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete Selected Sub Category Data From tblsubcategory Table.
        /// </summary>
        /// <param name="PS"></param>

        public void DeleteSubCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubCategoryID", PS.SubCategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        #endregion

        #region Collage

        /// <summary>
        /// Purpose : To Retrive All Sub Category Data From tblsubcategory table.
        /// </summary>
        /// <param name="@FK_CategoryID"></param>
        /// <returns></returns>

        public DataTable ShowSubCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_ShowSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Retrive All Collage Data From tblcollage Table.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllCollage()
        {
            cmd = new SqlCommand("sp_SelectAllCollage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Insert Collage Data Into tblcollage Table.
        /// </summary>
        /// <param name="@CollageName"></param>
        /// <param name="@CollageDetail"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@FK_SubCategoryID"></param>

        public void InsertCollage(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertCollage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CollageName", PS.CollageName);
            cmd.Parameters.AddWithValue("@CollageLink", PS.CollageLink);
            cmd.Parameters.AddWithValue("@CollageDetail", PS.CollageDetail);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@FK_SubCategoryID", PS.SubCategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Update Collage Data Into tblcollage Table.
        /// </summary>
        /// <param name="@CollageName"></param>
        /// <param name="@CollageDetail"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@FK_SubCategoryID"></param>
        /// <param name="@CollageID"></param>

        public void UpdateCollage(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateCollage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CollageName", PS.CollageName);
            cmd.Parameters.AddWithValue("@CollageLink", PS.CollageLink);
            cmd.Parameters.AddWithValue("@CollageDetail", PS.CollageDetail);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@FK_SubCategoryID", PS.SubCategoryId);
            cmd.Parameters.AddWithValue("@CollageID", PS.CollageId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All Collage Data Into tblcollage Table.
        /// </summary>

        public void DeleteAllCollage()
        {
            cmd = new SqlCommand("sp_DeleteAllCollage", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteCollage(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteCollage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CollageID", PS.CollageId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SearchCollages(E_BuzzProperties PS)
        {
            //cmd = new SqlCommand("sp_SearchCollages", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            cmd = new SqlCommand("Select * from tblcollage c  where c.fkcategoryid=@FK_CategoryID AND c.collagedetail like '%" + PS.StateName + "%'", con);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            //cmd.Parameters.AddWithValue("@StateName", PS.StateName);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollagesAustralia()
        {
            cmd = new SqlCommand("sp_SearchCollagesAustralia", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollagesCanada()
        {
            cmd = new SqlCommand("sp_SearchCollagesCanada", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollagesChina()
        {
            cmd = new SqlCommand("sp_SearchCollagesChina", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollageNewZealand()
        {
            cmd = new SqlCommand("sp_SearchCollageNewZealand", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollageSouthAfrica()
        {
            cmd = new SqlCommand("sp_SearchCollageSouthAfrica", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollageUSA()
        {
            cmd = new SqlCommand("sp_SearchCollageUSA", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollageUK()
        {
            cmd = new SqlCommand("sp_SearchCollageUK", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollageRussia()
        {
            cmd = new SqlCommand("sp_SearchCollageRussia", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCollageSingapore()
        {
            cmd = new SqlCommand("sp_SearchCollageSingapore", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchAnimationCollage()
        {
            cmd = new SqlCommand("sp_SearchAnimationCollage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchArchitecture()
        {
            cmd = new SqlCommand("sp_SearchArchitecture", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchArtsCollages()
        {
            cmd = new SqlCommand("sp_SearchArtsCollages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCommerce()
        {
            cmd = new SqlCommand("sp_SearchCommerce", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchScience()
        {
            cmd = new SqlCommand("sp_SearchScience", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchEngineering()
        {
            cmd = new SqlCommand("sp_SearchEngineering", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchBanking()
        {
            cmd = new SqlCommand("sp_SearchBanking", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchComputer()
        {
            cmd = new SqlCommand("sp_SearchComputer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            return dt;
        }

        public DataTable SearchHotel()
        {
            cmd = new SqlCommand("sp_SearchHotel", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchBusiness()
        {
            cmd = new SqlCommand("sp_SearchBusiness", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchMedical()
        {
            cmd = new SqlCommand("sp_SearchMedical", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchTravel()
        {
            cmd = new SqlCommand("sp_SearchTravel", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion

        #region Career

        /// <summary>
        /// Purpose : to Insert Career Data Into tblcareer Table.
        /// </summary>
        /// <param name="@CareerName"></param>
        /// <param name="@CareerDetails"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@FK_SubCategoryID"></param>

        public void InsertCareeer(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertCareeer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CareerName", PS.CareerName);
            cmd.Parameters.AddWithValue("@CareerDetails", PS.CareerDetail);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@FK_SubCategoryID", PS.SubCategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Retrive All Career Data From tblcareer Table.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllCareer()
        {
            cmd = new SqlCommand("sp_SelectAllCareer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Update Career Data Into tblcareer Table.
        /// </summary>
        /// <param name="@CareerName"></param>
        /// <param name="@CareerDetails"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@CareerID"></param>

        public void UpdateCareer(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateCareer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CareerName", PS.CareerName);
            cmd.Parameters.AddWithValue("@CareerDetails", PS.CareerDetail);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@FK_SubcategoryID", PS.SubCategoryId);
            cmd.Parameters.AddWithValue("@CareerID", PS.CareerId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All Career Data From tblcareer Table.
        /// </summary>

        public void DeleteAllCareer()
        {
            cmd = new SqlCommand("sp_DeleteAllCareer", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteCareer(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteCareer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CareerID", PS.CareerId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SearchCareerArts()
        {
            cmd = new SqlCommand("sp_SearchCareerArts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCareerCommerce()
        {
            cmd = new SqlCommand("sp_SearchCareerCommerce", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataSet SearchCareerCommerce1()
        {
            cmd = new SqlCommand("sp_SearchCareerCommerce", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataTable SearchCareerScience()
        {
            cmd = new SqlCommand("sp_SearchCareerScience", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCareerEngineering()
        {
            cmd = new SqlCommand("sp_SearchCareerEngineering", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCereerBanking()
        {
            cmd = new SqlCommand("sp_SearchCereerBanking", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCareerComputersAndIT()
        {
            cmd = new SqlCommand("sp_SearchCareerComputersAndIT", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchCareerInCategory(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SearchCareerInCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion.

        #region EBook

        /// <summary>
        /// Purpose : To Insert EBook Data Into tblebook Table.
        /// </summary>
        /// <param name="@BookName"></param>
        /// <param name="@BookFile"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@FK_SubCategoryID"></param>

        public void InsertEBook(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertEBook", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookName", PS.BookName);
            cmd.Parameters.AddWithValue("@BookFile", PS.BookFile);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@FK_SubCategoryID", PS.SubCategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Retrive All EBook Data From tblebook Table.
        /// </summary>
        /// <returns></returns>

        public DataTable SelectAllEBook()
        {
            cmd = new SqlCommand("sp_SelectAllEBook", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Update EBook Data Into tblebook Table.
        /// </summary>
        /// <param name="@BookName"></param>
        /// <param name="@BookFile"></param>
        /// <param name="@FK_CategoryID"></param>
        /// <param name="@FK_SubCategoryID"></param>
        /// <param name="@BookID"></param>

        public void UpdateEBook(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateEBook", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookName", PS.BookName);
            cmd.Parameters.AddWithValue("@BookFile", PS.BookFile);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@FK_SubCategoryID", PS.SubCategoryId);
            cmd.Parameters.AddWithValue("@BookID", PS.BookId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete All EBook Data From tblebook Table.
        /// </summary>

        public void DeleteAllEBook()
        {
            cmd = new SqlCommand("sp_DeleteAllEBook", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Delete Selected EBook Data From tblebook Table.
        /// </summary>
        /// <param name="@BookID"></param>

        public void DeleteEBook(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteEBook", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookID", PS.BookId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SearchEBook(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SearchEBook", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@FK_SubCategoryID", PS.SubCategoryId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion

        #region Registration

        /// <summary>
        /// Purpose : To Retrive All State Data From tblstate Table.
        /// </summary>
        /// <param name="@FK_CountryID"></param>
        /// <returns></returns>

        public DataTable ShowStateReg(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_ShowStateReg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CountryID", PS.CountryId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Retrive All City Data From tblcity Table.
        /// </summary>
        /// <param name="@FK_StateID"></param>
        /// <returns></returns>

        public DataTable ShowCity(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_ShowCity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_StateID", PS.StateId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void InsertRegistration(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", PS.FirstName);
            cmd.Parameters.AddWithValue("@LastName", PS.LastName);
            cmd.Parameters.AddWithValue("@UserName", PS.UserName);
            cmd.Parameters.AddWithValue("@Password", PS.Password);
            cmd.Parameters.AddWithValue("@Email", PS.Email);
            cmd.Parameters.AddWithValue("@MobileNo", PS.MobileNo);
            cmd.Parameters.AddWithValue("@Gender", PS.Gender);
            cmd.Parameters.AddWithValue("@DOB", PS.DateOfBirth);
            cmd.Parameters.AddWithValue("@SecurityQuestion", PS.SecurityQuestion);
            cmd.Parameters.AddWithValue("@SecurityAnswer", PS.SecurityAnswer);
            cmd.Parameters.AddWithValue("@RegDateTime", System.DateTime.Now);
            cmd.Parameters.AddWithValue("@IsActive", true);
            cmd.Parameters.AddWithValue("@UserPhoto", PS.Photos);
            cmd.Parameters.AddWithValue("@UserResume", PS.Resume);
            cmd.Parameters.AddWithValue("@FK_CountryID", PS.CountryId);
            cmd.Parameters.AddWithValue("@FK_StateID", PS.StateId);
            cmd.Parameters.AddWithValue("@FK_CityID", PS.CityId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SelectAllRegistration()
        {
            cmd = new SqlCommand("sp_SelectAllRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Change Password For Selected User Into tblregistration Table.
        /// </summary>
        /// <param name="@Password"></param>
        /// <param name="@UserName"></param>
        /// <param name="@UserID"></param>

        public void ChangePassword(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_ChangePassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Password", PS.Password);
            cmd.Parameters.AddWithValue("@UserName", PS.UserName);
            cmd.Parameters.AddWithValue("@UserID", PS.UserId);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SelectSecurityQuestion(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SelectSecurityQuestion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", PS.Email);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SelectPassword(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SelectPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", PS.Email);
            cmd.Parameters.AddWithValue("@SecurityQuestion", PS.SecurityQuestion);
            cmd.Parameters.AddWithValue("@SecurityAnswer", PS.SecurityAnswer);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion

        #region LogIn

        /// <summary>
        /// Purpose : To Retrive User Data From tblregistration Table.
        /// </summary>
        /// <param name="@UserName"></param>
        /// <param name="@Password"></param>
        /// <returns></returns>

        public DataTable UserLogInData(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UserLogInData", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", PS.Email);
            cmd.Parameters.AddWithValue("@Password", PS.Password);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Purpose : To Retrive User Profile Data From tblregistration Table.
        /// </summary>
        /// <param name="@UserID"></param>
        /// <returns></returns>

        public DataTable UserProfile(int UserID)
        {
            cmd = new SqlCommand("sp_UserProfile", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", UserID);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void UpdateUserProfile(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateUserProfile", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", PS.FirstName);
            cmd.Parameters.AddWithValue("@LastName", PS.LastName);
            cmd.Parameters.AddWithValue("@UserName", PS.UserName);
            cmd.Parameters.AddWithValue("@Email", PS.Email);
            cmd.Parameters.AddWithValue("@MobileNo", PS.MobileNo);
            cmd.Parameters.AddWithValue("@Gender", PS.Gender);
            cmd.Parameters.AddWithValue("@DOB", PS.DateOfBirth);
            cmd.Parameters.AddWithValue("@Photo", PS.Photos);
            cmd.Parameters.AddWithValue("@Resume", PS.Resume);
            cmd.Parameters.AddWithValue("@SecurityQuestion", PS.SecurityQuestion);
            cmd.Parameters.AddWithValue("@SecurityAnswer", PS.SecurityAnswer);
            cmd.Parameters.AddWithValue("@FK_CountryID", PS.CountryId);
            cmd.Parameters.AddWithValue("@FK_StateID", PS.StateId);
            cmd.Parameters.AddWithValue("@FK_CityID", PS.CityId);
            cmd.Parameters.AddWithValue("@UserID", PS.UserId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Update User Block Into tblregistration Table.
        /// </summary>
        /// <param name="@UserID"></param>

        public void BlockUser(int UserID)
        {
            cmd = new SqlCommand("sp_BlockUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", UserID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /// <summary>
        /// Purpose : To Update User IsActive Into tblregistration Table.
        /// </summary>
        /// <param name="@UserID"></param>

        public void IsActiveUser(int UserID)
        {
            cmd = new SqlCommand("sp_IsActiveUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", UserID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        #endregion

        #region ContactUs

        public void InsertContactUs(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertContactUs", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", PS.Name);
            cmd.Parameters.AddWithValue("@Email", PS.EmailId);
            cmd.Parameters.AddWithValue("@MobileNo", PS.Mobileno);
            cmd.Parameters.AddWithValue("@Message", PS.Message);
            cmd.Parameters.AddWithValue("@MessageDateTime", DateTime.Now);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SelectAllContactUs()
        {
            cmd = new SqlCommand("sp_SelectAllContactUs", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion

        #region Examination

        public void InsertExamination(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ExamName", PS.ExamName);
            cmd.Parameters.AddWithValue("@ExamDateTime", PS.ExamDate);
            cmd.Parameters.AddWithValue("@ExamDetail", PS.ExamDetail);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SelectAllExamination()
        {
            cmd = new SqlCommand("sp_SelectAllExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void UpdateExamination(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ExamName", PS.ExamName);
            cmd.Parameters.AddWithValue("@ExamDetail", PS.ExamDetail);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@ExamID", PS.ExamId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteAllExamination()
        {
            cmd = new SqlCommand("sp_DeleteAllExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteExamination(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ExamID", PS.ExamId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SearchExamination(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SearchExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SearchEngineeringExam(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SearchEngineeringExam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion

        #region CategoryExamination

        public void InsertCategoryExamination(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertCategoryExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Question", PS.Question);
            cmd.Parameters.AddWithValue("@OptionA", PS.OptionA);
            cmd.Parameters.AddWithValue("@OptionB", PS.OptionB);
            cmd.Parameters.AddWithValue("@OptionC", PS.OptionC);
            cmd.Parameters.AddWithValue("@OptionD", PS.OptionD);
            cmd.Parameters.AddWithValue("@Answer", PS.Answer);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SelectAllCategoryExamination()
        {
            cmd = new SqlCommand("sp_SelectAllCategoryExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void UpdateCategoryExamination(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateCategoryExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Question", PS.Question);
            cmd.Parameters.AddWithValue("@OptionA", PS.OptionA);
            cmd.Parameters.AddWithValue("@OptionB", PS.OptionB);
            cmd.Parameters.AddWithValue("@OptionC", PS.OptionC);
            cmd.Parameters.AddWithValue("@OptionD", PS.OptionD);
            cmd.Parameters.AddWithValue("@Answer", PS.Answer);
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@QuestionID", PS.QuestionId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteAllCategoryExamination()
        {
            cmd = new SqlCommand("sp_DeleteAllCategoryExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteCategoryExamination(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteCategoryExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@QuestionID", PS.QuestionId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable GetQuestionByCat(int CatID)
        {
            cmd = new SqlCommand("sp_GetQuestionByCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CategoryID", CatID);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion

        #region StudentStuff

        public void SubmitStudentStuff(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SubmitStudentStuff", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_CategoryID", PS.CategoryId);
            cmd.Parameters.AddWithValue("@StudentName", PS.StudentName);
            cmd.Parameters.AddWithValue("@Marks", PS.Marks);
            cmd.Parameters.AddWithValue("@Date", DateTime.Now);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        #endregion

        #region ExamResult

        public DataTable ShowExamination()
        {
            cmd = new SqlCommand("sp_ShowExamination", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void InsertExamResult(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_InsertExamResult", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ExamResult", PS.ExamResult);
            cmd.Parameters.AddWithValue("@FK_ExamID", PS.ExamId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SelectAllExamResult()
        {
            cmd = new SqlCommand("sp_SelectAllExamResult", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void UpdateExamResult(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_UpdateExamResult", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ExamResult", PS.ExamResult);
            cmd.Parameters.AddWithValue("@FK_ExamID", PS.ExamId);
            cmd.Parameters.AddWithValue("@ExamResultID", PS.ExamResultId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteAllExamResult()
        {
            cmd = new SqlCommand("sp_DeleteAllExamResult", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteExamResult(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_DeleteExamResult", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ExamResultID", PS.ExamResultId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SearchExamResult(E_BuzzProperties PS)
        {
            cmd = new SqlCommand("sp_SearchExamResult", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_ExamID", PS.ExamId);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        #endregion
    }
}