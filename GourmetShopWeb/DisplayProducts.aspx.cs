using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace GourmetShopWeb
{
	public partial class DisplayProducts : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			BindData();
		}

		private void BindData()
		{
			using (SqlConnection conn = new SqlConnection(db.getConnectionString()))
			{
				using (SqlCommand cmd = new SqlCommand("SELECT * FROM product WHERE ProductName like '%'+@Name+'%'", conn))
				{
					cmd.Parameters.AddWithValue("Name", searchBarText.Text);
					conn.Open();
					using (SqlDataReader dr = cmd.ExecuteReader())
					{
						listProductsGrid.DataSource = dr;
						listProductsGrid.DataBind();
					}
				}
			}
		}


		protected void searchBarButton_Click1(object sender, EventArgs e)
		{
			BindData();
		}
	}
}