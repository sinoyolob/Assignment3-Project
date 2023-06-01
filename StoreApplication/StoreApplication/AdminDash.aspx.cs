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
    public partial class AdminDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AllUsers.Visible= true;
            CustomerAcc.Visible = false;
            unactiveAccounts.Visible = false;

        }

       
        protected void UserAccounts_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUsers.aspx");
        }

        protected void LogOutAdmin_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "All users")
            {
                AllUsers.Visible = true;
                CustomerAcc.Visible = false;
                unactiveAccounts.Visible = false;
            }
            else if (DropDownList1.SelectedItem.Text == "Customer Accounts")

            {
                AllUsers.Visible = false;
                CustomerAcc.Visible = true;
                unactiveAccounts.Visible = false;
            }
            else if (DropDownList1.SelectedItem.Text == "InACTIVE Customers")
            {
                AllUsers.Visible = false;
                CustomerAcc.Visible = false;
                unactiveAccounts.Visible = true;
            }
        }
    }
}