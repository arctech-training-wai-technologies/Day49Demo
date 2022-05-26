<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Day48Demo.Pages.Departments.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Department - Delete</title>
    <link rel="stylesheet" href="/www-resources/css/form.css" />
</head>
<body>
<h1>Delete Department</h1>
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
                    <asp:Label runat="server" ID="LabelNameData" CssClass="readonly-data"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;">
                    <asp:Label runat="server" ID="LabelDescription">Description</asp:Label>
                </td>
                <td>
                    <asp:Label runat="server" ID="LabelDescriptionData" CssClass="readonly-data"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    You are about to delete this record. Are you sure?
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button runat="server" ID="ButtonDelete" Text="Delete" OnClick="ButtonDelete_OnClick" />                    
                    <a style="float: right" href="Default.aspx"><input type="button" value="Back to Listing" /></a>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
