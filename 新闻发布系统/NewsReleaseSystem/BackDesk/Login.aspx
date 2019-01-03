<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NewsReleaseSystem.BackDesk.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body
        {
            position: relative;
            width: 30%;
            margin: 0 auto;
            text-align: center;
            margin-top: 105px;
            color:dimgrey;
            font-size: 12px;
            height :100%;
        }
        .bgRed
        {
            background-color:#FF0000;
        }
    </style>
    <script type="text/javascript">
        function ChgBgColor(con,color)
        {
          con.style.backgroundColor=color;
        }
        function ChgTextColor(con,color)
        {
          con.style.color=color; 
        }
    </script>
</head>
<body>
    <span style="position: relative; top: 50px; font-size: 25px"><b>管理员登陆</b></span>
    <div style="background-color:#f0f0f0; width: 415px; height: 285px; border: solid 0px #6AC0FF;">  
        <form id="form1" runat="server">
            <table style="width:385px;height:220px;" >
                <tr>
                    <td style="height:54px;">
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;width:120px;height:30px;">
                        用户名:
                    </td>
                    <td style="height: 5px">
                        <asp:TextBox ID="username" runat="server" Width="180px" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*姓名必填"
                            ControlToValidate="username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;height:30px;">
                        密码:
                    </td>
                    <td>
                        <asp:TextBox ID="pwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*密码必填"
                            ControlToValidate="pwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;height:30px;">
                        验证码:
                    </td>
                    <td>
                        <asp:TextBox ID="checkCode" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td style="color:snow; font-style: italic; font-size: 15px; font-family:'粗体';letter-spacing:2px">
                        <div style="background: url(../Images/10.gif); width: 50px; height: 20px; border: solid 1px #ffffff">
                            <asp:Label ID="verifyCode" runat="server"></asp:Label>
                        </div>
                    </td> 
                </tr>
            </table> 
            <br />
            <p style="width: 385px">
                <asp:Button ID="submit" BorderColor="#ffffff" runat="server" Text="登录" OnClick="submit_Click" Width="77px" Height="25px" BackColor="#d7d7d7" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button  BorderColor="#ffffff" runat="server" Text="取消" OnClick="cancel_Click1" Width="77px" Height="25px" BackColor="#d7d7d7" />
            </p>  
        </form>
    </div>
</body>
</html>
