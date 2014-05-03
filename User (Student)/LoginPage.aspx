<%@ page title="" language="C#" masterpagefile="~/User (Student)/LogIn.master" autoeventwireup="true" inherits="LoginPage, App_Web_htqrhh3e" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .cls
        {
            border: 0px solid gray;
            width: 400px;
            height: auto;
            padding: 15px;
            margin-top: 30px;
            margin-left: 95px;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 0px 0px 20px #072C53;
            margin: 5px 0px 0px 385px;
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
                margin-top:125px;
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
                var Email = document.getElementById('ContentPlaceHolder1_txtuname');
                var Password = document.getElementById('ContentPlaceHolder1_txtpassword');
                if (Email.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Email ID";
                    popup('popUpDiv');
                    return false;
                }
                if (Password.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter Password";
                    popup('popUpDiv');
                    return false;
                }
                else {
                    return true;
                }
            }
        </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="border: 0px;" align="center" width="100%">
        <tr>
            <td align="center" colspan="2">
                <h3>
                    <asp:Label ID="lbllogin" runat="server" Text="LOG IN" Font-Size="X-Large"></asp:Label>
                </h3>
            </td>
        </tr>
    </table>
    <fieldset class="cls">
        <table style="border: 0px;">
            <tr>
                <td align="right">
                    <asp:Label ID="lbluname" runat="server" Text="Email ID : " Width="75px"></asp:Label>
                </td>
                <td style="color:Red">*</td>
                <td align="left">
                    <asp:TextBox ID="txtuname" runat="server"  PlaceHolder="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblpassword" runat="server" Text="Password : "></asp:Label>
                </td>
                <td style="color:Red">*</td>
                <td align="left">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"  PlaceHolder="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="right">
                    <asp:LinkButton ID="lnkbtnforgetpassword" runat="server" PostBackUrl="~/User (Student)/ForgetPassword.aspx">Forget Password!!!!!</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" OnClientClick="return Data(); " TabIndex="1" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td colspan="4" align="right">
                    <asp:LinkButton ID="lnkbtnreg" runat="server" PostBackUrl="~/User (Student)/RegistrationPage.aspx"
                        ForeColor="#072C53" Font-Size="15px" Width="150px">Registration Here!!!!</asp:LinkButton>
                </td>
            </tr>
        </table>
        <div align="center">
        <div id="blanket" style="display:none;"></div>
            <div id="popUpDiv" style="display: none;">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br /><br />
                <a href="#" onclick="popup('popUpDiv')">
                    <asp:Button ID="btnclose" runat="server" Text="OK" />
                </a>
            </div>
            </div>
    </fieldset>
</asp:Content>
