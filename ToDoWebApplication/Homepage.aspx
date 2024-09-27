<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="ToDoWebApplication.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="Icon/fevicon.ico" type="image/x-icon" />
    <title>Homepage - ToDo</title>
    <style>
        body {
            background-color: #aa9e9e;
        }

        h1 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #007bff;
            text-shadow: 1px 1px 2px rgba(0, 123, 255, 0.5);
            margin-bottom: 20px;
        }

        .highlight {
            background-color: #e7f1ff;
            padding: 5px 10px;
            border-radius: 5px;
        }
    </style>
</head>

<body>
    <form id="form2" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                    <h1>Welcome to the world of <span class="highlight text-bg-info">ToDo</span></h1>
                    <asp:Button ID="Button1" runat="server" OnClick="btnProfile_Click" Text="Profile" class="btn btn-primary mb-2" />
                    <asp:Button ID="Button2" runat="server" OnClick="btnCreateTask_Click" Text="Create Task" class="btn btn-warning mb-2" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Delete Task" class="btn btn-danger mb-2" />
                    <!--
                    <asp:Button ID="Button4" runat="server" OnClick="btnUpdateTask_Click" Text="Update Task" class="btn btn-outline-primary mb-2" />
                    
                    <asp:Button ID="Button5" runat="server" OnClick="btnShowTaskbyID_Click" Text="Show Task by ID" class="btn btn-primary mb-2" />
                    -->
                    <asp:Button ID="Button6" runat="server" OnClick="btnShowAllTask_Click" Text="Show All Task" class="btn btn-primary mb-2" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
