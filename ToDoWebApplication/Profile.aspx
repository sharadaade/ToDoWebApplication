<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ToDoWebApplication.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="Icon/favicon.ico" type="image/x-icon" />
    <style>
        body{
           background-color: #aa9e9e;
        }
    </style>
</head>
<body class="bg-secondary">
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="card" style="width: 18rem;">                
                <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" class="btn btn-outline-danger"/>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
