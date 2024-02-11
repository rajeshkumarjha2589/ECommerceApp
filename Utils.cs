using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

namespace Ecommerce
{

    public class Utils
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        SqlDataReader rdr;
        DataTable dt;

        public static string getConnection()
        {
            return ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }

        public static bool isValidExtention(string fileName)
        {
            bool isValid = false;
            string[] fileExtention = { ".pnj", "jpg", ".jpeg" };
            foreach (string file in fileExtention)
            {
                if (fileName.Contains(file))
                {
                    isValid = true; break;
                }
            }
            return isValid;
        }
        public static string getUniqueId()
        {
            Guid guid = new Guid();
            return guid.ToString();
        }
    }
}