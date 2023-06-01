using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace StoreApplication
{
    public partial class AdminUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        
        protected void btuUpdate_Click(object sender, EventArgs e)
        {
            // Get the selected UserID from the dropdown list
            string selectedUserID = userID.SelectedValue;

            // Call the stored procedure to update the customer account
            UpdateCustomerAccount(selectedUserID);
        }

        private void UpdateCustomerAccount(string userID)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["SalesSubConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("spSetCustomerAccountAsActive", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@UserID", userID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                // Display a success message or perform any other desired actions
                lblMessage.Text = "Customer account updated successfully.";
                lblMessage.Visible = true;
            }
            catch (Exception ex)
            {
                // Handle any exceptions that may occur
                lblMessage.Text = "An error occurred while updating the customer account: " + ex.Message;
                lblMessage.Visible = true;
            }
        }

    }

}