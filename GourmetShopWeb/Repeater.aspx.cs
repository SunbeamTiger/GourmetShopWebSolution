using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class Repeater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        private void BindData()
        {
            using (SqlConnection conn = new SqlConnection(db.getConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM product", conn))
                {
                    conn.Open();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        repProducts.DataSource = dr;
                        repProducts.DataBind();
                    }
                }
            }
        }

        protected void repProducts_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType== ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lblPrice = e.Item.FindControl("lblPrice") as Label;
                Label l = e.Item.FindControl("lblProduct") as Label;
                l.Font.Bold = true; 

                double price = double.Parse(lblPrice.Text);
                lblPrice.Text = price.ToString("c");
                // Adding a button dynamically
                //    Button b = new Button();
                //    b.Text = lblPrice.Text; 
                //    e.Item.Controls.Add(b); 
                // Hooking a control in the row by name and changing it
                //    if (l.Text.Length > 6) 
                //    { 
                //        l.ForeColor = System.Drawing.Color.Red; 
                //    }
            }

        }
    }
}