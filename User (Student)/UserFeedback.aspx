<%@ page title="" language="C#" masterpagefile="~/User (Student)/HomeMaster.master" autoeventwireup="true" inherits="User__Student_UserFeedback, App_Web_htqrhh3e" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" width="500px">
        <tr>
            <td colspan="5" align="center">
                <h3>
                    <asp:Label ID="lbllogin" runat="server" Text="Feedback" Font-Size="X-Large"></asp:Label>
                </h3>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td align="right">
                <asp:Label ID="lblwelcome" runat="server" Text="Welcome"></asp:Label>
                <asp:Label ID="lbluser" runat="server" Text="User"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblfeedback" runat="server" Text="Feedback:"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine" Width="300px" height="70px"></asp:TextBox>
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

