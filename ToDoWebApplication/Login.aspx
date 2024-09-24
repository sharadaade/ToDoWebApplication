<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ToDoWebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/Login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 131px;
        }
        .auto-style3 {
            width: 131px;
            height: 34px;
        }
        .auto-style4 {
            height: 34px;
            width: 1134px;
        }
        .auto-style5 {
            width: 1134px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Username</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUsername" runat="server" Width="203px"></asp:TextBox>
&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" Width="202px"></asp:TextBox>
&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" style="height: 29px" />
                </td>
            </tr>
        </table>
        <div>
            <br />
            <asp:Button ID="btnNewUser" runat="server" OnClick="btnNewUser_Click" Text="New User" />
            <br />
        </div>
    </form>
</body>
</html>
