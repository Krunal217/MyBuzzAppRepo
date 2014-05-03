<%@ page title="" language="C#" masterpagefile="~/User (Student)/HomeMaster.master" autoeventwireup="true" inherits="User__Student_UserSearchCareerOption, App_Web_htqrhh3e" %>

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
            <cc1:TabContainer ID="TabContainer1" runat="server" TabIndex="0" 
                onactivetabchanged="TabContainer1_ActiveTabChanged" AutoPostBack="True">
                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Career In Arts" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchcareerarts" runat="server" OnItemCommand="repeatersearchcareerarts_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Career In Arts</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareer" runat="server" Text="Career : "></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblcareers" runat="server" Text='<%#bind("careername") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblcareerdetails" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="Career In Commerce" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchcommerce" runat="server" OnItemCommand="repeatersearchcommerce_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Career In Commerce</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareer" runat="server" Text="Career : "></asp:Label>
                                                                <asp:Label ID="lblcareers" runat="server" Text='<%#bind("careername") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareerdetails" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="MoreInfo" BackColor="#EBEFF0">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <%--<asp:DataList ID="DataList1" runat="server" Width="100%">
                                            <HeaderTemplate>
                                             <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Career In Commerce</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareer" runat="server" Text="Career : "></asp:Label>
                                                                <asp:Label ID="lblcareers" runat="server" Text='<%#bind("careername") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareerdetails" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="MoreInfo" BackColor="#EBEFF0">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                            </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Button ID="btnPrev" runat="server" Text="Prev" onclick="btnPrev_Click" />
                                            <asp:Button ID="btnNext" runat="server" Text="Next" onclick="btnNext_Click" />--%>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="Career In Science" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchscience" runat="server" OnItemCommand="repeatersearchscience_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Career In Science</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareer" runat="server" Text="Career : "></asp:Label>
                                                                <asp:Label ID="lblcareers" runat="server" Text='<%#bind("careername") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareerdetails" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="MoreInfo" BackColor="#EBEFF0">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel4" runat="server" HeaderText="Career In Engineering" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchengineering" runat="server" OnItemCommand="repeatersearchengineering_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Career In Engineering</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareer" runat="server" Text="Career : "></asp:Label>
                                                                <asp:Label ID="lblcareers" runat="server" Text='<%#bind("careername") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareerdetails" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="MoreInfo" BackColor="#EBEFF0">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel5" runat="server" HeaderText="Career In Banking" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchbanking" runat="server" OnItemCommand="repeatersearchbanking_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Career In Banking & Finance</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareer" runat="server" Text="Career : "></asp:Label>
                                                                <asp:Label ID="lblcareers" runat="server" Text='<%#bind("careername") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareerdetails" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="MoreInfo" BackColor="#EBEFF0">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel6" runat="server" HeaderText="Career In Computer" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchcomputer" runat="server" OnItemCommand="repeatersearchcomputer_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Career In Computer & IT</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareer" runat="server" Text="Career : "></asp:Label>
                                                                <asp:Label ID="lblcareers" runat="server" Text='<%#bind("careername") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcareerdetails" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="MoreInfo" BackColor="#EBEFF0">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
        </div>
    </fieldset>
</asp:Content>
