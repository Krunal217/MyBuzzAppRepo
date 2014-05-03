<%@ page title="" language="C#" masterpagefile="~/Visitors/Visitor.master" autoeventwireup="true" inherits="Visitors_SearchExamResult, App_Web_aydit35v" %>

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
            <fieldset class="cls" style="margin-left: 35%;">
                <div class="fl_right" style="width: 100%; height: auto;">
                    <table style="margin-top: 0px;" align="center" width="100%">
                        <tr align="left">
                            <td>
                                <div style="overflow: auto; height: 100%; width: 100%;">
                                    <div style="width: 100%;">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:DropDownList ID="drpexam" runat="server" Width="100%">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                        <table style="margin-top: 0px;" align="center" width="100%">
                                            <tr align="left">
                                                <td colspan="5">
                                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                                        <div style="width: 100%;">
                                                            <asp:Repeater ID="repeaterexamresult" runat="server" OnItemCommand="repeaterexamresult_ItemCommand">
                                                                <HeaderTemplate>
                                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                                        <tr style="background-color: #df5015; color: White">
                                                                            <td colspan="2">
                                                                                <b>Exam Result</b>
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
                                                                                <asp:LinkButton ID="lnkbtnbook" runat="server" BackColor="#EBEFF0" CommandName="Download"
                                                                                    CommandArgument='<%#bind("examresult") %>'>Download....</asp:LinkButton>
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
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
