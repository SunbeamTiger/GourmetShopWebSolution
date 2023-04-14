using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class Profile : System.Web.UI.Page
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
                    lblAddress.Text = "Address: " + c.Address;

                    // get the order history for the customer
                    List<string> orderHistory = GetOrderHistoryForCustomer(c);

                    lblOrderHistory.Text = "Order History for " + c.FullName + ":<br>";
                    foreach (string order in orderHistory)
                    {
                        lblOrderHistory.Text += "- " + order + "<br>";
                    }


            }
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            lblAddress.Visible = false;
            txtAddress.Visible = true;
            Save.Visible = true;
            Edit.Visible = false;
            Cancel.Visible = true;
        }

        //protected void Save_Click(object sender, EventArgs e)
        //{
        //    Customer c = Session["Customer"] as Customer;// implement method to get customer from database
        //    c.Address = txtAddress.Text;
        //    c.SaveChanges(); // implement method to save changes to database
        //}

        protected void btnCancelEditProfile_Click(object sender, EventArgs e)
        {
            lblAddress.Visible = true;
            txtAddress.Visible = false;
            Edit.Visible = true;
            Save.Visible = false;
            Cancel.Visible = false;
        }


        private List<string> GetOrderHistoryForCustomer(Customer customer)
        {
            List<string> orderHistory = new List<string>();
            orderHistory.Add("Order 1");
            orderHistory.Add("Order 2");
            orderHistory.Add("Order 3");
            return orderHistory;
        }
    }
}