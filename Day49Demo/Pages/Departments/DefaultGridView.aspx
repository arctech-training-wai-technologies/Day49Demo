<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultGridView.aspx.cs" Inherits="Day48Demo.Pages.Departments.DefaultGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Departments - GridView Demo</title>
</head>
<body>
    <h1>Show all departments in GridView</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
