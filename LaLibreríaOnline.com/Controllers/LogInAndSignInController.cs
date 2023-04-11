using LaLibreríaOnline.com.Models;
using Newtonsoft.Json;
using System;
using System.IO;
using System.Net;
using System.Text;

namespace LaLibreríaOnline.com.Controllers
{
    public class LogInAndSignInController
    {
        public ResponsePayload SendSignInSignUpRequest(String user, String password, bool type)
        {
            var api = "AIzaSyCKIEzDbx3YWDPsC6wWwOKDaiHObhJVOrc";
            string url = type
             ? $"https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key={api}"
             : $"https://identitytoolkit.googleapis.com/v1/accounts:signUp?key={api}";
            var postData = $"{{'email':'{user}','password':'{password}','returnSecureToken':true}}";
            //Primero se crea un objeto HttpWebRequest y se establecen sus propiedades para indicar que es
            //una solicitud POST y que el tipo de contenido es JSON.
            HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
            request.Method = "POST";
            request.ContentType = "application/json";
            //A continuación, se obtiene el flujo de datos de la solicitud y se escribe el cuerpo JSON
            //utilizando la clase Encoding para convertir una cadena en un arreglo de bytes.
            using (Stream dataStream = request.GetRequestStream())
            {
                dataStream.Write(Encoding.UTF8.GetBytes(postData), 0, Encoding.UTF8.GetBytes(postData).Length);
            }
            try
            {
                //Luego se obtiene la respuesta del servidor y se lee el contenido del flujo de datos
                //de la respuesta utilizando un objeto StreamReader.
                HttpWebResponse response = request.GetResponse() as HttpWebResponse;
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    //Finalmente, se utiliza la biblioteca Newtonsoft.Json para deserializar el contenido
                    //de JSON de la respuesta en un objeto de tipo LoginResponsePayload y se devuelve.
                    ResponsePayload payload = JsonConvert.DeserializeObject<ResponsePayload>(reader.ReadToEnd());
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