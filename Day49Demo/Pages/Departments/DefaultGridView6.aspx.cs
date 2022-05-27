using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day48Demo.Pages.Departments
{
    public partial class DefaultGridView6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected string GetImageUrl(object genderField)
        {
            var gender = (string)genderField;
            switch (gender)
            {
                case "M":
                    return "~/images/male.png";
                case "F":
                    return "~/images/female.png";
            }

            return "";
        }
    }
}