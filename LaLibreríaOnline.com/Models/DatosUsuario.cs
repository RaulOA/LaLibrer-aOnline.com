using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaLibreríaOnline.com.Models
{
    public class DatosUsuario
    {
        public int idUsuario { get; set; }
        public string nombre { get; set; }
        public string email { get; set; }
        public string pais { get; set; }
        public string provincia { get; set; }
        public string direccion { get; set; }
        public string codigoPostal { get; set; }
        public string numeroTarjeta { get; set; }
        public string expiracion { get; set; }
        public string codigoSeguridad { get; set; }
    }
}