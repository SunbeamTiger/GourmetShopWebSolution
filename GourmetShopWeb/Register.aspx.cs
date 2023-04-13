using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
/*
 * To Do:  Add form validation and error condition
 */

namespace GourmetShopWeb
{
    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                txtLastName.Text = string.Empty;
                txtFirstName.Text = string.Empty;
                txtPassword.Text = string.Empty;     
            }
        }

        public void btnRegister_Click(object sender, EventArgs e)
        {

            Customer c = new Customer(txtFirstName.Text, txtLastName.Text);
            lock (this) { Session["Customer"] = c; 
            Response.Redirect("Members.aspx");

        }
    }
}