﻿namespace LaLibreríaOnline.com.Models
{
    public class ResponsePayload
    {
        public string idToken { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string refreshToken { get; set; }
        public string expiresIn { get; set; }
        public string localId { get; set; }
        public bool registered { get; set; }
    }
}