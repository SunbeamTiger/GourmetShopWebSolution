using System;

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
                txtEmail.Text = string.Empty; //used as username
            }
        }

        public void btnRegister_Click(object sender, EventArgs e)
        {
            // Assuming valid - bad juju
            Customer c = new Customer(txtFirstName.Text, txtLastName.Text, txtEmail.Text);
            ChangePassword(c, txtPassword.ToString());

            c.SaveChanges();
            lock (this) { Session["Customer"] = c; }
            Response.Redirect("Members.aspx");

        }

        private void ChangePassword(Customer c, string password)
        {

        }

    }
}