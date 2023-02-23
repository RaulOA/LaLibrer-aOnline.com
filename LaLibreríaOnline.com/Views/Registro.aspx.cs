using LaLibreríaOnline.com.Models;
using System;
using System.Web.UI;
using RegisterController = LaLibreríaOnline.com.Controllers;

namespace LaLibreríaOnline.com.Views
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignIn_ServerClick(object sender, EventArgs e)
        {
            RegisterController.Registro register = new RegisterController.Registro();
            LoginResponsePayload registerInfo = register.signUpWithPassword(InputUser.Value, InputPass.Value);

            if (registerInfo == null)
            {
                string mensaje = $"alert('Datos Incorrectos')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", mensaje, true);
            }
            else if (registerInfo.registered)
            {
                Response.Redirect("~/Views/Principal.aspx");
            }
        }
    }
}