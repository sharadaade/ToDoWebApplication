using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
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
                Response.Write("<h2>" + Session["user"].ToString().ToUpper() + "</h2>");
                Response.Write("<em>You are joined on  </em>");
                Response.Write("<h23>" + (Session["loginDate"].ToString()).Substring(0,10) + "</h3>");
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