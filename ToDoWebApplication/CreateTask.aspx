<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTask.aspx.cs" Inherits="ToDoWebApplication.CreateTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <h1>Save in your <strong><em>"Second Brain"</em></strong></h1>
            <br />
            <asp:Label ID="btnTitle" runat="server" Text="Title :"></asp:Label>
&nbsp;<br />
&nbsp;<asp:TextBox ID="txtTitle" runat="server" Height="24px" Width="166px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Description :"></asp:Label>
&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="txtDescription" runat="server" Height="125px" TextMode="MultiLine" Width="263px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </div>
    </form>
</body>
</html>
