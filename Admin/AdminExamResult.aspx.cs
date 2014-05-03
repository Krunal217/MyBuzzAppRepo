using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBuzz_Cloud.Admin
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        E_BuzzProperties PS = new E_BuzzProperties();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrpExam();
                FillGridExamResult();
            }
        }

        public void FillDrpExam()
        {
            Drpexam.DataSource = PS.ShowExamination();
            Drpexam.DataTextField = "examname";
            Drpexam.DataValueField = "examid";
            Drpexam.DataBind();
            ListItem li = new ListItem();
            li.Text = "-- Select --";
            li.Value = "0";
            Drpexam.Items.Insert(0, li);
        }

        public void FillGridExamResult()
        {
            gridviewexamresult.DataSource = PS.SelectAllExamResult();
            gridviewexamresult.DataBind();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            FillGridExamResult();
            FillDrpExam();
        }
        protected void btnok_Click(object sender, EventArgs e)
        {

            if (fileuploadexamresult.HasFile)
            {
                //if (fileuploadexamresult.PostedFile.ContentType == "document/txt" || fileuploadexamresult.PostedFile.ContentType == "document/TXT" || fileuploadexamresult.PostedFile.ContentType == "document/doc" || fileuploadexamresult.PostedFile.ContentType == "document/DOC" || fileuploadexamresult.PostedFile.ContentType == "document/docx" || fileuploadexamresult.PostedFile.ContentType == "document/DOCX" || fileuploadexamresult.PostedFile.ContentType == "document/pdf" || fileuploadexamresult.PostedFile.ContentType == "document/PDF")
                //{
                PS.ExamId = Convert.ToInt16(Drpexam.SelectedItem.Value);
                PS.ExamResult = ("~/ExamResult/" + fileuploadexamresult.PostedFile.FileName);
                PS.InsertExamResult(PS);
                fileuploadexamresult.SaveAs(Server.MapPath(PS.ExamResult));
                FillGridExamResult();
                FillDrpExam();
                //}
                //else
                //{
                //    Response.Write("<script>alert('Please Select Result File In Valid Format Like(TXT,DOC,DOCX,PDF)');</script>");
                //}
            }
        }

        protected void gridviewexamresult_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label LblExam = (Label)gridviewexamresult.Rows[e.NewEditIndex].FindControl("Label1");

            gridviewexamresult.EditIndex = e.NewEditIndex;
            FillGridExamResult();

            DropDownList DrpExam = (DropDownList)gridviewexamresult.Rows[e.NewEditIndex].FindControl("DropDownList1");
            DrpExam.DataSource = PS.ShowExamination();
            DrpExam.DataTextField = "examname";
            DrpExam.DataValueField = "examid";
            DrpExam.DataBind();

            foreach (ListItem li in DrpExam.Items)
            {
                if (li.Text == LblExam.Text)
                {
                    li.Selected = true;
                }
            }
        }

        protected void gridviewexamresult_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewexamresult.EditIndex = -1;
            FillGridExamResult();
        }

        protected void gridviewexamresult_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload FileUploadExamResult = (FileUpload)gridviewexamresult.Rows[e.RowIndex].FindControl("FileUpload1");

            if (FileUploadExamResult.HasFile)
            {
                PS.ExamResultId = Convert.ToInt16(gridviewexamresult.DataKeys[e.RowIndex].Value);
                PS.ExamId = Convert.ToInt16(((DropDownList)gridviewexamresult.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value);
                PS.ExamResult = ("~/ExamResult/" + FileUploadExamResult.PostedFile.FileName);
                FileUploadExamResult.SaveAs(Server.MapPath(PS.ExamResult));
                PS.UpdateExamResult(PS);
                gridviewexamresult.EditIndex = -1;
                FillGridExamResult();
            }
        }

        protected void gridviewexamresult_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                CheckBox ChkAll = (CheckBox)gridviewexamresult.HeaderRow.FindControl("CheckBox2");
                if (ChkAll.Checked)
                {
                    PS.DeleteAllExamResult();
                }
                else
                {
                    for (int i = 0; i < gridviewexamresult.Rows.Count; i++)
                    {
                        CheckBox ChkDelete = (CheckBox)gridviewexamresult.Rows[i].FindControl("CheckBox1");
                        if (ChkDelete.Checked)
                        {
                            PS.ExamResultId = Convert.ToInt16(gridviewexamresult.DataKeys[i].Value);
                            PS.DeleteExamResult(PS);
                        }
                    }
                }
                FillGridExamResult();
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkAll = (CheckBox)gridviewexamresult.HeaderRow.FindControl("CheckBox2");

            if (ChkAll.Checked)
            {
                for (int i = 0; i < gridviewexamresult.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewexamresult.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = true;
                    ChkDelete.Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < gridviewexamresult.Rows.Count; i++)
                {
                    CheckBox ChkDelete = (CheckBox)gridviewexamresult.Rows[i].FindControl("CheckBox1");
                    ChkDelete.Checked = false;
                    ChkDelete.Enabled = true;
                }
            }
        }

        protected void gridviewexamresult_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewexamresult.PageIndex = e.NewPageIndex;
            FillGridExamResult();
        }
    }
}