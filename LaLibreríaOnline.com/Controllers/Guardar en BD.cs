using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using db = LaLibreríaOnline.com.DatabaseHelper;

namespace LaLibreríaOnline.com.Controllers
{
    public class Guardar_en_BD
    {
        public void Agregar_Favorito_BD(string isbn, int idUsuario)
        {
            new db.DataBase().Agregar_Favorito_BD(isbn, idUsuario);
        }
        public void Agregar_Carrito_BD(string isbn, int idUsuario)
        {
            new db.DataBase().Agregar_Carrito_BD(isbn, idUsuario);
        }
    }
}