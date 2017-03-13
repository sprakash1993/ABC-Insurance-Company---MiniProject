using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MiniProjectG6
{
    public class UserDb
    {
        public bool checkUser(string user, string pass)
        {
            string ConnectionString = "Data Source=172.25.192.72;" + "Initial Catalog=DB06HMS07;" + "User id=PJ06HMS07;" + "Password=tcshyd;";

            SqlConnection connection = new SqlConnection(ConnectionString);            connection.Open();
 
            SqlCommand command = new SqlCommand();
 
            command.CommandType = CommandType.StoredProcedure;

            command.CommandText = "sp_userLogin06";
 
            command.Connection = connection;
 
            SqlDataReader reader= command.ExecuteReader();
          //  List<User> userrList = new List<User>();

            while (reader.Read())
            {
                string uname = reader["USERNAME"].ToString();
                string password = reader["USER_PASSWORD"].ToString();
                if (uname == user && pass == password)
                    return true;

            }
            connection.Close();
            return false;
        }
    }
}