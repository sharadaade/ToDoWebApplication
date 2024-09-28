<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ToDoWebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>To Do - Login</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="Icon/fevicon.ico" type="image/x-icon" /> 
        <style>
        body {
            background-color: #aa9e9e;
        }     
    </style>
</head>
<body>
    <div class="container">

        <div class="col-6  mt-4 mx-auto d-block">
            <form id="form1" runat="server">
                <div class="row mt-5">
                    <div class="col-5 mx-auto d-block">
                        <label for="txtUsername">Username </label>
                        <asp:TextBox ID="txtUsername" runat="server" Width="200px" class="form-control mt-1"></asp:TextBox>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-5 mx-auto d-block">
                        <label for="txtPassword">Password </label>
                        <asp:TextBox ID="txtPassword" runat="server" Width="200px" class="form-control mt-1"></asp:TextBox>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-2 mx-auto d-block">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" class="btn btn-outline-primary pt-2 mx-auto d-block" />
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-2 mx-auto d-block">
                        New User
                        <asp:Button ID="btnNewUser" runat="server" OnClick="btnNewUser_Click" Text="Signup" class="btn text-primary pt-2 mx-auto d-block" />
                    </div>
                </div>
            </form>
        </div>
    </div>
    <footer>
        
    </footer>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
