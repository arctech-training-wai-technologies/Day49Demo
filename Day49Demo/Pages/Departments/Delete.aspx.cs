using System;
using System.Data.SqlClient;
using System.Net.NetworkInformation;
using Day48Demo.Services;
using Day48Demo.Services.Utilities;

namespace Day48Demo.Pages.Departments
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            ShowDataToDelete();
        }

        protected void ButtonDelete_OnClick(object sender, EventArgs e)
        {
            DeleteData();
        }

        private void ShowDataToDelete()
        {
            var idText = Request.QueryString["id"];
            try
            {
                var id = int.Parse(idText);

                var departmentService = new DepartmentService();

                var department = departmentService.GetById(id);

                if (department == null)
                {
                    LabelStatus.ShowStatusMessage("Specified Id not found in database!");
                    return;
                }

                LabelNameData.Text = department.Name;
                LabelDescriptionData.Text = department.Description.GetFormattedValue();
            }
            catch (Exception e)
            {
                LabelStatus.ShowStatusMessage("Id parameter not found!");
            }
        }

        private void DeleteData()
        {
            var idText = Request.QueryString["id"];
            var id = int.Parse(idText);

            var departmentService = new DepartmentService();

            try
            {
                departmentService.Delete(id);

                LabelStatus.ShowStatusMessage("Department record successfully deleted!");
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
                LabelStatus.ShowStatusMessage("Failed to delete Department record! Maybe a foreign key was found! Please contact database admin!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to delete Department record!");
            }
        }
    }
}