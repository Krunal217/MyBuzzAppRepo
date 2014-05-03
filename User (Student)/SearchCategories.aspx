<%@ page title="" language="C#" masterpagefile="~/User (Student)/HomeMaster.master" autoeventwireup="true" inherits="Visitors_ShowCategories, App_Web_htqrhh3e" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="homepage" class="clear">
        <div class="fl_left">
            <h2 class="title">
                Quick Links</h2>
            <div id="hpage_quicklinks">
                <ul class="clear">
                    <li>
                        <asp:LinkButton ID="lnkbtnartscollages" runat="server" OnClick="lnkbtnartscollages_Click">Arts Collages</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtncommerce" runat="server" 
                            onclick="lnkbtncommerce_Click">Commerce Collages</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnsciencecollages" runat="server" 
                            onclick="lnkbtnsciencecollages_Click">Science Collages</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnanimation" runat="server" 
                            onclick="lnkbtnanimation_Click">Animation Institute</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnarchitecture" runat="server" 
                            onclick="lnkbtnarchitecture_Click">Architecture Institute</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnengineering" runat="server" 
                            onclick="lnkbtnengineering_Click">Engineering Collages</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnbanking" runat="server" onclick="lnkbtnbanking_Click">Banking & Finance Institute</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtncomputer" runat="server" 
                            onclick="lnkbtncomputer_Click">Computer & IT Institute</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnhotelmanagement" runat="server" 
                            onclick="lnkbtnhotelmanagement_Click">Hotel Management Institute</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnbusiness" runat="server" 
                            onclick="lnkbtnbusiness_Click">Management and Business Institute</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtnmedical" runat="server" onclick="lnkbtnmedical_Click">Medical & Pharmacy Institute</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkbtntravel" runat="server" onclick="lnkbtntravel_Click">Travel & Tourism Institute</asp:LinkButton></li>
                </ul>
            </div>
            <h2 class="title">
                Latest Gallery Images</h2>
            <div id="hpage_gallery">
                <ul class="clear">
                    <marquee behaviour="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
                    <li><a href="http://www.cam.ac.uk/">
                        <img src="../images/Collages/cambridge.jpeg" width="175px" height="100px" /></a></li>
                    <li class="last"><a href="http://www.ox.ac.uk/">
                        <img src="../images/Collages/Oxford.jpeg" width="175px" height="100px" /></a></li>
                    <li><a href="https://www.iitb.ac.in/">
                        <img src="../images/Collages/IIT.jpeg" width="175px" height="100px" /></a></li>
                    <li class="last"><a href="https://www.nirmauni.ac.in/">
                        <img src="../images/Collages/Nirma.jpeg" width="175px" height="100px" /></a></li>
                    <li class="last"><a href="http://www.manipal.edu/pages/welcome.aspx">
                        <img src="../images/Collages/manipal.jpeg" width="175px" height="100px" /></a></li></marquee>
                </ul>
            </div>
        </div>
        <div>
            <fieldset class="cls" style="margin-left:35%;">
                <div class="fl_right" style="width: 100%; height: auto;">
                    <table style="margin-top: 0px;" align="center" width="100%">
                        <tr align="left">
                            <td>
                                <div style="overflow: auto; height: 100%; width: 100%;">
                                    <div style="width: 100%;">
                                        <asp:Repeater ID="repateranimation" runat="server" OnItemCommand="repateranimation_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Animation & Multimedia Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterarchitecture" runat="server" OnItemCommand="repeaterarchitecture_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Architecture Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterarts" runat="server" OnItemCommand="repeaterarts_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Arts Collages</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeatercommerce" runat="server" OnItemCommand="repeatercommerce_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Commerce Collages</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterscience" runat="server" OnItemCommand="repeaterscience_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Science Collages</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterengineering" runat="server" OnItemCommand="repeaterengineering_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Engineering Collages</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterbanking" runat="server" OnItemCommand="repeaterbanking_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Banking & Finance Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeateromputer" runat="server" OnItemCommand="repeateromputer_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Computer & IT Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterhotel" runat="server" OnItemCommand="repeaterhotel_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Hotel Management Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterbusiness" runat="server" OnItemCommand="repeaterbusiness_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Management and Business Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeatermedical" runat="server" OnItemCommand="repeatermedical_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Medical & Pharmacy Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeatertravel" runat="server" OnItemCommand="repeatertravel_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Travel & Tourism Institute</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterartscareer" runat="server" OnItemCommand="repeaterartscareer_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeatercommercecareeer" runat="server" OnItemCommand="repeatercommercecareeer_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeatersciencecareer" runat="server" OnItemCommand="repeatersciencecareer_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeateranimationcareer" runat="server" OnItemCommand="repeateranimationcareer_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Career In Animation & Multimedia</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeaterarchitecturecareer" runat="server" OnItemCommand="repeaterarchitecturecareer_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Career In Architecture</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeaterengineeringcareer" runat="server" OnItemCommand="repeaterengineeringcareer_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeaterbankingcareer" runat="server" OnItemCommand="repeaterbankingcareer_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeatercomputercareer" runat="server" OnItemCommand="repeatercomputercareer_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeaterhotelcareer" runat="server" OnItemCommand="repeaterhotelcareer_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Career In Hotel Management</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeaterbusinesscareer" runat="server" OnItemCommand="repeaterbusinesscareer_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Career In Management & Business</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeatermedicalcareer" runat="server" OnItemCommand="repeatermedicalcareer_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Career In Medical & Pharmacy</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeatertravelcareer" runat="server" OnItemCommand="repeatertravelcareer_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Career In Travel & Tourism</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Career Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("careername") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("careerdetails") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeateraustralia" runat="server" OnItemCommand="repeateraustralia_ItemCommand">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Collages In Australis</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeatercanada" runat="server" OnItemCommand="repeatercanada_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterchina" runat="server" OnItemCommand="repeaterchina_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaternewzealand" runat="server" OnItemCommand="repeaternewzealand_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeatersouthafrica" runat="server" OnItemCommand="repeatersouthafrica_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterusa" runat="server" OnItemCommand="repeaterusa_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeateruk" runat="server" OnItemCommand="repeateruk_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterrussia" runat="server" OnItemCommand="repeaterrussia_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeatersingapore" runat="server" OnItemCommand="repeatersingapore_ItemCommand">
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
                                                            <asp:Label ID="lblcollages" runat="server" Text="Collage Name : " Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblcollages1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
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
                                        <asp:Repeater ID="repeaterengineeringexam" runat="server">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Engineering Entrance Exam</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexam" runat="server" Text="Exam Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblexamname" runat="server" Text='<%#bind("examname") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexamdate" runat="server" Text="Exam Date : "></asp:Label>
                                                            <asp:Label ID="lblexamdate1" runat="server" Text='<%#bind("examdate") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexamdetail" runat="server" Text="Exam Detail : "></asp:Label>
                                                            <asp:Label ID="lblexamdetail1" runat="server" Text='<%#bind("examdetail") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeatermedicalexam" runat="server">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Medical Entrance Exam</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexam" runat="server" Text="Exam Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblexamname" runat="server" Text='<%#bind("examname") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexamdate" runat="server" Text="Exam Date : "></asp:Label>
                                                            <asp:Label ID="lblexamdate1" runat="server" Text='<%#bind("examdate") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexamdetail" runat="server" Text="Exam Detail : "></asp:Label>
                                                            <asp:Label ID="lblexamdetail1" runat="server" Text='<%#bind("examdetail") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repeaterpharmacyexam" runat="server">
                                            <HeaderTemplate>
                                                <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                    <tr style="background-color: #df5015; color: White">
                                                        <td colspan="2">
                                                            <b>Pharmacy Entrance Exam</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexam" runat="server" Text="Exam Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            <asp:Label ID="lblexamname" runat="server" Text='<%#bind("examname") %>' Font-Bold="true"
                                                                Font-Size="Medium"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexamdate" runat="server" Text="Exam Date : "></asp:Label>
                                                            <asp:Label ID="lblexamdate1" runat="server" Text='<%#bind("examdate") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblexamdetail" runat="server" Text="Exam Detail : "></asp:Label>
                                                            <asp:Label ID="lblexamdetail1" runat="server" Text='<%#bind("examdetail") %>'></asp:Label>
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
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
