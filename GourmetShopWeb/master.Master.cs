using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Hide or show additional navigation options to authenticated users. AP 4/12
            Authenticated.Visible = false;
            if (Session["Customer"] != null) { Authenticated.Visible = true; }

            lblCopyright.Text = "Copyright " + "&#169 " + DateTime.Now.Year + ". All the Important money-making rights reserved";
        }
    }
}