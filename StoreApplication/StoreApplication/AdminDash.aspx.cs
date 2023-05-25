using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreApplication
{
    public partial class AdminDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserAccounts_Click(object sender, EventArgs e)
        {
            Server.Transfer("AdminUsers.aspx");
        }

        protected void LogOutAdmin_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }
    }
}