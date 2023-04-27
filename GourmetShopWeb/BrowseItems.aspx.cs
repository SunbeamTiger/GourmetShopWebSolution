using GourmetShopWeb.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class BrowseItems : System.Web.UI.Page
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
                        //    gridProducts.DataSource = dr;
                        //    gridProducts.DataBind();
                        while (dr.Read())
                        {
                            yield return new Product
                            {
                                productId = (int)dr["id"],
                                productName = (string)dr["name"]
                            };
                        }
                    }
                }
            }
        }
        protected void chkPost_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}