<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="Admin_AdminUser, App_Web_3lngnvem" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <head>
        <style type="text/css">
            .cls
            {
                border: 0px solid gray;
                width: 100%;
                height: 100%;
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
            .modalBackground
            {
                background-color: Gray;
                filter: alpha(opacity=80);
                opacity: 0.8;
                z-index: 10000;
            }
            
            .smallimg
            {
                padding: 6px;
                -webkit-box-shadow: inset 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
                -moz-box-shadow: inset 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
                box-shadow: inset 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
                -webkit-border-radius: 9px;
                -moz-border-radius: 9px;
                border-radius: 9px;
            }
            .cngpwd
            {
                border: 0px solid black;
                padding: 6px;
                -webkit-box-shadow: 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
                -moz-box-shadow: 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
                box-shadow: 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
                border-radius: 9px;
            }
            #fb1
            {
                width: 375px;
                height: 120px;
                border: 1px solid #ccc;
                border-radius: 20px;
                padding: 10px;
                box-shadow: inset 0px 0px 20px 1px black;
                margin-top: 20px;
            }
            .txt
            {
                width: 375px;
                height: 120px;
                border: 1px solid #ccc;
                border-radius: 20px;
                padding: 10px;
                box-shadow: inset 0px 0px 20px 1px black;
                margin-top: 20px;
            }
            .txt1
            {
                width: 80%;
                background-color: #43A4C1;
                color: White;
                margin-bottom: 5%;
                margin-left: 10%;
                height: 56px;
                border: 1px solid #ccc;
                border-radius: 20px;
                padding: 10px;
                box-shadow: inset 0px 0px 20px 1px black;
                margin-top: 20px;
            }
            .lbl
            {
            }
            #uname
            {
                width: 80px;
                height: 15px;
                margin-left: 0px;
            }
            #lk
            {
                width: 90px;
                margin-left: 10px;
                float: left;
            }
            
            .imgcls
            {
                width: 65px;
                padding: 0px;
                height: 75px;
                float: left;
                margin-left: 0px;
                margin-top: 10px;
                border-radius: 30%;
                background-color: transparent;
            }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladmincity" runat="server" Text="MANAGE USER" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Style="display: none; margin: 5px 5px 5px 5px;
        border-radius: 10px 10px 10px 10px; box-shadow: 0px 0px 10px gray;">
        <div style="text-align: center; margin: 5px 3px 0px 3px;">
            <asp:DataList ID="datalistuserdetail" runat="server">
                <ItemTemplate>
                    <table width="100%" height="100%" style="border: Solid 3px #5F8EC2;" cellpadding="0"
                        cellspacing="10px">
                        <tr style="background-color: #5F8EC2">
                            <td colspan="3" style="height: 10%; color: White; font-weight: bold; font-size: larger"
                                align="center">
                                User Details
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="14">
                                <asp:Image ID="imguser" runat="server" Width="125px" Height="125px" ImageUrl='<%#bind("photos") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblfname" runat="server" Text="First Name : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblfname1" runat="server" Text='<%#bind("firstname") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lbllname" runat="server" Text="Last Name : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lbllname1" runat="server" Text='<%#bind("lastname") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lbluname" runat="server" Text="User Name : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lbluname1" runat="server" Text='<%#bind("username") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblemail" runat="server" Text="Email : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblemail1" runat="server" Text='<%#bind("email") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblmobileno" runat="server" Text="Mobile No. : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblmobileno1" runat="server" Text='<%#bind("mobileno") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblgender" runat="server" Text="Gender : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblgender1" runat="server" Text='<%#bind("gender") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lbldob" runat="server" Text="Date Of Birth : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lbldob1" runat="server" Text='<%#bind("dob") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblcountry" runat="server" Text="Country : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblcountry1" runat="server" Text='<%#bind("countryname") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblstate" runat="server" Text="State : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblstate1" runat="server" Text='<%#bind("statename") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblcity" runat="server" Text="City : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblcity1" runat="server" Text='<%#bind("cityname") %>' Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblsecurityquestion" runat="server" Text="Security Question : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblsecurityquestion1" runat="server" Text='<%#bind("securityquestion") %>'
                                    Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblsecurityanswer" runat="server" Text="Security Answer : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Label ID="lblsecurityanswer1" runat="server" Text='<%#bind("securityanswer") %>'
                                    Font-Size="12"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblresume" runat="server" Text="Resume : " Font-Size="10"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:LinkButton ID="lnkbtnresume" runat="server" Text='<%#bind("resume") %>' ForeColor="#5F8EC2">Resume</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td colspan="3" align="center">
                                <asp:Button ID="btnok" runat="server" Text="OK" OnClick="btnok_Click" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </asp:Panel>
    <fieldset class="cls">
        <div align="center">
            <table class="multicolumnGrid" style="margin-top: 0px;" align="center" width="100%">
                <tr align="left">
                    <td colspan="5">
                        <div style="overflow: auto; height: 100%; width: 100%;">
                            <div style="width: 100%;">
                                <asp:GridView ID="gridviewregistration" runat="server" Width="100%" HeaderStyle-Height="22px"
                                    HeaderStyle-Font-Size="13px" AutoGenerateColumns="False" ShowFooter="True" AllowPaging="True"
                                    DataKeyNames="userid" PageSize="5" OnRowCommand="gridviewregistration_RowCommand"
                                    OnDataBound="gridviewregistration_DataBound" OnPageIndexChanging="gridviewregistration_PageIndexChanging">
                                    <Columns>
                                        <asp:TemplateField>
                                            <FooterTemplate>
                                                <asp:Button ID="Button1" runat="server" CommandName="DeleteAll" Text="Delete" />
                                            </FooterTemplate>
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text="Select All" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="First Name">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("firstname") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# bind("firstname") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Last Name">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("lastname") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# bind("lastname") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Password">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("password") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# bind("password") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="EmailID">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("email") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="User Photo">
                                            <EditItemTemplate>
                                                <asp:Image ID="Image2" runat="server" Height="80px" ImageUrl='<%# bind("photos") %>'
                                                    Width="80px" />
                                                <br />
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# bind("photos") %>'
                                                    Width="80px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="IsActive">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="False" CommandArgument='<%# bind("userid") %>'
                                                    Text='<%# bind("IsActive") %>'></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="MoreInfo" CommandArgument='<%#bind("userid") %>'>More Info.....</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        <asp:Label ID="Label5" runat="server" Text="No Record To Display....."></asp:Label>
                                    </EmptyDataTemplate>
                                    <HeaderStyle Font-Size="13px" Height="22px"></HeaderStyle>
                                </asp:GridView>
                                <asp:Button ID="Button2" runat="server" Text="Button" style="display:none;" />
                                <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground"
                                    TargetControlID="Button2" PopupControlID="Panel1">
                                </cc1:ModalPopupExtender>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </fieldset>
</asp:Content>
