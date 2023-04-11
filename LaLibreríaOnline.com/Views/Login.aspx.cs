using System;
using System.Web.UI;
using LaLibreríaOnline.com.Controllers;
using LaLibreríaOnline.com.Models;

namespace LaLibreríaOnline.com.Views
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            ResponsePayload loginInfo = new LogInAndSignInController().SendSignInSignUpRequest(InputUser.Value, InputPass.Value, true);

            if (loginInfo == null)
            {
                string message = $"alert('Datos Incorrectos')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", message, true);
            }
            else if (loginInfo.registered)
            {
                Session["loginInfo"] = loginInfo;
                Session["userData"] = new DatabaseActionsController().GetUserDataController(loginInfo.email);
                Response.Redirect("~/Views/Principal.aspx");
            }
        }
    }
}