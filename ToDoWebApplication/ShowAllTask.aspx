<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllTask.aspx.cs" Inherits="ToDoWebApplication.ShowAllTask" %>

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
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row d-flex justify-content-center my-auto bg-light rounded shadow" height="100vh">
            <div class="col-10">
                <form id="form1" runat="server" class="text-center">
                    <div>
                        <h1 class="mt-3">All Task</h1>
                    </div>
                    <asp:GridView ID="grdTask" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="5" ForeColor="Black" GridLines="None" class="table table-striped table-bordered">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                </form>
            </div>
        </div>

    </div>
</body>
</html>
