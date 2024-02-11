using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Security.Policy;
using System.Diagnostics.Eventing.Reader;

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
            Guid guid = Guid.NewGuid();
            return guid.ToString();
        }
        public static string getImageUrl(Object url)
        {
            string rul1 = string.Empty;
            if (string.IsNullOrEmpty(url.ToString()) || url == DBNull.Value) 
            {
                url = "../Images/No_images.png0";
            }
            else
            {
                rul1 = string.Format("../{0}", url);
            }
            return rul1;
        }

    }

}