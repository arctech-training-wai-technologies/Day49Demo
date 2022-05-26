<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Day48Demo.Pages.Departments.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Department - Create</title>
    <link rel="stylesheet" href="/www-resources/css/form.css" />
</head>
<body>
    <h1>Create New Department</h1>
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
                        <asp:TextBox runat="server" ID="TextBoxName" placeholder="Enter Department Name" 
                                     MaxLength="50"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelDescription">Description</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxDescription" placeholder="Department Description" 
                                     TextMode="MultiLine" MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button runat="server" ID="ButtonCreate" Text="Create" OnClick="ButtonCreate_OnClick" />
                        <a style="float: right" href="Default.aspx"><input type="button" value="Back to Listing" /></a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
