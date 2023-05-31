using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace StoreApplication
{
    public partial class RegisterCust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            noti.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox3.Text;
            string password = TextBox6.Text;
            string surname = TextBox2.Text;
            string firstname = TextBox1.Text;
            string usertype = "Customer";
            string active = "No";

            string connectionString = "MyConn";
            using (SqlConnection connection = new SqlConnection(connectionString));
            {
                SqlCommmand command = new SqlCommand("spUserAccount", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);
                command.Parameters.AddWithValue("@surname", surname);
                command.Parameters.AddWithValue("@firstname", firstname);
                command.Parameters.AddWithValue("@usertype", usertype);
                command.Parameters.AddWithValue("@active", active);

     
                connection.Open();

                command.ExecuteNonQuery();
                noti.Visible = true;


                }
            }
        }
    }
}