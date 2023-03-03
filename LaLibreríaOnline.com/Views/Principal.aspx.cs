using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using c = LaLibreríaOnline.com.Controllers;

namespace LaLibreríaOnline.com
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                c.Libros Libro_Controller = new c.Libros();
                Card_Libro.DataSource = Libro_Controller.Obtener_Libros();
                Card_Libro.DataBind();
            }
        }
    }
}