<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day48Demo.Pages.Users.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>User List for department Id <%= Request.QueryString["Id"] %></h1>
        <div>
        </div>
    </form>
</body>
</html>
