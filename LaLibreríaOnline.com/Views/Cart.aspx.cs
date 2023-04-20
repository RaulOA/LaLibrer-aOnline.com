using LaLibreríaOnline.com.Models;
using LaLibreríaOnline.com.Controllers;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace LaLibreríaOnline.com.Views
{
    public partial class Cart : Page
    {
        public int userId { get; set; }
        public static decimal subTotal { get; set; }
        public static decimal shippingCosts { get; set; }
        public static decimal total { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ReloadPage();
        }
        protected void ReloadPage()
        {
            this.userId = new SessionController().GetUserId((List<UserData>)Session["userData"]);
            List<Book> books = new DatabaseActionsController().GetCartItemsController(userId);
            CalculateTotals(books);
            rptCartItems.DataSource = books;
            rptCartItems.DataBind();
        }
        protected void CalculateTotals(List<Book> books)
        {
            decimal subTotal = 0;
            foreach (var book in books)
            {
                subTotal += book.price * book.amount; // Multiplica el precio por la cantidad de cada libro y lo suma al total
            }
            Cart.subTotal = subTotal; // Asigna el subtotaltotal a la variable subTotal
            Cart.shippingCosts = subTotal * 0.13m; // Calcula el 13% del total y lo asigna a la variable shippingCosts
            Cart.total = Cart.subTotal + Cart.shippingCosts;
        }

        protected void btnMinusAmount_ServerClick(object sender, EventArgs e)
        {
            string isbn = ((HtmlButton)sender).Attributes["data-isbn"];
            new DatabaseActionsController().DeductAmountToCartItemController(isbn, userId);
            ReloadPage();
        }

        protected void btnPlusAmount_ServerClick(object sender, EventArgs e)
        {
            string isbn = ((HtmlButton)sender).Attributes["data-isbn"];
            new DatabaseActionsController().AddAmountToCartItemController(isbn, userId);
            ReloadPage();
        }

        protected void btnRemoveItem_ServerClick(object sender, EventArgs e)
        {
            string isbn = ((HtmlButton)sender).Attributes["data-isbn"];
            new DatabaseActionsController().RemoveCartItemController(isbn, userId);
            ReloadPage();
        }

        protected void btnCheckout_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Bill.aspx");
        }
    }
}