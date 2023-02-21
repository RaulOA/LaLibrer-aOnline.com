using LaLibreríaOnline.com.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;


namespace LaLibreríaOnline.com.Controllers
{
    public class Login
    {
        public LoginResponsePayload signInWithPassword(String usuario, String contrasena)
        {
            var api = "AIzaSyCKIEzDbx3YWDPsC6wWwOKDaiHObhJVOrc";
            var url = $"https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key={api}";
            //var postData = "{'email':'" + usuario + "','password':'" + contrasena + "','returnSecureToken':true}";
            var postData = $"{{'email':'{usuario}','password':'{contrasena}','returnSecureToken':true}}";
            HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
            request.Method = "POST";
            request.ContentType = "application/json";
            using (Stream dataStream = request.GetRequestStream())
            {
                dataStream.Write(Encoding.UTF8.GetBytes(postData), 0, Encoding.UTF8.GetBytes(postData).Length);
            }
            try
            {
                HttpWebResponse response = request.GetResponse() as HttpWebResponse;
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    LoginResponsePayload payload = JsonConvert.DeserializeObject<LoginResponsePayload>(reader.ReadToEnd());
                    return payload;
                }
            }
            catch
            {
                return null;
            }
        }
    }
}