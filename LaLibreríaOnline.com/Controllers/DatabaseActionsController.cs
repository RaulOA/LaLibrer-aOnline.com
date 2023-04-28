using LaLibreríaOnline.com.DatabaseHelper;
using LaLibreríaOnline.com.Models;
using System;
using System.Collections.Generic;
using System.Data;

namespace LaLibreríaOnline.com.Controllers
{
    public class DatabaseActionsController
    {
        public List<Book> GetAllBooksController()
        {
            return ConvertBooksDataTable(new DataBase().GetAllBooks());
        }
        public List<Book> GetSearchResultsController(string keyword)
        {
            return ConvertBooksDataTable(new DataBase().GetSearchResults(keyword));
        }
        public List<UserData> GetUserDataController(String email)
        {
            return ConvertUserDataTable(new DataBase().GetUserData(email));
        }
        public List<Book> GetFavoritesController(int userId)
        {
            return ConvertFavoritesDataTable(new DataBase().GetFavorites(userId));
        }
        public List<Book> GetCartItemsController(int useId)
        {
            return ConvertCartDataTable(new DataBase().GetCartItems(useId));
        }



        public void SaveUserController(List<UserData> dataUser)
        {
            new DataBase().SaveUser(dataUser);
        }
        public void AddFavoriteController(string isbn, int userId)
        {
            new DataBase().AddFavorite(isbn, userId);
        }
        public void DeleteFavoriteController(string isbn, int userId)
        {
            new DataBase().DeleteFavorite(isbn, userId);
        }
        public void AddToCartCntroller(string isbn, int userId)
        {
            new DataBase().AddToCart(isbn, userId);
        }
        public void DeductAmountToCartItemController(string isbn, int userId)
        {
            new DataBase().DeductAmountToCartItem(isbn, userId);
        }
        public void AddAmountToCartItemController(string isbn, int userId)
        {
            new DataBase().AddAmountToCartItem(isbn, userId);
        }
        public void RemoveCartItemController(string isbn, int userId)
        {
            new DataBase().RemoveCartItem(isbn, userId);
        }



        public List<Book> ConvertCartDataTable(DataTable dataTable)
        {
            List<Book> cartItems = new List<Book>();
            foreach (DataRow row in dataTable.Rows)
            {
                cartItems.Add(new Book
                {
                    isbn = row["isbn"].ToString(),
                    title = row["titulo"].ToString(),
                    author = row["autor"].ToString(),
                    publicationDate = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    price = Convert.ToDecimal(row["precio"]),
                    image = row["foto"].ToString(),
                    amount = Convert.ToInt16(row["total_comprado"]),
                    total = Convert.ToDecimal(row["precio"]) * Convert.ToInt16(row["total_comprado"])
                });
            }
            return cartItems;
        }
        public List<Book> ConvertBooksDataTable(DataTable dataTable)
        {
            List<Book> books = new List<Book>();
            foreach (DataRow row in dataTable.Rows)
            {
                books.Add(new Book
                {
                    isbn = row["isbn"].ToString(),
                    title = row["titulo"].ToString(),
                    author = row["autor"].ToString(),
                    publicationDate = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    price = Convert.ToDecimal(row["precio"]),
                    image = row["foto"].ToString(),
                    isFavorite = false
                });
            }
            return books;
        }
        public List<Book> ConvertFavoritesDataTable(DataTable dataTable)
        {
            List<Book> favorites = new List<Book>();
            foreach (DataRow row in dataTable.Rows)
            {
                favorites.Add(new Book
                {
                    isbn = row["isbn"].ToString(),
                    title = row["titulo"].ToString(),
                    author = row["autor"].ToString(),
                    publicationDate = Convert.ToDateTime(row["fechaPublicacion"]).ToString("dd/MM/yyyy"),
                    price = Convert.ToDecimal(row["precio"]),
                    image = row["foto"].ToString(),
                    isFavorite = true,
                });
            }
            return favorites;
        }
        public List<UserData> ConvertUserDataTable(DataTable dataTable)
        {
            List<UserData> userData = new List<UserData>();
            foreach (DataRow row in dataTable.Rows)
            {
                userData.Add(new UserData
                {
                    userId = Convert.ToInt32(row["idUsuario"]),
                    name = row["nombre"].ToString(),
                    email = row["email"].ToString(),
                    country = row["pais"].ToString(),
                    province = row["provincia"].ToString(),
                    address = row["direccion"].ToString(),
                    postalCode = row["codigoPostal"].ToString(),
                    cardNumber = row["numeroTarjeta"].ToString(),
                    expirationDate = row["expiracion"].ToString(),
                    securityCode = row["codigoSeguridad"].ToString(),
                });
            }
            return userData;
        }



    }
}