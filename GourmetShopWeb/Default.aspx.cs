using GourmetShopWeb.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class PublicPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text=="dhagen" && txtPassword.Text=="Centralia")
            {
                //  Server.Transfer("Members.aspx");
                Customer c = new Customer("Hagen", "Dan", "1234 Main", 1);
                Session["Customer"] = c;
                Response.Redirect("Members.aspx");
            }
            else
                lblMessage.Text = "Login not recognized";
          
        }
    }
}