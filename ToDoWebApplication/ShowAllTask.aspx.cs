using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ToDoWebApplication
{
    public partial class ShowAllTask : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcstodo"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select title, description, created_at from todotable where user_id = @u_id";

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@u_id", Convert.ToInt32(Session["userid"]));
                    con.Open();
                    grdTask.DataSource = cmd.ExecuteReader();
                    grdTask.DataBind();
                    con.Close();
                }
            }
            
        }
    }
}