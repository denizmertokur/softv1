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
    public partial class Edit : System.Web.UI.Page
    {
        string uid, bid, aid, mid;

        protected void btnMesajOkundu_Click(object sender, EventArgs e)
        {
            SqlCommand okundu = new SqlCommand("UPDATE tblMesajlar SET mesaj_durum = 'OKUNDU' WHERE mesaj_ID = @id", SqlConnectionClass.connection);
            okundu.Parameters.AddWithValue("@id", Convert.ToInt32(txtMesajID.Text));
            SqlConnectionClass.CheckConnection();
            int kayitkontrol = okundu.ExecuteNonQuery();
            if (kayitkontrol > 0)
            {
                Response.Redirect("mesajlar.aspx");
            }
        }
        protected void btnBayiKaydet_Click(object sender, EventArgs e)
        {
            SqlCommand bayikaydet = new SqlCommand("UPDATE tblBayiler SET bayi_ad = @ad, bayi_telefon = @telefon, bayi_adres = @adres, bayi_sehir = @sehir, bayi_vergino = @vergino, bayi_vergiadres = @vergiadres, bayi_mail = @mail, bayi_faturaadres = @faturaadres WHERE bayi_ID = @id", SqlConnectionClass.connection);
            bayikaydet.Parameters.AddWithValue("@id", Convert.ToInt32(txtBayiID.Text));
            bayikaydet.Parameters.AddWithValue("@ad", txtBayiAd.Text);
            bayikaydet.Parameters.AddWithValue("@telefon", txtBayiTelefon.Text);
            bayikaydet.Parameters.AddWithValue("@adres", txtBayiAdres.Text);
            bayikaydet.Parameters.AddWithValue("@sehir", txtBayiSehir.Text);
            bayikaydet.Parameters.AddWithValue("@vergino", txtBayiVergiNo.Text);
            bayikaydet.Parameters.AddWithValue("@vergiadres", txtBayiVergiAdres.Text);
            bayikaydet.Parameters.AddWithValue("@mail", txtBayiMail.Text);
            bayikaydet.Parameters.AddWithValue("@faturaadres", txtBayiFaturaAdres.Text);
            SqlConnectionClass.CheckConnection();
            int kayitkontrol = bayikaydet.ExecuteNonQuery();
            if (kayitkontrol > 0)
            {
                Response.Redirect("bayilistesi.aspx");
            }
            else
            {
                Response.Redirect("giris.aspx");
            }
        }

        protected void btnUrunKaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(uid);
            string ad = txtUrunAdi.Text;
            string aciklama = txtUrunAciklama.Text;
            int kategori = Convert.ToInt32(txtUrunKategori.Text);
            string tur = txtUrunTur.Text;
            string URL = txtUrunURL.Text;
            SqlCommand urunkaydet = new SqlCommand("UPDATE bimaksof_admin.tblUrunler SET urun_adi = @ad, urun_resim = @resim, urun_aciklama = @aciklama, urun_tür = @tur, urun_kategori = @kategori WHERE urun_ID = @id", SqlConnectionClass.connection);
            urunkaydet.Parameters.AddWithValue("@id", id);
            urunkaydet.Parameters.AddWithValue("@ad", ad);
            urunkaydet.Parameters.AddWithValue("@aciklama", aciklama);
            urunkaydet.Parameters.AddWithValue("@kategori", kategori);
            urunkaydet.Parameters.AddWithValue("@resim", URL);
            urunkaydet.Parameters.AddWithValue("@tur", tur);
            SqlConnectionClass.CheckConnection();
            int kayitkontrol = urunkaydet.ExecuteNonQuery();
            if (kayitkontrol > 0)
            {
                Response.Redirect("urunler.aspx");
            }
            else
            {
                Response.Redirect("giris.aspx");
            }
        }

        protected void btnYetkiliKaydet_Click(object sender, EventArgs e)
        {
            
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] != null)
            {
                string kullaniciAdi = Session["KullaniciAdi"].ToString();
                lblUsername.Text = kullaniciAdi;
                lblUsername2.Text = kullaniciAdi;

                uid = Request.QueryString["uid"];
                bid = Request.QueryString["bid"];
                aid = Request.QueryString["aid"];
                mid = Request.QueryString["mid"];
                if (!IsPostBack)
                {
                    CheckID();
                }
            }
            else
            {
                Response.Redirect("giris.aspx");
            }
        }
        private void CheckID()
        {
            if (!string.IsNullOrEmpty(uid))
            {
                uduzenle.Attributes["class"] = "ibox ibox-warning visible";
                SqlCommand command = new SqlCommand("SELECT * FROM bimaksof_admin.tblUrunler WHERE urun_ID = @urunID", SqlConnectionClass.connection);
                command.Parameters.AddWithValue("@urunID", Convert.ToString(uid));
                SqlConnectionClass.CheckConnection();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    txtUrunAdi.Text = reader["urun_adi"].ToString();
                    txtUrunKategori.Text = reader["urun_kategori"].ToString();
                    txtUrunTur.Text = reader["urun_tür"].ToString();
                    txtUrunURL.Text = reader["urun_resim"].ToString();
                    txtUrunAciklama.Text = reader["urun_aciklama"].ToString();
                    txtUrunID.Text = Convert.ToString(uid);
                }
                SqlConnectionClass.CloseConnection();
            }

            if (!string.IsNullOrEmpty(bid))
            {
                bduzenle.Attributes["class"] = "ibox ibox-warning visible";

                SqlCommand command = new SqlCommand("SELECT * FROM tblBayiler WHERE bayi_ID = @bayiID", SqlConnectionClass.connection);
                command.Parameters.AddWithValue("@bayiID", Convert.ToString(bid));
                SqlConnectionClass.CheckConnection();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    txtBayiID.Text = Convert.ToString(bid);
                    txtBayiAd.Text = reader["bayi_Ad"].ToString();
                    txtBayiTelefon.Text = reader["bayi_telefon"].ToString();
                    txtBayiAdres.Text = reader["bayi_adres"].ToString();
                    txtBayiSehir.Text = reader["bayi_sehir"].ToString();
                    txtBayiVergiNo.Text = reader["bayi_vergino"].ToString();
                    txtBayiVergiAdres.Text = reader["bayi_vergiadres"].ToString();
                    txtBayiMail.Text = reader["bayi_mail"].ToString();
                    txtBayiFaturaAdres.Text = reader["bayi_faturaadres"].ToString();
                }
                SqlConnectionClass.CloseConnection();

            }
            if (!string.IsNullOrEmpty(aid))
            {
                
                aduzenle.Attributes["class"] = "ibox ibox-warning visible";

                SqlCommand command = new SqlCommand("SELECT * FROM tblKullanicilar WHERE kullanici_ID = @kullanici_ID", SqlConnectionClass.connection);
                command.Parameters.AddWithValue("@kullanici_ID", Convert.ToString(aid));
                SqlConnectionClass.CheckConnection();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    txtYetkiliID.Text = Convert.ToString(aid);
                    txtYetkiliAd.Text = reader["kullanici_Adi"].ToString();
                    txtYetkiliYetki.Text = reader["kullanici_Yetki"].ToString();
                    txtYetkiliPozisyon.Text = reader["kullanici_Pozisyon"].ToString();
                }
                SqlConnectionClass.CloseConnection();
            }

            if (!string.IsNullOrEmpty(mid))
            {
                mduzenle.Attributes["class"] = "ibox ibox-warning visible";

                SqlCommand command = new SqlCommand("SELECT * FROM tblMesajlar WHERE mesaj_ID = @mesaj_ID", SqlConnectionClass.connection);
                command.Parameters.AddWithValue("@mesaj_ID", Convert.ToString(mid));
                SqlConnectionClass.CheckConnection();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    txtMesajID.Text = Convert.ToString(mid);
                    txtMesajGonderen.Text = reader["Mesaj_Gonderen"].ToString();
                    txtMesajMail.Text = reader["mesaj_Mail"].ToString();
                    txtMesajKonu.Text = reader["mesaj_baslik"].ToString();
                    txtMesajİcerik.Text = reader["mesaj_icerik"].ToString();
                    txtMesajDurum.Text = reader["mesaj_durum"].ToString();
                    txtMesajTarih.Text = reader["mesaj_tarih"].ToString();
                }
                SqlConnectionClass.CloseConnection();
            }
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Remove("KullaniciAdi");
            Session.Abandon();
            Response.Redirect("giris.aspx");
        }
    }
}