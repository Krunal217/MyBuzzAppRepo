<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="Admin_AdminCategoryExamination, App_Web_3lngnvem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <head>
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
            }
            #blanket
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
                color: Black;
                width: 190px;
                height: 53px;
                z-index: 9002; /*ooveeerrrr nine thoussaaaannnd*/
                border: 0px solid red;
                border-radius: 10px 10px 10px 10px;
                box-shadow: 0px 0px 10px black;
                font-family: Verdana;
                padding: 1%;
                margin-left: 180px;
            }
            #ContentPlaceHolder1_Label1
            {
                color: Red;
                font-family: Verdana;
            }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladminstate" runat="server" Text="ENTER QUESTION" Font-Size="X-Large"></asp:Label>
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
                    <td style="color: Red;">
                        *
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="drpcategory" runat="server" Width="100%">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblquestion" runat="server" Text="Enter Question : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="txtquestion" runat="server" TextMode="MultiLine" Width="320px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbloptiona" runat="server" Text="Enter Option A : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td>
                        <asp:TextBox ID="txtoptiona" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbloptionb" runat="server" Text="Enter Option B : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td>
                        <asp:TextBox ID="txtoptionb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbloptionc" runat="server" Text="Enter Option C : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td>
                        <asp:TextBox ID="txtoptionc" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbloptiond" runat="server" Text="Enter Option D : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td>
                        <asp:TextBox ID="txtoptiond" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblanswer" runat="server" Text="Correct Answer : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td>
                        <asp:DropDownList ID="drpanswer" runat="server">
                            <asp:ListItem>Select Correct Answer</asp:ListItem>
                            <asp:ListItem>Option A</asp:ListItem>
                            <asp:ListItem>Option B</asp:ListItem>
                            <asp:ListItem>Option C</asp:ListItem>
                            <asp:ListItem>Option D</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="center">
                        <asp:Button ID="btnok" runat="server" Text="OK" OnClick="btnok_Click" />
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <table class="multicolumnGrid" style="margin-top: 0px;" align="center" width="100%">
            <tr align="left">
                <td colspan="5">
                    <div style="overflow: auto; height: 100%; width: 100%;">
                        <div style="width: 100%;">
                            <asp:GridView ID="gridviewcategoryexamination" runat="server" Width="100%" AllowPaging="True"
                                AutoGenerateColumns="False" DataKeyNames="questionid" OnPageIndexChanging="gridviewcategoryexamination_PageIndexChanging"
                                OnRowCancelingEdit="gridviewcategoryexamination_RowCancelingEdit" OnRowCommand="gridviewcategoryexamination_RowCommand"
                                OnRowEditing="gridviewcategoryexamination_RowEditing" OnRowUpdating="gridviewcategoryexamination_RowUpdating"
                                PageSize="5" ShowFooter="True">
                                <Columns>
                                    <asp:TemplateField>
                                        <FooterTemplate>
                                            <asp:Button ID="Button1" runat="server" CommandName="DeleteAll" Text="Delete" />
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
                                    <asp:TemplateField HeaderText="Question">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("question") %>' TextMode="MultiLine"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# bind("question") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Option A">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("optiona") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# bind("optiona") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Option B">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("optionb") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# bind("optionb") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Option C">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("optionc") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# bind("optionc") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Option D">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("optiond") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# bind("optiond") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Currect Answer">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                <asp:ListItem>Select Correct Answer</asp:ListItem>
                                                <asp:ListItem>Option A</asp:ListItem>
                                                <asp:ListItem>Option B</asp:ListItem>
                                                <asp:ListItem>Option C</asp:ListItem>
                                                <asp:ListItem>Option D</asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# bind("answer") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label8" runat="server" Text="No Record To Display....."></asp:Label>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
