<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Day48Demo.Pages.Departments.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Department - Update</title>
    <link rel="stylesheet" href="/www-resources/css/form.css" />
</head>
<body>
<h1>Update Department</h1>
<form id="form1" runat="server">
    <div class="status-message">
        <asp:Label runat="server" id="LabelStatus" Visible="false" />
    </div>
    <div>
        <table class="form-block">
            <tr>
                <td>
                    <asp:Label runat="server" ID="LabelName">Name</asp:Label></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBoxName" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;">
                    <asp:Label runat="server" ID="LabelDescription">Description</asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBoxDescription" 
                                 TextMode="MultiLine" MaxLength="500"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button runat="server" ID="ButtonUpdate" Text="Update" OnClick="ButtonUpdate_Click" />
                    <a style="float: right" href="Default.aspx"><input type="button" value="Back to Listing" /></a>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
