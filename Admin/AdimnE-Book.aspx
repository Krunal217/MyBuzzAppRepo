<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="Admin_AdimnE_Book, App_Web_3lngnvem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <head id="Head1" runat="server">
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
                var SubCategory = document.getElementById('ContentPlaceHolder1_Drpsubcategory');
                var BookName = document.getElementById('ContentPlaceHolder1_txtbookname');
                var BookFile = document.getElementById('ContentPlaceHolder1_fileuploadbookfile');
                if (Category.value == 0) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Select Category";
                    popup('popUpDiv');
                    return false;
                }
                if (SubCategory.value == 0) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Select Sub Category";
                    popup('popUpDiv');
                    return false;
                }
                if (BookName.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Book Name";
                    popup('popUpDiv');
                    return false;
                }
                if (BookFile.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Select Book File";
                    popup('popUpDiv');
                    return false;
                }
                else {
                    return true;
                }
            }
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladmincollages" runat="server" Text="ENTER E-MATERIAL" Font-Size="X-Large"></asp:Label>
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
                    <td align="left">
                        <asp:DropDownList ID="Drpcategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drpcategory_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td align="right">
                        <asp:Label ID="lblsubcategory" runat="server" Text="Sub Category : "></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="Drpsubcategory" runat="server" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="lblbookname" runat="server" Text="Book Name : "></asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtbookname" runat="server" ></asp:TextBox>
                    </td>
                    <td align="right">
                        <asp:Label ID="lblbookfile" runat="server" Text="Book File : "></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="fileuploadbookfile" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="center">
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
                            <asp:GridView ID="gridviewebook" runat="server" Width="100%" HeaderStyle-Height="22px"
                                HeaderStyle-Font-Size="13px" AutoGenerateColumns="False" DataKeyNames="bookid"
                                ShowFooter="True" AllowPaging="True" OnPageIndexChanging="gridviewebook_PageIndexChanging"
                                OnRowCancelingEdit="gridviewebook_RowCancelingEdit" OnRowEditing="gridviewebook_RowEditing"
                                OnRowUpdating="gridviewebook_RowUpdating" PageSize="5" OnRowCommand="gridviewebook_RowCommand">
                                <Columns>
                                    <asp:TemplateField>
                                        <FooterTemplate>
                                            <asp:Button ID="Button1" runat="server" CommandName="DeleteAll" Text="Delete" />
                                        </FooterTemplate>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text="Select All"
                                                OnCheckedChanged="CheckBox2_CheckedChanged" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category Name">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# bind("categoryname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sub Category Name">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# bind("subcategoryname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Book Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("bookname") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# bind("bookname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Book File">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# bind("bookfile") %>'></asp:LinkButton>
                                            <br />
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName='<%# bind("bookfile") %>'
                                                CommandArgument='<%# bind("bookid") %>' Text='<%# bind("bookfile") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label4" runat="server" Text="No Record To Display....."></asp:Label>
                                </EmptyDataTemplate>
                                <HeaderStyle Font-Size="13px" Height="22px"></HeaderStyle>
                            </asp:GridView>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
