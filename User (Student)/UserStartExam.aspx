<%@ page language="C#" autoeventwireup="true" inherits="User__Student_UserStartExam, App_Web_rzohl1iv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="../scripts/jquery-ui.js" type="text/javascript"></script>
    <link href="../styles/Exam.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #draggable
        {
            width: 150px;
            height: 70px;
            padding: 0.2em;
            box-shadow: 0px 0px 10px Black;
            background-color: #736357;
            margin: 0 10px 10px 0;
            border-radius: 10px 10px 10px 10px;
            color: White;
            font-family: Magneto;
            font-size: large;
            z-index: 1000;
        }
        
        #ContentPlaceHolder1_lblRemainTime
        {
            font-size: small;
        }
        
        a
        {
            
        }
    </style>
    <script>
        $(function () {
            $("#draggable").draggable({ revert: true });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <div>
            <div align="right">
            <div id="draggable" class="ui-widget-content">
                <p>
                    <center>
                        Remain Time
                        <br />
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <Triggers>
                                <asp:AsyncPostBackTrigger EventName="Tick" ControlID="Timer1" />
                            </Triggers>
                            <ContentTemplate>
                                <asp:Label ID="lblRemainTime" runat="server" Text=""></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:Timer ID="Timer1" runat="server" Interval="10" OnTick="Timer1_Tick">
                        </asp:Timer>
                    </center>
                </p>
            </div>
            <asp:Panel ID="Panel1" runat="server" Height="500px" ScrollBars="Vertical">
                <table width="100%">
                    <tr>
                        <td>
                        </td>
                        <td align="right">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        <asp:DataList ID="ExamData" runat="server" Width="100%" OnItemDataBound="ExamData_ItemDataBound"
                                OnItemCommand="ExamData_ItemCommand">
                                <ItemTemplate>
                                    <table id="ItemTable" cellpadding="10" cellspacing="10" width="100%">
                                        <tr>
                                            <td colspan="2" align="left">
                                                <b>
                                                    <asp:Label ID="lblQCounter" runat="server" Text=""></asp:Label>
                                                </b>)&nbsp;
                                                <asp:Label ID="Label1" runat="server" Text='<%# bind("question") %>'></asp:Label>
                                                <asp:HiddenField ID="hdAns" runat="server" Value='<%# bind("answer") %>' />
                                                <asp:Label Visible="false" ID="lblCAns" runat="server" Text='<%# bind("answer") %>' />
                                                <asp:HiddenField ID="hdQid" runat="server" Value='<%# bind("questionid") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>A</b>&nbsp;
                                                <asp:RadioButton ID="rdoA" runat="server" GroupName="A" Text='<%# bind("optiona") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>B</b>&nbsp;
                                                <asp:RadioButton ID="rdoB" runat="server" GroupName="A" Text='<%# bind("optionb") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>C</b>&nbsp;
                                                <asp:RadioButton ID="rdoC" runat="server" GroupName="A" Text='<%# bind("optionc") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>D</b>&nbsp;
                                                <asp:RadioButton ID="rdoD" runat="server" GroupName="A" Text='<%# bind("optiond") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td align="right">
                                            </td>
                                        </tr>
                                    </table>
                                    <hr style="width:50%;"/>
                                    <br />
                                </ItemTemplate>
                                <FooterTemplate>
                                    <div align="right">
                                        <asp:Button ID="Button1" runat="server" Text="Finish Exam" CommandName="SubmitExam"
                                            OnClientClick="return confirm('Are you sure to Finish Exam?')" /></div>
                                </FooterTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
