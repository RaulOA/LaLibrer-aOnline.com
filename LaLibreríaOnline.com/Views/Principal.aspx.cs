using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaLibreríaOnline.com
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void testbtn1_Click(object sender, EventArgs e)
        {
            testLabel.Text = "Hello Raul";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            testLabel.Text = "Hello " + DropDownList1.SelectedItem;
        }

        protected void btnHelp_ServerClick(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}