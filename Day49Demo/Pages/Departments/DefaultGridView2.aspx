<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultGridView2.aspx.cs" Inherits="Day48Demo.Pages.Departments.DefaultGridView2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Show all departments in GridView 2</h1>

            <asp:GridView ID="GridView1" runat="server"
                DataSourceID="SqlDataSource1"
                AllowSorting="True"
                AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField
                        ShowSelectButton="True"
                        ShowEditButton="True"
                        ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:UserManagement %>"
                SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
