using GourmetShopWeb.Tools;
using System;
using System.Data.SqlClient;
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
       protected void lnkCreateAccount_Click(object sender, EventArgs e)
        {
           
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db.getConnectionString()))
            {
               using(SqlCommand cmd = new SqlCommand("LOGIN", conn))
               {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@User", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@Pass", txtPassword.Text);
                    conn.Open();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                   {
                        if (dr.Read())
                        {                        
                            string lastname = dr[0].ToString();
                            string firstname = dr[1].ToString();
                            string Address = dr[2].ToString();
                            //int visit = Convert.ToInt32(dr[3]) +1;
                            string drvisit = dr[3].ToString();                            
                            int visit = Convert.ToInt32(drvisit);
                            visit =+1;
                            //visit += 1;                           
                            Customer c = new Customer(lastname, firstname, Address, visit);
                            Session["Customer"] = c;
                            Server.Transfer("Members.aspx");
                           
                             Response.Redirect("Members.aspx");
                        }
                        else
                        {
                            lblMessage.Text = "Login not recognized";
                        }
                   }
                }
            }
            //if (txtUsername.Text=="dhagen" && txtPassword.Text=="Centralia")
            //{
            //    //  Server.Transfer("Members.aspx");
            //    Customer c = new Customer("Hagen", "Dan", "1234 Main", 1);
            //    Session["Customer"] = c;
            //    Response.Redirect("Members.aspx");
            //}
            //else
            //    lblMessage.Text = "Login not recognized";
          
        }

    }
}