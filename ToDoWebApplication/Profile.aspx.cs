using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoWebApplication
{
    public partial class Profile : System.Web.UI.Page
    {
        //string cs = "Data Source=.\\sqlexpress;Initial Catalog=todo_experiment;Integrated Security=True;TrustServerCertificate=True";
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<h2>You are joined at </h2>");
                Response.Write(Session["loginDate"].ToString());
            }
           
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}