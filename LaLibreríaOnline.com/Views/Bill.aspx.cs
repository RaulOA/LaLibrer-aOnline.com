using LaLibreríaOnline.com.Controllers;
using LaLibreríaOnline.com.Models;
using System;
using System.Collections.Generic;

namespace LaLibreríaOnline.com.Views
{
    public partial class Bill : Cart
    {
        public List<UserData> UserData { get; set; }

        protected new void Page_Load(object sender, EventArgs e)
        {
            UserData = (List<UserData>)Session["userData"];
            List<Book> books = new DatabaseActionsController().GetCartItemsController(UserData[0].userId);
            Cart dataCart = new Cart();
            rptitems.DataSource = books;
            rptitems.DataBind();
        }
    }
}