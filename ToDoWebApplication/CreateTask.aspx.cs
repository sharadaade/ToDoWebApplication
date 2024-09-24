using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoWebApplication
{
    public partial class CreateTask : System.Web.UI.Page
    {
        string cs = "Data Source=.\\sqlexpress;Initial Catalog=todo_experiment;Integrated Security=True;TrustServerCertificate=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO todotable (user_id, title, description, completed, created_at) VALUES (@userid ,@title, @description, 1,GETDATE())";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@userid", Session["userid"]);
                    cmd.Parameters.AddWithValue("@title", txtTitle.Text);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);                

                    con.Open();
                    int affect = cmd.ExecuteNonQuery();

                    if (affect > 0)
                    {
                        // Show success message
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Task Saved!');", true);
                    }
                    else
                    {
                        // Show failure message
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Something Wrong!');", true);
                    }

                    con.Close();
                }
            }
        }
    }
}