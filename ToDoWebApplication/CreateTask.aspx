<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTask.aspx.cs" Inherits="ToDoWebApplication.CreateTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="Icon/fevicon.ico" type="image/x-icon" />
    <title>Create Task - ToDo</title>
    <style>
        body {
            
            background-color: #aa9e9e;
        }

        h1 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h1>Save in your <strong><em>"Second Brain"</em></strong></h1>
                    
                    <div class="form-group">
                        <asp:Label ID="btnTitle" runat="server" Text="Title :" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" Height="24px" Width="100%"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Description :" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Width="100%"></asp:TextBox>
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-primary mt-3" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
