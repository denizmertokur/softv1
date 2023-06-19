using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace softv1.Classes
{
    public class UserCheck
    {
        public static int GetUserPermission(string kullaniciAdi)
        {
            int permission = 0;

            if (HttpContext.Current.Session["KullaniciAdi"] != null)
            {

                try
                {

                    SqlConnectionClass.CheckConnection();

                        string query = "SELECT kullanici_yetki FROM tbl_Kullanicilar WHERE kullanici_Adi = @KullaniciAdi";

                        using (SqlCommand command = new SqlCommand(query, SqlConnectionClass.connection))
                        {
                            command.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);

                            object result = command.ExecuteScalar();

                            if (result != null)
                            {
                                permission = Convert.ToInt32(result);
                            }
                        }
                    
                }
                catch (Exception ex)
                {
                    // Hata işleme
                    Console.WriteLine("Hata: " + ex.Message);
                }
            }

            return permission;
        }
    }
}