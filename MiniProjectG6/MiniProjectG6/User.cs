using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiniProjectG6
{
    public class User
    {
        string _userName, _password;

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
    }
}