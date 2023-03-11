using LaLibreríaOnline.com.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using c = LaLibreríaOnline.com.Controllers;
using m = LaLibreríaOnline.com.Models;

namespace LaLibreríaOnline.com
{
    public partial class Principal : System.Web.UI.Page
    {
        //  El método Page_Load se ejecuta cada vez que se carga la página. Primero se comprueba si la página
        //  se está cargando por primera vez, en cuyo caso se cargan los datos de los libros.
        //  Luego se comprueba si existe una sesión iniciada y, si es así, se obtienen los favoritos y el carrito del
        //  usuario y se muestran los contadores de estos elementos en la página. Finalmente, si no hay una sesión iniciada,
        //  se ocultan los controles correspondientes en la página.

        // Se necesitan hacer mejoras en el pageload ya que este esta haciendo demasiadas cosas

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginInfo"] != null)
            {
                // Si la sesión existe...
                int idUsuario = Obtener_Id_Usuario();
                Session["FavoritosUsuario"] = new c.DatosDeUsuario().Traer_Favoritos_Usuario(idUsuario);
                Session["CarritoUsuario"] = new c.DatosDeUsuario().Traer_Carrito_Usuario(idUsuario);
                spanFavoritos.InnerText = ((IEnumerable)Session["FavoritosUsuario"]).Cast<object>().Count().ToString();
                spanCarrito.InnerText = Obtener_Cantidad_Carrito().ToString();
                navbarCollapse.Visible = false;
                txt_Bienvenido.InnerText = $"Bienvenido {Obtener_Correo()}";
            }
            else
            {
                // Si la sesión no existe...
                Favoritos_Carrito.Visible = false;
                txt_Bienvenido.Visible = false;
            }

            //if (Request.QueryString["busqueda"] == "true")
            //{
            //    Renderizar_Resultados_Busqueda(Request.QueryString["valor"]);
            //    // Hacer algo con el valor capturado, como realizar una búsqueda en una base de datos.
            //}

            if (!IsPostBack)
            {
                Renderizar_Todos_Libros();
            }
        }
        protected void Agregar_Favorito_ServerClick(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["loginInfo"] != null)
            {
                new c.Guardar_en_BD().Agregar_Favorito_BD(Obtener_Isbn(sender), Obtener_Id_Usuario());
                Response.Redirect("~/Views/Principal.aspx");
            }
            else
            {
                Mensaje_Sesion();
            }
        }
        protected void Agregar_Carrito_ServerClick(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["loginInfo"] != null)
            {
                new c.Guardar_en_BD().Agregar_Carrito_BD(Obtener_Isbn(sender), Obtener_Id_Usuario());
                Response.Redirect("~/Views/Principal.aspx");
            }
            else
            {
                Mensaje_Sesion();
            }
        }
        protected void Logo_ServerClick(object sender, EventArgs e)
        {
            Renderizar_Todos_Libros();
            Response.Redirect("~/Views/Principal.aspx");
        }
        protected void Btn_Busqueda_ServerClick(object sender, EventArgs e)
        {
            Card_Libro.DataSource = new c.Libros().Obtener_Resultados_Busqueda(Input_Busqueda.Value);
            Card_Libro.DataBind();
        }
        protected void Renderizar_Todos_Libros()
        {
            Card_Libro.DataSource = new c.Libros().Obtener_Todos_Libros();
            Card_Libro.DataBind();
        }
        protected int Obtener_Id_Usuario()
        {
            return ((List<m.DatosUsuario>)Session["DatosUsuario"])[0].idUsuario;
        }
        protected string Obtener_Correo()
        {
            return ((List<m.DatosUsuario>)Session["DatosUsuario"])[0].email;
        }
        protected string Obtener_Isbn(object sender)
        {
            return ((HtmlAnchor)sender).Attributes["data-isbn"];
        }
        protected int Obtener_Cantidad_Carrito()
        {
            int cantidadTotal = 0;
            var carrito = (IEnumerable<m.Libro>)Session["CarritoUsuario"];
            if (carrito != null)
            {
                cantidadTotal = carrito.Sum(l => l.cantidad);
            }
            return cantidadTotal;
        }
        protected void Mensaje_Sesion()
        {
            string mensaje = "Debe iniciar sesión antes de realizar esta accion";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alerta", $"alert('{mensaje}');", true);
        }

    }
}