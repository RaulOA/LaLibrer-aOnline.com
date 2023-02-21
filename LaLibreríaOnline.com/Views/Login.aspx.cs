using LaLibreríaOnline.com.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using loginController = LaLibreríaOnline.com.Controllers;

namespace LaLibreríaOnline.com.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            loginController.Login login = new loginController.Login();
            LoginResponsePayload loginInfo = login.signInWithPassword(InputUser.Value, InputPass.Value);



            //string mensaje = $"alert('Usuario: {usuario} // Contraseña: {contrasena}')";
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", mensaje, true);
        }
    }
}