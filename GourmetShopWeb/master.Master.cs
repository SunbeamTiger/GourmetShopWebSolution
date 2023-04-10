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
            lblCopyright.Text = "Copyright " + "&#169 " + DateTime.Now.Year + ". All the Important money-making rights reserved";
        }
    }
}