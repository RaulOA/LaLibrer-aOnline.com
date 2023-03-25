using LaLibreríaOnline.com.Models;
using System;
using System.Collections.Generic;
using System.Web.UI;
using m = LaLibreríaOnline.com.Models;
using RegisterController = LaLibreríaOnline.com.Controllers;

namespace LaLibreríaOnline.com.Views
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Usuarios()
        {

            List<m.DatosUsuario> datosUsuario = new List<m.DatosUsuario>();

            datosUsuario.Add(new m.DatosUsuario 
            {

                email = InputUser.Value,
                nombre = InputFullName.Value,
                pais = InputCountry.Value,
                provincia = InputProvince.Value,
                direccion = InputAddress.Value,
                codigoPostal = InputPostalCode.Value,
                numeroTarjeta = InputCardNumber.Value,
                expiracion= InputExpiration.Value,
                codigoSeguridad= InputSecurityCode.Value,

            });
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