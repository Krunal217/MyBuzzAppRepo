<%@ page title="" language="C#" masterpagefile="~/User (Student)/LogIn.master" autoeventwireup="true" inherits="RegistrationPage, App_Web_htqrhh3e" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <script src="../scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="../scripts/jquery-ui-1.8.19.custom.min.js" type="text/javascript"></script>
    <link href="../styles/jquery-ui-1.8.19.custom.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../scripts/jquery.ui.datepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("input[id$=txtdob]").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '1970:2020'
            });

            $('#btnok').live("click", function () {
                $("#errmsgDv").hide();
                $(".dialog").hide();
            });
        });
    </script>
    <style type="text/css">
        .cls
        {
            border: 0px solid gray;
            width: 720px;
            height: auto;
            padding: 15px;
            margin-top: 30px;
            margin-left: 255px;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 0px 0px 20px #072C53;
        }
        .t
        {
            text-align: center;
        }
        #reg
        {
            margin: 5px 0px 0px 295px;
        }
        #blanket
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
            color: Black;
            width: 190px;
            height: 53px;
            z-index: 9002; /*ooveeerrrr nine thoussaaaannnd*/
            border: 0px solid red;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 0px 0px 10px black;
            font-family: Verdana;
            padding: 1%;
            margin-left: 180px;
            margin-top: 45%;
        }
        #ContentPlaceHolder1_Label1
        {
            color: Red;
            font-family: Verdana;
        }
    </style>
    <script src="../scripts/csspopup.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        function Data() {
            var FirstName = document.getElementById('ContentPlaceHolder1_txtfname').value;
            var LastName = document.getElementById('ContentPlaceHolder1_txtlname').value;
            var Email = document.getElementById('ContentPlaceHolder1_txtemailid').value;
            EmailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
            var Mobile = document.getElementById('ContentPlaceHolder1_txtmobileno').value;
            Mobileexp = /^[a-zA-z]/;
            var Gender = document.getElementById('ContentPlaceHolder1_rndbtnlistgender').value;
            var DateofBirth = document.getElementById('ContentPlaceHolder1_txtdob');
            var Country = document.getElementById('ContentPlaceHolder1_drpcountry').value;
            var State = document.getElementById('ContentPlaceHolder1_drpstate').value;
            var City = document.getElementById('ContentPlaceHolder1_drpcity').value;
            var Question = document.getElementById('ContentPlaceHolder1_drpsecurityquestion').value;
            var Answer = document.getElementById('ContentPlaceHolder1_txtanswer').value;
            var Photo = document.getElementById('ContentPlaceHolder1_fileuploadphoto').value;
            var Resume = document.getElementById('ContentPlaceHolder1_fileuploadresume').value;
//            var Password = document.getElementById('ContentPlaceHolder1_txtpassword').value;
//            var CPassword = document.getElementById('ContentPlaceHolder1_txtconfirmpwd').value;
            if (FirstName == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Enter First Name";
                popup('popUpDiv');
                return false;
            }
            if (LastName == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Enter Last Name";
                popup('popUpDiv');
                return false;
            }
            if (Email == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Enter Email";
                popup('popUpDiv');
                return false;
            }
            if (Email !== "") {
                if (!EmailExp.test(Email)) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Email Should Be In Proper Format";
                    popup('popUpDiv');
                    return false;
                }
            }
            if (Mobile == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Enter Mobile No.";
                popup('popUpDiv');
                return false;
            }
            if (Mobile != "") {
                if (Mobileexp.test(Mobile)) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Mobile No. Allows Only Numeric Value";
                    popup('popUpDiv');
                    return false;
                }
                if (Mobile.length < 10) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Mobile No. Allows Only 10 Value";
                    popup('popUpDiv');
                    return false;
                }
            }
            if (Gender == "") {
                for (var i = 0; i < Gender.length; i++) {
                    if (Gender[i].checked) {
                        var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                        Lbl.innerHTML = "Please Select Any Gender";
                        popup('popUpDiv');
                        return false;
                    }
                }
            }
            if (DateofBirth.value == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Enter Date Of Birth";
                popup('popUpDiv');
                return false;
            }
            if (Country == 0) {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Select Country";
                popup('popUpDiv');
                return false;
            }
            if (State == 0) {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Select State";
                popup('popUpDiv');
                return false;
            }
            if (City == 0) {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Select City";
                popup('popUpDiv');
                return false;
            }
            if (Question == 0) {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Select Question";
                popup('popUpDiv');
                return false;
            }
            if (Answer == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Enter Answer";
                popup('popUpDiv');
                return false;
            }
            if (Photo == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Select Photo";
                popup('popUpDiv');
                return false;
            }
            if (Resume == "") {
                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                Lbl.innerHTML = "Please Select Resume";
                popup('popUpDiv');
                return false;
            }
