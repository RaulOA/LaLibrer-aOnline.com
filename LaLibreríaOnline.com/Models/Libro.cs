using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaLibreríaOnline.com.Models
{
    public class Libro
    {
        public string isbn { get; set; }
        public string titulo { get; set; }
        public string autor { get; set; }
        public string fechaPublicacion { get; set; }
        public decimal precio { get; set; }
        public string foto { get; set; }
        public int cantidad { get; set; }
    }
}