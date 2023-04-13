using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetShopWeb
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {

            }
        }

        public void btnRegister_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Hello " + txtFirstName + " " + txtLastName);

        }
    }
}