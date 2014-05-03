<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="AdminCoachingCenter, App_Web_3lngnvem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="300px">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladmincoaching" runat="server" Text="Enter Coaching Center" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblcoaching" runat="server" Text="Coaching Center:" Width="125px"
                    Font-Size="Medium"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtcoaching" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td>
            </td>
            <td align="left">
                <asp:DropDownList ID="drpcoaching" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="5" align="center">
                <asp:Button ID="btnok" runat="server" Text="OK" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
