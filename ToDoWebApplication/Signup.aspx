<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ToDoWebApplication.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
     <link rel="shortcut icon" href="Icon/fevicon.ico" type="image/x-icon" />
    <title>ToDo - Signup</title>
    <style>
        body {
            background-color: #aa9e9e;
        }
   </style>
</head>
<body class="bg-black text-white">
    <div class="container mt-5">
        <form id="form1" runat="server">
            <div class="row mt-3">

                <div class="col-2 mx-auto d-block">
                    <div>
                        <label for="txtUsername">Username</label>
                        <asp:TextBox ID="txtUsername" runat="server" class="form-control mt-1"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-2 mx-auto d-block">
                    <div>
                        <label for="txtEmail">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control mt-1"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-2 mx-auto d-block">
                    <div>
                        <label for="txtPassword">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control mt-1"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-2 mx-auto d-block">
                    <div>
                        <label for="txtMobono">Mobo No</label>
                        <asp:TextBox ID="txtMobono" runat="server" class="form-control mt-1"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-2 mx-auto d-block">                    
                        <asp:Button ID="btnCreateAccount" runat="server" OnClick="btnCreateAccount_Click" Text="Create Account" class="btn btn-outline-primary pt-2 mx-auto d-block"/>            
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-2 mx-auto d-block">
                        Already have account
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" class="btn text-primary  mx-auto d-block"/>
                </div>
            </div>
    </form>
    </div>
</body>
</html>
