using softv1.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace softv1.panel
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtAd.Text) && !string.IsNullOrEmpty(txtParola.Text))
            {

                string sorgu = "SELECT COUNT(*) FROM tblKullanicilar WHERE kullanici_Adi = @KullaniciAdi AND kullanici_Parola = @Parola";
                SqlCommand commandList = new SqlCommand(sorgu, SqlConnectionClass.connection);
                commandList.Parameters.AddWithValue("@KullaniciAdi", txtAd.Text);
                commandList.Parameters.AddWithValue("@Parola", txtParola.Text);
                SqlConnectionClass.CheckConnection();
                int kullaniciSayisi = Convert.ToInt32(commandList.ExecuteScalar());
                if (kullaniciSayisi > 0)
                {
                    Session["KullaniciAdi"] = txtAd.Text;
                    Response.Redirect("anasayfa.aspx");
                }
                else
                {
                    hatamesaji.Attributes["class"] = "alert alert-danger visible";
                    txtAd.Text = "";
                    txtParola.Text = "";
                }
            }
        }
    }
}