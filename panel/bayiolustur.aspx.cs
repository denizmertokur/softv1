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
    public partial class bayiekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["KullaniciAdi"] != null)
            {
                string kullaniciAdi = Session["KullaniciAdi"].ToString();
                lblUsername.Text = kullaniciAdi;
                lblUsername2.Text = kullaniciAdi;
            }
            else
            {
                Response.Redirect("giris.aspx");
            }
            string[] iller = {
            "Şehir seçiniz.","Adana", "Adıyaman", "Afyonkarahisar", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin",
            "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale",
            "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum",
            "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "Mersin",
            "İstanbul", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli",
            "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir",
            "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat",
            "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray",
            "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır",
            "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"};
            foreach (string il in iller)
            {
                ListItem item = new ListItem(il, il);
                DropDownList1.Items.Add(item);
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("INSERT INTO tblBayiler(bayi_ad,bayi_telefon,bayi_adres,bayi_sehir,bayi_vergino,bayi_vergiadres,bayi_mail,bayi_faturaadres,kayit_tarihi) VALUES(@ad,@telefon,@adres,@sehir,@vergino,@vergiadres,@mail,@faturaadres,@tarih)", SqlConnectionClass.connection);
            commandList.Parameters.AddWithValue("@ad", txtAd.Text);
            commandList.Parameters.AddWithValue("@telefon", txtTelefon.Text);
            commandList.Parameters.AddWithValue("@adres", txtAdres.Text);
            commandList.Parameters.AddWithValue("@sehir", DropDownList1.SelectedItem.Text);
            commandList.Parameters.AddWithValue("@vergino", txtVergiNo.Text);
            commandList.Parameters.AddWithValue("@vergiadres", txtVergiAdres.Text);
            commandList.Parameters.AddWithValue("@mail", txtMail.Text);
            commandList.Parameters.AddWithValue("@faturaadres", txtFaturaAdres.Text);
            commandList.Parameters.AddWithValue("@tarih", DateTime.Now);
            SqlConnectionClass.CheckConnection();
            commandList.ExecuteNonQuery();
            Response.Redirect("bayilistesi.aspx");
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Remove("KullaniciAdi");
            Session.Abandon();
            Response.Redirect("giris.aspx");
        }
    }
}