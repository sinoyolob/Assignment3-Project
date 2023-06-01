using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace StoreApplication
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void goRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterCust.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text.Trim();
            string password = TextBox2.Text.Trim();

            // Call the stored procedure to retrieve login details
            LoginResult loginResult = GetLoginDetails(username, password);

            if (loginResult != null)
            {
                // Check the role of the user and redirect accordingly
                if (loginResult.Role == "Admin")
                {
                    Response.Redirect("AdminDash.aspx");
                }
                else if (loginResult.Role == "Customer")
                {
                    Response.Redirect("Products.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }

        private LoginResult GetLoginDetails(string username, string password)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["SalesSubConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("spGetLogin", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@password", password);

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        reader.Read();
                        LoginResult loginResult = new LoginResult();
                        loginResult.UserID = reader["userID"].ToString();
                        loginResult.Role = reader["userType"].ToString();

                        return loginResult;
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions that may occur
                lblMessage.Text = "An error occurred while logging in: " + ex.Message;
            }

            return null;
        }

        public class LoginResult
        {
            public string UserID { get; set; }
            public string Role { get; set; }
        }

    }
}