//            if (Password == "") {
//                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
//                Lbl.innerHTML = "Please Enter Password";
//                popup('popUpDiv');
//                return false;
//            }
//            if (Password != "") {
//                if (Password.length < 10) {
//                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
//                    Lbl.innerHTML = "Please Enter Password Allow Only 10 Value";
//                    popup('popUpDiv');
//                    return false;
//                }
//            }
//            if (CPassword == "") {
//                var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
//                Lbl.innerHTML = "Please Select Confirm";
//                popup('popUpDiv');
//                return false;
//            }
            if (Password != "") {
                if (Password == CPassword) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Confirm Password";
                    popup('popUpDiv');
                    return false;
                }
            }
            else {
                return true;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="border: 0px;" align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lblreg" runat="server" Text="REGISTRATION" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
    </table>
    <fieldset class="cls">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table style="border: 0px;">
                    <tr>
                        <th rowspan="2" width="205px" align="left" colspan="2" style="font-size: large; border: 0px;
                            color: #008cc4;">
                            Personal Information
                        </th>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td rowspan="2" style="color: Red; margin-left: 100px;">
                            * Fields are Mendetory...
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblfname" runat="server" Text="First Name:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtfname" runat="server" PlaceHolder="First Name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbllname" runat="server" Text="Last Name:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtlname" runat="server" AutoPostBack="True" PlaceHolder="Last Name" OnTextChanged="txtlname_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblemailid" runat="server" Text="E-Mail Id:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtemailid" runat="server" PlaceHolder="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblmobileno" runat="server" Text="Mobile No.:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtmobileno" runat="server" PlaceHolder="Mobile No."></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblgender" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:RadioButtonList ID="rndbtnlistgender" runat="server" Width="150px" RepeatDirection="Horizontal"
                                RepeatLayout="Flow">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbldob" runat="server" Text="Date Of Birth:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtdob" runat="server" PlaceHolder="Date Of Birth"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblcountry" runat="server" Text="Select Country:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="drpcountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblstate" runat="server" Text="Select State:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpstate_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblcity" runat="server" Text="Select City:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="drpcity" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblquestion" runat="server" Text="Security Question :"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="drpsecurityquestion" runat="server">
                                <asp:ListItem Value="0">-- Select Question --</asp:ListItem>
                                <asp:ListItem Value="1">Where is Your Birth Place?</asp:ListItem>
                                <asp:ListItem Value="2">Your Favroute Color?</asp:ListItem>
                                <asp:ListItem Value="3">Your First School Name?</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblanswer" runat="server" Text="Security Answer :"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtanswer" runat="server" PlaceHolder="Answer"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>

    <fieldset class="cls">
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                <table style="border: 0px;">
                    <tr>
                        <th align="left" colspan="2" style="font-size: large; border: 0px; color: #008cc4;">
                            User Information
                        </th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblphoto" runat="server" Text="Photo:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:FileUpload ID="fileuploadphoto" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblresume" runat="server" Text="Resume:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:FileUpload ID="fileuploadresume" runat="server" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>

    <fieldset class="cls">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <table style="border: 0px;">
                    <tr>
                        <th align="left" colspan="2" style="font-size: large; border: 0px; color: #008cc4;">
                            Account Information
                        </th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblusername" runat="server" Text="User Name:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtusername" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblpassword" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" PlaceHolder="Password"></asp:TextBox>
                            <%--<cc1:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtpassword"
                                MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumSymbolCharacters="1"
                                MinimumUpperCaseCharacters="1">
                            </cc1:PasswordStrength>--%>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblconfirmpwd" runat="server" Text="Confirm Password:"></asp:Label>
                        </td>
                        <td style="color: Red">
                            *
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtconfirmpwd" runat="server" TextMode="Password" PlaceHolder="Confirm Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <cc2:CaptchaControl ID="CaptchaControl1" runat="server" CaptchaBackgroundNoise="Low"
                                CaptchaLength="5" CaptchaHeight="32" CaptchaWidth="200" CaptchaLineNoise="Low"
                                CaptchaFontWarping="Extreme" CaptchaMinTimeout="2" CaptchaMaxTimeout="240" FontColor="#529E00" />
                        </td>
                        <td>
                            <asp:ImageButton ID="imgbtn" runat="server" ImageUrl="~/images/refresh_icon.jpeg"
                                Height="30px" Width="30px" OnClick="imgbtn_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcaptcha" runat="server"></asp:TextBox>
                            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>
    
    <br />
    <div id="reg">
        <table style="border: 0px; margin-left: 250px;">
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click"
                        OnClientClick="return Data(); " />
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                </td>
            </tr>
        </table>
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
            <ContentTemplate>
                <div align="center">
                    <div id="blanket" style="display: none;">
                    </div>
                    <div id="popUpDiv" style="display: none;">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                        <a href="#" onclick="popup('popUpDiv')">
                            <asp:Button ID="btnclose" runat="server" Text="OK" />
                        </a>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
