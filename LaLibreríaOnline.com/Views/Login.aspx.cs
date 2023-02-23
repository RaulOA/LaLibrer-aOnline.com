using LaLibreríaOnline.com.Models;
using System;
using System.Web.UI;
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
            LoginResponsePayload loginInfo = login.LogInWithPassword(InputUser.Value, InputPass.Value);

            if (loginInfo == null)
            {
                string mensaje = $"alert('Datos Incorrectos')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", mensaje, true);
            }
            else if (loginInfo.registered)
            {
                Response.Redirect("~/Views/Principal.aspx");
            }

            //string mensaje = $"alert('Usuario: {usuario} // Contraseña: {contrasena}')";
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", mensaje, true);
        }
    }
}