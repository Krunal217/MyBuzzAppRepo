<%@ page title="" language="C#" masterpagefile="~/User (Student)/HomeMaster.master" autoeventwireup="true" inherits="User__Student_UserStartExam, App_Web_htqrhh3e" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .drp
        {
            width: 100%;
            box-shadow: 1px 1px 1px black;
            height: 100%px;
            margin-left: 2%;
            margin-top: 1%;
            border-radius: 25px;
        }
        .cls
        {
            border: 0px solid gray;
            width: 100%;
            height: auto;
            padding: 15px;
            margin-top: 30px;
            margin-left: 95px;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 0px 0px 20px #072C53;
            margin: 5px 0px 0px 0px;
        }
        #reg
        {
            margin: 5px 0px 0px 295px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <fieldset class="cls">
        <div style="width: 100%; height: auto;">
            <cc1:TabContainer ID="TabContainer1" runat="server" TabIndex="0">
                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Self Assesment" TabIndex="0">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="drpcategory" runat="server" Width="100%"  AutoPostBack="true"
                                        onselectedindexchanged="drpcategory_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:Button ID="btnexam" runat="server" Text="Start Exam" 
                                        onclick="btnexam_Click" OnClientClick="return !window.open('UserStartExam.aspx','Krunal Chavada','directories=no,titlebar=no,toolbar=no,location=no,menubar=no,scrollbars=yes,fullscreen=yes')" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
        </div>
    </fieldset>
</asp:Content>
