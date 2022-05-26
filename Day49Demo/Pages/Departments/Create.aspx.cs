using System;
using System.Web.UI.WebControls;
using Day48Demo.Services;
using Day48Demo.Services.Models;
using Day48Demo.Services.Utilities;

namespace Day48Demo.Pages.Departments
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonCreate_OnClick(object sender, EventArgs e)
        {
            CreateData();
        }

        private void CreateData()
        {
            var departmentService = new DepartmentService();

            try
            {
                var department = new Department
                {
                    Name = TextBoxName.Text,
                    Description = TextBoxDescription.Text
                };

                departmentService.Add(department);

                LabelStatus.ShowStatusMessage("Department record successfully added!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to add Department record!");
            }
        }
    }
}