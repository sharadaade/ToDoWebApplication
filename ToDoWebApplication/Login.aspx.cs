using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ToDoWebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = "Data Source=.\\sqlexpress;Initial Catalog=todo_experiment;Integrated Security=True;TrustServerCertificate=True";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from usertable where username = @user and password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@user", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pass", txtPassword.Text);

            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                //Session["user"] = txtUsername.Text;
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            con.Close();

            //using (SqlConnection con = new SqlConnection(cs))
            //{
            //    string query = "SELECT * FROM Login WHERE username = @user AND password = @pass";

            //    using (SqlCommand cmd = new SqlCommand(query, con))
            //    {
            //        cmd.Parameters.AddWithValue("@user", txtUsername.Text);
            //        cmd.Parameters.AddWithValue("@pass", txtPassword.Text);

            //        con.Open();

            //        using (SqlDataReader dr = cmd.ExecuteReader())
            //        {
            //            if (dr.HasRows)
            //            {
            //                Session["user"] = txtUsername.Text;
            //                Response.Redirect("Homepage.aspx");
            //            }
            //            else
            //            {

            //                Response.Redirect("Login.aspx");
            //            }
            //        }
            //    }
            //}


        }
    }
}