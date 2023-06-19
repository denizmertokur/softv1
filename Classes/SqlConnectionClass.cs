using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace softv1.Classes
{
    public class SqlConnectionClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=89.252.185.155\\MSSQLSERVER2019;Initial Catalog=bimaksof_dbVeriler;Persist Security Info=True;User ID=bimaksof_dev;Password=x%r75Di46");
        public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }
        public static void CloseConnection()
        {
            connection.Close();
        }
    }
}