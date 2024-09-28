using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoWebApplication
{
    public partial class Homepage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnCreateTask_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateTask.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteTask.aspx");
        }

        protected void btnUpdateTask_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateTask.aspx");
        }

        protected void btnShowTaskbyID_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowTaskByID.aspx");
        }

        protected void btnShowAllTask_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAllTask.aspx");
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}