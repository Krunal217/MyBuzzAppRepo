<%@ Page Title="" Language="C#" MasterPageFile="~/User/HomeMaster.Master" AutoEventWireup="true" CodeBehind="SearchCollages.aspx.cs" Inherits="EBuzz_Cloud.User.WebForm7" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<head id="Head1" runat="server">
        <style type="text/css">
            .drp
            {
                width: 100%;
                box-shadow: 1px 1px 1px black;
                height: 100%;
                margin-left: 2%;
                margin-top: 1%;
                border-radius: 25px;
            }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:TabContainer ID="TabContainer1" runat="server" TabIndex="0">
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Search Collages" TabIndex="0">
                <ContentTemplate>
                    <table border="0px">
                        <tr>
                            <td>
                                <asp:Label ID="lblcollages" runat="server" Text="Collages : " ForeColor="#5F8EC2"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="drpcollages" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpcollages_SelectedIndexChanged"
                                    CssClass="drp" ForeColor="Brown">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:DataList ID="datalistcollages" runat="server">
                                    <ItemTemplate>
                                        <div class="fl_right">
                                            <table border="0px">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblcollage" runat="server" Text='<%#bind("collagename") %>'></asp:Label>
                                                    </td>
                                                   <!-- <td>
                                                        <a href="http://www.manipal.edu/pages/welcome.aspx">
                                                            <img src="../images/Collages/manipal.jpeg" width="175px" height="100px" /></a>
                                                    </td>  -->
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbldetails" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
    </div>
</asp:Content>
