using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaLibreríaOnline.com.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            string usuario = InputUser.Value;
            string contrasena = InputPass.Value;
            string mensaje = "alert('¡Hola mundo!')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showModal('You must login to access this page')", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", mensaje, true);
        }
    }
}