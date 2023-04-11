namespace LaLibreríaOnline.com.Models
{
    public class Book
    {
        public string isbn { get; set; }
        public string title { get; set; }
        public string author { get; set; }
        public string publicationDate { get; set; }
        public decimal price { get; set; }
        public string image { get; set; }
        public int amount { get; set; }
        public bool isFavorite { get; set; }
        public decimal total { get; set; }

    }
}