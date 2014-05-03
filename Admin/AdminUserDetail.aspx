<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="Admin_AdminUserDetail, App_Web_3lngnvem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table border="0px">
            <tr>
                <td style="border:0px;">
                    <asp:DataList ID="datalistuserdetail" runat="server">
                        <ItemTemplate>
                            <table style="border: 0px solid #CCCCCC;">
                                <div style="width: 948px; height: 600px; border:0px;">
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
                                            <asp:LinkButton ID="lnkbtnresume" runat="server" Text='<%#bind("resume") %>' ForeColor="#5F8EC2"></asp:LinkButton>
                                        </td>
                                    </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
