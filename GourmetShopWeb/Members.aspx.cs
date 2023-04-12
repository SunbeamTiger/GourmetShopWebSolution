using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class Members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Customer"] == null)
            {

                Response.Redirect("Default.aspx");
            }
            else
            {
                Customer c = Session["Customer"] as Customer;
                lblGreeting.Text = "Welcome, " + c.FullName + "!";
                // determine if customer has a cart
                // no cart
                //ShoppingCart myCart 
                c.Cart = new ShoppingCart();
                // change the object, then
                // Session["Customer"] = c;
            }
        }
    }
}