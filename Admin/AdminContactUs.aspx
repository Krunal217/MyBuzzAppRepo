<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="Admin_AdminContactUs, App_Web_3lngnvem" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <head>
        <style type="text/css">
            .addres
            {
                overflow: hidden;
                padding-bottom: 40px;
                width: 100%;
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
        <script type="text/javascript">
            function download(file) {
                window.location = file;
            }
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladmincollages" runat="server" Text="CONTACT US" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
    </table>
    <fieldset class="cls">
        <div style="width: 100%; height: auto;">
            <div class="addres">
                <table border="0px;">
                    <tr>
                        <td rowspan="7">
                            <strong>E-Buzz</storng><br />
                                <address>
                                    <p>
                                        4th Floor Amruta Arcade,<br />
                                        Nr Maninagar Station,<br />
                                        Ahmedabad,<br />
                                        GUJARAT-380008
                                        <br />
                                        Mobile : 099 74 863333<br />
                                        Email : chavadakrunal@gmail.com
                                    </p>
                                </address>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Style="display: none; margin: 5px 5px 5px 5px;
            border-radius: 10px 10px 10px 10px; box-shadow: 0px 0px 10px gray;">
            <div style="text-align: center; margin: 5px 3px 0px 3px;">
                <asp:DataList ID="datalistuserdetail" runat="server">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </asp:Panel>
        <table class="multicolumnGrid" style="margin-top: 0px;" align="center" width="100%">
            <tr align="left">
                <td colspan="5">
                    <div align="center" style="overflow: auto; height: 100%; width: 100%;">
                        <div style="width: 100%;">
                            <asp:GridView ID="gridviewcontactu" runat="server" AutoGenerateColumns="False" ShowFooter="True"
                                DataKeyNames="contactid" OnRowCommand="gridviewcontactu_RowCommand">
                                <Columns>
                                    <asp:TemplateField>
                                        <FooterTemplate>
                                            <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="Delete" />
                                        </FooterTemplate>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Select All" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# bind("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email Id">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Mobile No">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# bind("mobileno") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Message">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# bind("message") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#5F8EC2" CommandName="SendMail"
                                                CommandArgument='<%#bind("contactid") %>'>SEND MAIL....</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label5" runat="server" Text="No Record To Display....."></asp:Label>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:Button ID="Button2" runat="server" Text="Button" Style="display: none;" />
                            <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" TargetControlID="Button2" PopupControlID="Panel1">
                            </cc1:ModalPopupExtender>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
