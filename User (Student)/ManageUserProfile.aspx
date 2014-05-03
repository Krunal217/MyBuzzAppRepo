<%@ page title="" language="C#" masterpagefile="~/User (Student)/HomeMaster.master" autoeventwireup="true" inherits="ManageUserProfile, App_Web_htqrhh3e" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <head>
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
        <script type="text/javascript">
            function download(file) {
                window.location = file;
            }
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="border: 0px solid #CCCCCC;" align="center" width="100%">
        <tr>
            <td align="center">
                <h1>
                    <asp:Label ID="lblprofile" runat="server" Text="PROFILE  INFORMATION" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
    </table>
    <fieldset class="cls">
        <div style="width: 100%; height: auto;">
            <cc1:TabContainer ID="TabContainer1" runat="server" TabIndex="0" >
                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Edit Profile" ForeColor="White" TabIndex="0">
                    <ContentTemplate>
                        <asp:DataList ID="datalistuser" runat="server" OnEditCommand="datalistuser_EditCommand"
                            OnCancelCommand="datalistuser_CancelCommand" OnUpdateCommand="datalistuser_UpdateCommand"
                            DataKeyField="userid" OnItemDataBound="datalistuser_ItemDataBound">
                            <ItemTemplate>
                                <table>
                                    <div style="width: 100px; height: 600px;">
                                        <asp:Image ID="imguser" runat="server" Width="125px" Height="125px" ImageUrl='<%#bind("photos") %>' />
                                    </div>
                                    <div style="width: 100%; height: 100%; margin-top: -450px; float: none; margin-bottom: 5px;">
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
                                                <!-- <asp:LinkButton ID="lnkbtnresume1" runat="server" Text='<%#bind("resume") %>' ForeColor="#5F8EC2"></asp:LinkButton>  -->
                                                <a href='<%#Eval("resume") %>' />resume
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" align="center">
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Font-Size="Large"
                                                    ForeColor="#5F8EC2">Edit</asp:LinkButton>
                                            </td>
                                        </tr>
                                </table>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <table>
                                    <div style="width: 948px; height: 600px;">
                                        <asp:Image ID="imguser" runat="server" Width="125px" Height="125px" ImageUrl='<%#bind("photos") %>' />
                                        <br />
                                        <asp:FileUpload ID="fileuploaduser" runat="server" />
                                    </div>
                                    <div style="width: 100%; height: 100%; margin-top: -450px; float: none; margin-bottom: 5px;">
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblfname" runat="server" Text="First Name : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtfname" runat="server" Text='<%#bind("firstname") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lbllname" runat="server" Text="Last Name : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtlastname" runat="server" Text='<%#bind("lastname") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lbluname" runat="server" Text="User Name : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtusername" runat="server" Text='<%#bind("username") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblemail" runat="server" Text="Email : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtemail" runat="server" Text='<%#bind("email") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblmobileno" runat="server" Text="Mobile No. : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtmobileno" runat="server" Text='<%#bind("mobileno") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblgender" runat="server" Text="Gender : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:RadioButtonList ID="rndbtnlistgender" runat="server" RepeatDirection="Horizontal"
                                                    RepeatLayout="Flow">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lbldob" runat="server" Text="Date Of Birth : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtdob" runat="server" Text='<%#bind("dob") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblcountry" runat="server" Text="Country : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:DropDownList ID="drpcountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpcountry_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblstate" runat="server" Text="State : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpcity_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblcity" runat="server" Text="City : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:DropDownList ID="drpcity" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblsecurityquestion" runat="server" Text="Security Question : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:DropDownList ID="drpsecurityquestion" runat="server">
                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>Where is Your Birth Place?</asp:ListItem>
                                                    <asp:ListItem>Your Favroute Color?</asp:ListItem>
                                                    <asp:ListItem>Your First School Name?</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblsecurityanswer" runat="server" Text="Security Answer : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtsecurityansewr" runat="server" Text='<%#bind("securityanswer") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblresume" runat="server" Text="Resume : " Font-Size="10"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:LinkButton ID="LinkButton2" runat="server" Text='<%#bind("resume") %>'></asp:LinkButton>
                                                <asp:FileUpload ID="fileuploadresume" runat="server" />
                                            </td>
                                        </tr>
                                        <br />
                                        <br />
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
                                                <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                            </td>
                                        </tr>
                                    </div>
                                </table>
                            </EditItemTemplate>
                        </asp:DataList>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel2" runat="server" TabIndex="1" HeaderText="Change Password">
                    <ContentTemplate>
                        <div>
                            <table>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="lblname" runat="server" Text="User Name : "></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:Label ID="lbluname" runat="server" Text='<%#bind("username") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="lblowd" runat="server" Text="Old Password : "></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtopwd" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="lblnpwd" runat="server" Text="New Password : "></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtnpwd" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblcnpwd" runat="server" Text="Confirm New Password : "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtcnpwd" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
        </div>
    </fieldset>
</asp:Content>
