<%@ page title="" language="C#" masterpagefile="~/Admin/AdminHome.master" autoeventwireup="true" inherits="AdminCollages, App_Web_3lngnvem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
<head>
        <style type="text/css">
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
            }#blanket
            {
              /*  background-color: #111;    */
                opacity: 0.65;
                position: absolute;
                z-index: 9001; /*ooveeerrrr nine thoussaaaannnd*/
                top: 0px;
                left: 0px;
                width: 100%;
            }
            #popUpDiv
            {
                position: absolute;
                color:Black;
                width: 190px;
                height: 53px;
                z-index: 9002; /*ooveeerrrr nine thoussaaaannnd*/
                border: 0px solid red;
                border-radius: 10px 10px 10px 10px;
                box-shadow: 0px 0px 10px black;
                font-family: Verdana;
                padding: 1%;
                margin-left:180px;
            }
            #ContentPlaceHolder1_Label1
            {
                color:Red;
                font-family:Verdana;
            }
        </style>
        <script src="../scripts/csspopup.js" type="text/javascript"></script>
        <script type="text/javascript" language="javascript">
            function Data() {
                var Category = document.getElementById('ContentPlaceHolder1_Drpcategory');
                var SubCategory = document.getElementById('ContentPlaceHolder1_Drpsubcategory');
                var Collages = document.getElementById('ContentPlaceHolder1_txtcollages');
                var CollagesLink = document.getElementById('ContentPlaceHolder1_txtcollagelink');
                var CollagesDetail = document.getElementById('ContentPlaceHolder1_txtcollagedetail');
                if (Category.value == 0) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Select Category";
                    popup('popUpDiv');
                    return false;
                }
                if (SubCategory.value == 0) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Select Sub Category";
                    popup('popUpDiv');
                    return false;
                }
                if (Collages.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Collages";
                    popup('popUpDiv');
                    return false;
                }
                if (CollagesLink.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Collage Link";
                    popup('popUpDiv');
                    return false;
                }
                if (CollagesDetail.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Collage Details";
                    popup('popUpDiv');
                    return false;
                }
                else {
                    return true;
                }
            }
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladmincollages" runat="server" Text="ENTER COLLAGES" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
        </table>
    <fieldset class="cls">
        <div align="center">
            <table style="border: 0px;">
        <tr>
            <td align="right">
                <asp:Label ID="lblcategory" runat="server" Text="Category : "></asp:Label>
            </td>
            <td style="color:Red;">*</td>
            <td align="left">
                <asp:DropDownList ID="Drpcategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drpcategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td align="right">
                <asp:Label ID="lblsubcategory" runat="server" Text="Sub Category : "></asp:Label>
            </td>
            <td style="color:Red;">*</td>
            <td align="left">
                <asp:DropDownList ID="Drpsubcategory" runat="server" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblcollages" runat="server" Text="Collages : "></asp:Label>
            </td>
            <td style="color:Red;">*</td>
            <td align="left">
                <asp:TextBox ID="txtcollages" runat="server" ></asp:TextBox>
            </td>
            <td align="right">
                <asp:Label ID="lblcollageglink" runat="server" Text="Collge Link : "></asp:Label>
            </td>
            <td style="color:Red;">*</td>
            <td align="left">
                <asp:TextBox ID="txtcollagelink" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblcollagedetail" runat="server" Text="Collage Detail : "></asp:Label>
            </td>
            <td style="color:Red;">*</td>
            <td>
                <asp:TextBox ID="txtcollagedetail" runat="server" TextMode="MultiLine" Width="145px"
                    Height="40px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="7" align="center">
                <asp:Button ID="btnok" runat="server" Text="OK" OnClick="btnok_Click" OnClientClick="return Data(); " />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
            </td>
        </tr>
    </table>
    <div id="blanket" style="display:none;"></div>
            <div id="popUpDiv" style="display: none;">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br /><br />
                <a href="#" onclick="popup('popUpDiv')">
                    <asp:Button ID="btnclose" runat="server" Text="OK" />
                </a>
            </div>
    </div>
    <table class="multicolumnGrid" style="margin-top: 0px;" align="center" width="100%">
        <tr align="left">
            <td colspan="5">
                <div style="overflow: auto; height: 100%; width: 100%;">
                    <div style="width: 100%;">
                        <asp:GridView ID="gridviewcollage" runat="server" AutoGenerateColumns="False" Width="100%"
                            HeaderStyle-Height="22px" HeaderStyle-Font-Size="13px" AllowPaging="True" DataKeyNames="collageid"
                            OnPageIndexChanging="gridviewcollage_PageIndexChanging" OnRowCancelingEdit="gridviewcollage_RowCancelingEdit"
                            OnRowCommand="gridviewcollage_RowCommand" OnRowEditing="gridviewcollage_RowEditing"
                            OnRowUpdating="gridviewcollage_RowUpdating" PageSize="5" ShowFooter="True">
                            <Columns>
                                <asp:TemplateField>
                                    <FooterTemplate>
                                        <asp:Button ID="Button1" runat="server" CommandName="DeleteAll" Text="Delete" />
                                    </FooterTemplate>
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text="Select All"
                                            OnCheckedChanged="CheckBox2_CheckedChanged" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Category Name">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# bind("categoryname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sub Category Name">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("subcategoryname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Collage Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("collagename") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("collagename") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Collage Link">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("collagelink") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" 
                                            Text='<%# bind("collagelink") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Collage Details">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Text='<%# bind("collagedetail") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# bind("collagedetail") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <asp:Label ID="Label4" runat="server" Text="No Record To Display....."></asp:Label>
                            </EmptyDataTemplate>
                            <HeaderStyle />
                            <HeaderStyle CssClass="t" />
                        </asp:GridView>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    </fieldset>
</asp:Content>
