using LaLibreríaOnline.com.Models;
using System;
using System.Web.UI;
using c = LaLibreríaOnline.com.Controllers;

namespace LaLibreríaOnline.com.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            LoginResponsePayload loginInfo = new c.Login().LogInWithPassword(InputUser.Value, InputPass.Value);
            if (loginInfo == null)
            {
                string mensaje = $"alert('Datos Incorrectos')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", mensaje, true);
            }
            else if (loginInfo.registered)
            {
                Session["loginInfo"] = loginInfo;
                Session["DatosUsuario"] = new c.DatosDeUsuario().Traer_Datos_Usuario(loginInfo.email);
                Response.Redirect("~/Views/Principal.aspx");
            }
        }
    }
}