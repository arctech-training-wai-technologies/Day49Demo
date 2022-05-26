<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day48Demo.Pages.Departments.Default" %>

<%@ Import Namespace="Day48Demo.Services" %>
<%@ Import Namespace="Day48Demo.Services.Utilities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Department - View All</title>
    <link rel="stylesheet" href="/www-resources/css/form.css" />
</head>
<body>
    <h1>View All Departments</h1>

    <a href="Create.aspx">Add new department</a>
    <br />
    <br />

    <form id="form1" runat="server">
        <div>
            <table class="data-view">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th colspan="2"></th>
                </tr>
                <%
                    var departmentService = new DepartmentService();
                    var departments = departmentService.GetAll();

                    foreach (var department in departments)
                    {
                        Response.Write("<tr>\n");
                        Response.Write($"<td>{department.Id}</td>\n");
                        Response.Write($"<td>{department.Name}</td>\n");
                        Response.Write($"<td>{department.Description.GetFormattedValue()}</td>\n");
                        Response.Write($"<td><a href=\"Update.aspx?id={department.Id}\">Edit</a></td>\n");
                        Response.Write($"<td><a href=\"Delete.aspx?id={department.Id}\">Delete</a></td>\n");
                        Response.Write("</tr>\n");
                    }
                %>
            </table>
        </div>

        <hr />

        <div>
            <table class="data-view">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th colspan="2"></th>
                </tr>
                <%
                    foreach (var department in departments)
                    {
                %>
                <tr>
                    <td><%= department.Id %></td>
                    <td><%= department.Name %></td>
                    <td><%= department.Description.GetFormattedValue() %></td>
                    <td><a href="Update.aspx?id=<%= department.Id %>">Edit</a></td>
                    <td><a href="Delete.aspx?id=<%= department.Id %>">Delete</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </form>
</body>
</html>
