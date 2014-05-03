<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="AdminExamination, App_Web_3lngnvem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <head>
        <script src="../scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
        <script src="../scripts/jquery-ui-1.8.19.custom.min.js" type="text/javascript"></script>
        <link href="../styles/jquery-ui-1.8.19.custom.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="../scripts/jquery.ui.datepicker.js"></script>
        <style type="text/css">
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
            }#blanket
            {
              /*  background-color: #111;    */
                opacity: 0.65;
                position: absolute;
                z-index: 9001; /*ooveeerrrr nine thoussaaaannnd*/
                top: 0px;
                left: 0px;
                width: 100%;
            }
            #popUpDiv
            {
                position: absolute;
                color:Black;
                width: 190px;
                height: 53px;
                z-index: 9002; /*ooveeerrrr nine thoussaaaannnd*/
                border: 0px solid red;
                border-radius: 10px 10px 10px 10px;
                box-shadow: 0px 0px 10px black;
                font-family: Verdana;
                padding: 1%;
                margin-left:180px;
            }
            #ContentPlaceHolder1_Label1
            {
                color:Red;
                font-family:Verdana;
            }
        </style>
        <script src="../scripts/csspopup.js" type="text/javascript"></script>
        <script type="text/javascript" language="javascript">
            function Data() {
                var Category = document.getElementById('ContentPlaceHolder1_Drpcategory');
                var ExamName = document.getElementById('ContentPlaceHolder1_txtexamname');
                var ExamDate = document.getElementById('ContentPlaceHolder1_txtexamdate');
                var ExamDetail = document.getElementById('ContentPlaceHolder1_txtexamdetail');
                if (Category.value == 0) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Select Category";
                    popup('popUpDiv');
                    return false;
                }
                if (ExamName.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Exam Name";
                    popup('popUpDiv');
                    return false;
                }
                if (ExamDate.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Exam Date";
                    popup('popUpDiv');
                    return false;
                }
                if (ExamDetail.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Exam Details";
                    popup('popUpDiv');
                    return false;
                }
                else {
                    return true;
                }
            }
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("input[id$=txtexamdate]").datepicker({
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1990:2020'
                });

                $('#btnok').live("click", function () {
                    $("#errmsgDv").hide();
                    $(".dialog").hide();
                });
            });
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladmincollages" runat="server" Text="ENTER EXAM INFORMATION" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
    </table>
    <fieldset class="cls">
        <div align="center">
            <table style="border: 0px;">
                <tr>
                    <td align="right">
                        <asp:Label ID="lblcategory" runat="server" Text="Category : "></asp:Label>
                    </td>
                    <td style="color:Red;">*</td>
                    <td align="left">
                        <asp:DropDownList ID="Drpcategory" runat="server" >
                        </asp:DropDownList>
                    </td>
                    <td align="right">
                        <asp:Label ID="lblexamname" runat="server" Text="Exam Name : "></asp:Label>
                    </td>
                    <td style="color:Red;">*</td>
                    <td align="left">
                        <asp:TextBox ID="txtexamname" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="lblexamdate" runat="server" Text="Exam Date : "></asp:Label>
                    </td>
                    <td style="color:Red;">*</td>
                    <td align="left">
                        <asp:TextBox ID="txtexamdate" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="lblexamdetail" runat="server" Text="Exam Detail : "></asp:Label>
                    </td>
                    <td style="color:Red;">*</td>
                    <td>
                        <asp:TextBox ID="txtexamdetail" runat="server" TextMode="MultiLine" Width="145px"
                            Height="40px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="7" align="center">
                        <asp:Button ID="btnok" runat="server" Text="OK" OnClick="btnok_Click" OnClientClick="return Data(); " />
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                    </td>
                </tr>
            </table>
            <div id="blanket" style="display:none;"></div>
            <div id="popUpDiv" style="display: none;">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br /><br />
                <a href="#" onclick="popup('popUpDiv')">
                    <asp:Button ID="btnclose" runat="server" Text="OK" />
                </a>
            </div>
        </div>
        <table class="multicolumnGrid" style="margin-top: 0px;" align="center" width="100%">
            <tr align="left">
                <td colspan="5">
                    <div style="overflow: auto; height: 100%; width: 100%;">
                        <div style="width: 100%;">
                            <asp:GridView ID="gridviewexamination" runat="server" Width="100%" 
                                AutoGenerateColumns="False" ShowFooter="True" AllowPaging="True" 
                                onpageindexchanging="gridviewexamination_PageIndexChanging" 
                                onrowcancelingedit="gridviewexamination_RowCancelingEdit" 
                                onrowcommand="gridviewexamination_RowCommand" 
                                onrowediting="gridviewexamination_RowEditing" 
                                onrowupdating="gridviewexamination_RowUpdating" PageSize="5" 
                                DataKeyNames="examid">
                                <Columns>
                                    <asp:TemplateField>
                                        <FooterTemplate>
                                            <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="Delete" />
                                        </FooterTemplate>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Select All" 
                                                AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category Name">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# bind("categoryname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Exam Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("examname") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# bind("examname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Exam Date">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# bind("examdate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Exam Detail">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("examdetail") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# bind("examdetail") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label5" runat="server" Text="No Record To Display....."></asp:Label>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
