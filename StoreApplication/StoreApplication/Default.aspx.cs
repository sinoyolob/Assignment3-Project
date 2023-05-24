using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("RegisterCust.aspx");
        }

        protected void LogIn_Click(object sender, EventArgs e)
        {
            Server.Transfer("LogIn.aspx");
        }
    }
}
