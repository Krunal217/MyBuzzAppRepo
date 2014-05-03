<%@ page title="" language="C#" masterpagefile="~/User (Student)/HomeMaster.master" autoeventwireup="true" inherits="User__Student_UserSearchStudyAbroad, App_Web_htqrhh3e" %>

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
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <cc1:TabContainer ID="TabContainer1" runat="server" TabIndex="0" 
                onactivetabchanged="TabContainer1_ActiveTabChanged" AutoPostBack="True">
                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Australia" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchaustralia" runat="server" 
                                                onitemcommand="repeatersearchaustralia_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In Australia</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollage1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="Canada" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchcanada" runat="server" OnItemCommand="repeatersearchcanada_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In Canada</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="China" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchchina" runat="server" OnItemCommand="repeatersearchchina_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In China</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel4" runat="server" HeaderText="New Zealand" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchnewzealand" runat="server" OnItemCommand="repeatersearchnewzealand_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In New Zealand</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : "></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel5" runat="server" HeaderText="South Africa" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchsouthafrica" runat="server" OnItemCommand="repeatersearchsouthafrica_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In South Africa</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel6" runat="server" HeaderText="USA" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchusa" runat="server" OnItemCommand="repeatersearchusa_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In USA</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel7" runat="server" HeaderText="UK" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchuk" runat="server" OnItemCommand="repeatersearchuk_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In UK</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel8" runat="server" HeaderText="Russia" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchrussia" runat="server" OnItemCommand="repeatersearchrussia_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In Russia</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
                <cc1:TabPanel ID="TabPanel9" runat="server" HeaderText="Singapore" TabIndex="0">
                    <ContentTemplate>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td>
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchsingapore" runat="server" OnItemCommand="repeatersearchsingapore_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In Singapore</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollages" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
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
