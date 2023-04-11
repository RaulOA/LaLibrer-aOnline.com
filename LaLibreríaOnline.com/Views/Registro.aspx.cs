using LaLibreríaOnline.com.Controllers;
using LaLibreríaOnline.com.Models;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace LaLibreríaOnline.com.Views
{
    public partial class Registro : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void SaveUserRegistrationData()
        {
            List<UserData> userData = new List<UserData>
            {
                new UserData
                {
                    userId = new Random().Next(1, 999999999),
                    email = InputUser.Value,
                    name = InputFullName.Value,
                    country = InputCountry.Value,
                    province = InputProvince.Value,
                    address = InputAddress.Value,
                    postalCode = InputPostalCode.Value,
                    cardNumber = InputCardNumber.Value,
                    expirationDate = InputExpiration.Value,
                    securityCode = InputSecurityCode.Value,
                }
            };
            new DatabaseActionsController().SaveUserController(userData);
        }
        protected void BtnSignIn_ServerClick(object sender, EventArgs e)
        {
            ResponsePayload registerInfo = new LogInAndSignInController().SendSignInSignUpRequest(InputUser.Value, InputPass.Value, false);
            if (registerInfo == null)
            {
                string message = $"alert('Error de Registro en Firebase')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "mensaje", message, true);
            }
            else
            {
                SaveUserRegistrationData();
                Response.Redirect("~/Views/Login.aspx");
            }
        }
    }
}