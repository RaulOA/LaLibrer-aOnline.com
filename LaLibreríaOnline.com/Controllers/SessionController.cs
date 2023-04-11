using LaLibreríaOnline.com.Models;
using System.Collections.Generic;

namespace LaLibreríaOnline.com.Controllers
{
    public class SessionController
    {
        public int GetUserId(List<UserData> userDataList)
        {
            return userDataList[0].userId;
        }
        public string GetUserEmail(List<UserData> userDataList)
        {
            return userDataList[0].email;
        }

    }
}