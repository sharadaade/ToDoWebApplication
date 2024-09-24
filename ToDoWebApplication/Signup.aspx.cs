using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoWebApplication
{
    public partial class Signup : System.Web.UI.Page
    {
        string cs = "Data Source=.\\sqlexpress;Initial Catalog=todo_experiment;Integrated Security=True;TrustServerCertificate=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO usertable (username, email, password, mobono, created_at) VALUES (@username, @email, @password, @mobono, GETDATE())";
                
                using(SqlCommand cmd = new SqlCommand(query, con))
                {
                    
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@mobono", txtMobono.Text);

                    con.Open();
                    int affect = cmd.ExecuteNonQuery();

                    if (affect > 0)
                    {
                        // Show success message
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Account created successfully!');", true);
                    }
                    else
                    {
                        // Show failure message
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Account creation failed!');", true);
                    }

                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}