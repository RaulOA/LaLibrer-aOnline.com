using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using LaLibreríaOnline.com.Controllers;
using LaLibreríaOnline.com.Models;

namespace LaLibreríaOnline.com
{
    public partial class Principal : Page
    {
        //  El método Page_Load se ejecuta cada vez que se carga la página. Primero se comprueba si la página
        //  se está cargando por primera vez, en cuyo caso se cargan los datos de los libros.
        //  Luego se comprueba si existe una sesión iniciada y, si es así, se obtienen los favoritos y el carrito del
        //  usuario y se muestran los contadores de estos elementos en la página. Finalmente, si no hay una sesión iniciada,
        //  se ocultan los controles correspondientes en la página.

        public int userId { get; set; }
        public string userEmail { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginInfo"] != null)
            {
                // Si la sesión existe...
                userId = new SessionController().GetUserId((List<UserData>)Session["userData"]);
                userEmail = new SessionController().GetUserEmail((List<UserData>)Session["userData"]);
                Session["favorites"] = new DatabaseActionsController().GetFavoritesController(userId);
                Session["cart"] = new DatabaseActionsController().GetCartItemsController(userId);
                spanFavoritos.InnerText = ((IEnumerable)Session["favorites"]).Cast<object>().Count().ToString();
                spanCarrito.InnerText = GetCartAmount().ToString();
                navbarCollapse.Visible = false;
                txt_Bienvenido.InnerText = $"Bienvenido {userEmail}";
            }
            else
            {
                // Si la sesión no existe...
                Favoritos_Carrito.Visible = false;
                txt_Bienvenido.Visible = false;
                btn_CerrarSesion.Visible = false;

            }
            RenderAllBooks();
        }
        protected void Agregar_Favorito_ServerClick(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["loginInfo"] != null)
            {
                new DatabaseActionsController().AddFavoriteController(GetBookIsbn(sender), userId);
                Response.Redirect("~/Views/Principal.aspx");
            }
            else
            {
                Message("Debe iniciar sesión antes de agregar un favorito");
            }
        }
        protected void Eliminar_Favorito_ServerClick(object sender, EventArgs e)
        {
            new DatabaseActionsController().DeleteFavoriteController(GetBookIsbn(sender), userId);
            Message("Libro eliminado de favoritos");
        }
        protected void Agregar_Carrito_ServerClick(object sender, EventArgs e)
        {
            // Verifica si la sesión "loginInfo" es diferente de nulo
            if (HttpContext.Current.Session["loginInfo"] != null)
            {
                // Si la sesión "loginInfo" no es nula, llama al método "Agregar_Carrito_BD"
                // de la clase "Guardar_en_BD" y le pasa como argumentos el ISBN del libro
                // y el ID del usuario obtenidos mediante los métodos "Obtener_Isbn" y 
                // "Obtener_Id_Usuario", respectivamente, a través del parámetro "sender".

                new DatabaseActionsController().AddToCartCntroller(GetBookIsbn(sender), userId);

                // Redirige al usuario a la página "Principal.aspx"
                Response.Redirect("~/Views/Principal.aspx");
            }
            else
            {
                // Si la sesión "loginInfo" es nula, llama al método "Mensaje_Sesion"
                // que muestra un mensaje de error al usuario.
                Message("Debe iniciar sesión antes de agregar algo a su carrito");
            }
        }
        protected void Btn_Busqueda_ServerClick(object sender, EventArgs e)
        {
            Card_Libro.DataSource = new DatabaseActionsController().GetSearchResultsController(Input_Busqueda.Value);
            Card_Libro.DataBind();
            Titulo_Libros.InnerHtml = "Resultados de Busqueda";
        }
        protected void btn_Favoritos_ServerClick(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["loginInfo"] != null)
            {
                Card_Libro.DataSource = (List<Book>)Session["favorites"];
                Card_Libro.DataBind();
                Titulo_Libros.InnerHtml = "Mis Favoritos";
            }
            else
            {
                Message("Debe iniciar sesión antes de poder mostrar sus favoritos");
            }
        }
        protected void btn_Carrito_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Cart.aspx");
        }
        protected void RenderAllBooks()
        {
            // Se obtienen todos los libros disponibles
            List<Book> books = new DatabaseActionsController().GetAllBooksController();

            // Se verifica si hay un usuario logueado
            if (Session["loginInfo"] != null)
            {
                // Se convierte la lista de favoritos del usuario en un diccionario con clave ISBN y valor Libro
                Dictionary<string, Book> favorites = ((List<Book>)Session["favorites"]).ToDictionary(l => l.isbn);

                // Se recorre cada libro de la lista de todos los libros
                foreach (Book book in books)
                {
                    // Se verifica si el libro está en la lista de favoritos del usuario
                    if (favorites.ContainsKey(book.isbn))
                    {
                        // Se cambia la propiedad esFavorito del libro a true
                        book.isFavorite = true;
                    }
                }
            }

            // Se asigna la lista de libros al control Card_Libro y se renderiza en la página
            Card_Libro.DataSource = books;
            Card_Libro.DataBind();

            // Se asigna un título al control Titulo_Libros
            Titulo_Libros.InnerHtml = "Libros Disponibles";
        }

        protected string GetBookIsbn(object sender)
        {
            return ((HtmlAnchor)sender).Attributes["data-isbn"];
        }
        protected int GetCartAmount()
        {
            int amount = 0;
            var cart = (IEnumerable<Book>)Session["cart"];
            if (cart != null)
            {
                amount = cart.Sum(i => i.amount);
            }
            return amount;
        }
        protected void Message(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alerta", $"alert('{mensaje}');", true);
        }

        protected void btn_CerrarSesion_ServerClick(object sender, EventArgs e)
        {
            Session.Clear(); // Borra todos los datos de la sesión
            Message("Secion Cerrada con Exito. Hasta Pronto");
            Response.Redirect("~/Views/Login.aspx"); // Redirecciona al usuario a la página de inicio de sesión
        }
    }
}