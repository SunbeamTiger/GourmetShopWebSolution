using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Authenticated.Visible = false;
            HttpContext.Current.Session.Clear();
            HttpContext.Current.Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Hide or show additional navigation options to authenticated users. -AP 4/12
            Authenticated.Visible = false;
            lblGreeting.Text = string.Empty;
            Customer c = Session["Customer"] as Customer;
            if (c != null) { 
                Authenticated.Visible = true;
                lblGreeting.Text = "Welcome " + c.FullName;
            }

            lblCopyright.Text = "Copyright " + "&#169 " + DateTime.Now.Year + ". All the Important money-making rights reserved";

        }
        
    }
}