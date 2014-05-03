<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="Admin_AdminHome, App_Web_3lngnvem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="homepage" class="clear">
        <div class="fl_left">
            <h2 class="title">
                Quick Links</h2>
            <div id="hpage_quicklinks">
                <ul class="clear">
                    <li><a href="#">Animation & Multimedia</a></li>
                    <li><a href="#">Architecture</a></li>
                    <li><a href="#">Arts & Science</a></li>
                    <li><a href="#">Computer & IT</a></li>
                    <li><a href="#">Engineering & Technology</a></li>
                    <li><a href="#">Fashion & Design</a></li>
                    <li><a href="#">Hotel Management</a></li>
                    <li><a href="#">Law</a></li>
                    <li><a href="#">Management & Business</a></li>
                    <li><a href="#">Media & Films Comunication</a></li>
                    <li><a href="#">Medical</a></li>
                    <li><a href="#">Nursing</a></li>
                    <li><a href="#">Pharmacy</a></li>
                    <li><a href="#">Tourism & Travel</a></li>
                    <li><a href="#">Healthcare Management</a></li>
                    <li><a href="#">Hospitality Management</a></li>
                    <li><a href="#">Cerificate Programe</a></li>
                    <%--<li><a href="#">Teaching &amp; Learning</a></li>
                    <li><a href="#">Undergraduate Courses</a></li>
                    <li><a href="#">Videos</a></li>
                    <li><a href="#">Visiting the University</a></li>
                    <li><a href="#">What's On</a></li>--%>
                </ul>
            </div>
            <h2 class="title">
                Latest Gallery Images</h2>
            <div id="hpage_gallery">
                <ul class="clear">
                    <marquee behaviour="scroll" direction="left" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);"
                        onmouseout="this.setAttribute('scrollamount', 2, 0);">
                    <li><a href="http://www.cam.ac.uk/">
                        <img src="../images/Collages/cambridge.jpeg" width="175px" height="100px" /></a></li>
                    <li class="last"><a href="http://www.ox.ac.uk/">
                        <img src="../images/Collages/Oxford.jpeg" width="175px" height="100px" /></a></li>
                    <li><a href="https://www.iitb.ac.in/">
                        <img src="../images/Collages/IIT.jpeg" width="175px" height="100px" /></a></li>
                    <li class="last"><a href="https://www.nirmauni.ac.in/">
                        <img src="../images/Collages/Nirma.jpeg" width="175px" height="100px" /></a></li>
                    <li class="last"><a href="http://www.manipal.edu/pages/welcome.aspx">
                        <img src="../images/Collages/manipal.jpeg" width="175px" height="100px" /></a></li>
                </marquee>
                </ul>
            </div>
            <h2 class="title">
                Contact Us</h2>
            <div>
                <strong>
                    <address>
                        <p>
                            4th Floor Amruta Arcade,<br />
                            Nr Maninagar Station,<br />
                            Ahmedabad,<br />
                            GUJARAT-380008
                            <br />
                            Mobile : 099 74 863333<br />
                            Email : chavadakrunal@gmail.com
                        </p>
                    </address>
                </strong>
                <iframe width="380px" height="322px" frameborder="0" scrolling="no" marginheight="0"
                    marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=TOPS+Technologies+P+Ltd,+maninagar,Ahmedabad,+Gujarat&amp;aq=&amp;sll=23.032031,72.571907&amp;sspn=0.08752,0.169086&amp;ie=UTF8&amp;hq=TOPS+Technologies+P+Ltd,&amp;hnear=Maninagar,+Ahmedabad,+Gujarat&amp;ll=22.997612,72.610078&amp;spn=0.006295,0.012665&amp;t=m&amp;output=embed">
                </iframe>
                <br />
                <small></small>
            </div>
            <br />
            <br />
            <h2 class="title">
                Latest News</h2>
            <div class="box">
                <marquee behaviour="scroll" direction="up" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);"
                    onmouseout="this.setAttribute('scrollamount', 2, 0);">
            </div>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <div id="newsfeeds">
                <br />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://news.prlog.org/in/ind/education/rss.xml"
                    XPath="rss/channel/item [position()<=10]" CacheDuration="60"></asp:XmlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" BorderColor="#000000"
                    BackColor="#000000" BorderWidth="0px" CellPadding="10" Width="100%" CellSpacing="0"
                    Style="width: 80%;">
                    <ItemTemplate>
                        <br />
                        <br />
                        <b>
                            <%#XPath("title") %></b>&nbsp; <a href="<%# XPath("link") %>">
                                <asp:HyperLink ID="HyperLink1" runat="server" Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                                    Target="_blank" Font-Names="Verdana" Font-Size="10px" BackColor="White" CssClass="link"
                                    ToolTip='<%#XPath("title") %>'></asp:HyperLink></a>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black"
                            Font-Bold="false" Font-Names="Tahoma" Font-Size="11px"></asp:Label>
                        <br />
                        <span>
                            <%# XPath("description") %></span><br />
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <br />
                        <br />
                        <b>
                            <%#XPath("title") %></b> &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Text="[Read More...]"
                                NavigateUrl='<%# XPath("link") %>' Target="_blank" Font-Names="Verdana" Font-Size="10px"
                                CssClass="link" ToolTip='<%#XPath("title") %>'></asp:HyperLink><br />
                        <asp:Label ID="Label3" runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black"
                            Font-Bold="false" Font-Names="Tahoma" Font-Size="11px"></asp:Label><br />
                        <span>
                            <%# XPath("description") %></span>
                        <%--<img alt="test" src='<%# XPath("image") %>' id="Image1"  width="35px" height="43px"/>
 <asp:Image ID="Image" runat="server" Height="43px" ImageUrl='<%# XPath("img") %>' Width="35px" />--%>
                        <br />
                    </AlternatingItemTemplate>
                    <ItemStyle Font-Names="Tahoma" Font-Size="11px" BackColor="White" ForeColor="#565656"
                        HorizontalAlign="Justify"></ItemStyle>
                    <FooterStyle BackColor="White" />
                    <SelectedItemStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle Font-Bold="True" />
                </asp:DataList></div>
        </asp:Panel>
    </div>
    </marquee> </div> </div>
    <!-- ############### -->
    <div class="fl_right">
        <h2 class="title">
            Latest News</h2>
        <div id="hpage_latestnews">
            <ul>
                <li>
                    <div class="imgl">
                        <img src="../images/Collages/Oxford.jpeg" width="100px" height="100px" /></div>
                    <p class="latestnews">
                        Oxford University is a Best & Heigh Level of Education. <a href="http://www.ox.ac.uk/">
                            Oxford University</a>.
                    </p>
                    <p class="readmore">
                        <a href="http://www.ox.ac.uk/">Continue Reading &raquo;</a></p>
                </li>
                <li>
                    <div class="imgl">
                        <img src="../images/Collages/cambridge.jpeg" width="100px" height="100px" /></div>
                    <p class="latestnews">
                        Cambridge University is a Best Teaching In Top Universities. <a href="http://www.cam.ac.uk/">
                            Cambridge University</a>.</p>
                    <p class="readmore">
                        <a href="http://www.cam.ac.uk/">Continue Reading &raquo;</a></p>
                </li>
                <li class="last">
                    <div class="imgl">
                        <img src="../images/Collages/IIT.jpeg" width="100px" height="100px" /></div>
                    <p class="latestnews">
                        Indian Institute Of Technology is a Best University in India. <a href="https://www.iitb.ac.in/">
                            Indian Institute Of Technology</a>.</p>
                    <p class="readmore">
                        <a href="https://www.iitb.ac.in/">Continue Reading &raquo;</a></p>
                </li>
            </ul>
        </div>
        <div id="hpage_specials" class="clear">
            <ul>
                <li>
                    <h2 class="title">
                        Latest Update Of UGC</h2>
                    <div class="box">
                        <div class="imgholder">
                            <img src="../images/Collages/ugc logo.jpeg" alt="" height="115px" width="140px" /></div>
                        <p>
                            Vestassapede et donec ut est liberos sus et eget sed eget. Quisqueta habitur augue
                            magnisl magna phasellus sagittitor ant curabiturpis molesuada amet. Tricessem faucibulum
                            sit sed eleifendisse accumsan justo in tor vel purus.</p>
                        <p class="readmore">
                            <a href="http://www.ugc.ac.in/" style="background-color: White;">Take The Tour &raquo;</a></p>
                    </div>
                </li>
                <li>
                    <h2 class="title">
                        Sport Updates</h2>
                    <div class="box">
                        <marquee behaviour="scroll" direction="up" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);"
                            onmouseout="this.setAttribute('scrollamount', 2, 0);" height="585px">
                            <div>
    <asp:Panel ID="Panel3" runat="server">
    <div><br />
        
        <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="http://static.cricinfo.com/rss/livescores.xml"
            XPath="rss/channel/item [position()<=10]" CacheDuration="60" ></asp:XmlDataSource>
            
        <asp:DataList ID="DataList3" Runat="server" DataSourceID="XmlDataSource3"
         BorderColor="#000000" BackColor="#000000" BorderWidth="0px" Height="585px"
         CellPadding="10" Width="100%" CellSpacing="0">
         
          <ItemTemplate><%--<br /><br />--%>
           <b> <%#XPath("title") %></b>&nbsp;
           <a href="<%# XPath("link") %>" ><asp:HyperLink ID="HyperLink1" Runat="server" Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                    Target="_blank" Font-Names="Verdana" Font-Size="10px" BackColor="White" CssClass="link" ToolTip='<%#XPath("title") %>' ></asp:HyperLink></a>
                
           
           <br />
                    
                <asp:Label ID="Label1" Runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black" Font-Bold="false"
                    Font-Names="Tahoma" Font-Size="11px"></asp:Label>
                    
                    <br /><span><%# XPath("description") %></span><br />
            </ItemTemplate>

            <AlternatingItemTemplate>
            <b> <%#XPath("title") %></b> &nbsp;<asp:HyperLink ID="HyperLink2" Runat="server"
                 Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                 Target="_blank" Font-Names="Verdana" Font-Size="10px" CssClass="link" ToolTip='<%#XPath("title") %>' ></asp:HyperLink><br />
                 
                <asp:Label ID="Label3" Runat="server" Text='<%# XPath("pubDate") %>'
                 ForeColor="black" Font-Bold="false"
                 Font-Names="Tahoma" Font-Size="11px"></asp:Label><br /><span><%# XPath("description") %></span>
                <br />
                

            </AlternatingItemTemplate>

            <ItemStyle Font-Names="Tahoma" Font-Size="11px" BackColor="White"
                ForeColor="#565656" HorizontalAlign="Justify"></ItemStyle>
            <FooterStyle BackColor="White" />
            <SelectedItemStyle BackColor="White" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Font-Bold="True" />

        </asp:DataList></div>
    </asp:Panel>
               </div>
                        </marquee>
                    </div>
                </li>
                <li class="last">
                    <h2 class="title">
                        Upcoming Exams</h2>
                    <div class="box">
                        <marquee behaviour="scroll" direction="up" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);"
                            onmouseout="this.setAttribute('scrollamount', 2, 0);" height="585px">
                            <div>
    <asp:Panel ID="Panel2" runat="server">
    <div><br />
        
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="http://www.successcds.net/rssfeeds/EntranceExams.xml"
            XPath="rss/channel/item [position()<=10]" CacheDuration="60" ></asp:XmlDataSource>
            
        <asp:DataList ID="DataList2" Runat="server" DataSourceID="XmlDataSource2"
         BorderColor="#000000" BackColor="#000000" BorderWidth="0px" Height="585px"
         CellPadding="10" Width="100%" CellSpacing="0">
         
          <ItemTemplate><br /><br />
           <b> <%#XPath("title") %></b>&nbsp;
           <a href="<%# XPath("link") %>" ><asp:HyperLink ID="HyperLink1" Runat="server" Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                    Target="_blank" Font-Names="Verdana" Font-Size="10px" BackColor="White" CssClass="link" ToolTip='<%#XPath("title") %>' ></asp:HyperLink></a>
                
           
           <br />
                    
                <asp:Label ID="Label1" Runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black" Font-Bold="false"
                    Font-Names="Tahoma" Font-Size="11px"></asp:Label>
                    
                    <br /><span><%# XPath("description") %></span><br />
            </ItemTemplate>

            <AlternatingItemTemplate>
            <br /><br />
            <b> <%#XPath("title") %></b> &nbsp;<asp:HyperLink ID="HyperLink2" Runat="server"
                 Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                 Target="_blank" Font-Names="Verdana" Font-Size="10px" CssClass="link" ToolTip='<%#XPath("title") %>' ></asp:HyperLink><br />
                 
                <asp:Label ID="Label3" Runat="server" Text='<%# XPath("pubDate") %>'
                 ForeColor="black" Font-Bold="false"
                 Font-Names="Tahoma" Font-Size="11px"></asp:Label><br /><span><%# XPath("description") %></span>
                <br />
                

            </AlternatingItemTemplate>

            <ItemStyle Font-Names="Tahoma" Font-Size="11px" BackColor="White"
                ForeColor="#565656" HorizontalAlign="Justify"></ItemStyle>
            <FooterStyle BackColor="White" />
            <SelectedItemStyle BackColor="White" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Font-Bold="True" />

        </asp:DataList></div>
    </asp:Panel>
               </div>
                        </marquee>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    </div>
</asp:Content>
