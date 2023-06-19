using softv1.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace softv1
{
    public partial class iletisim : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAbone_Click(object sender, EventArgs e)
        {
            // Olay işleyicisi kodunu buraya ekleyin
        }

        protected void btnMesajGonder_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrWhiteSpace(txtName.Text) || string.IsNullOrWhiteSpace(txtMail.Text) || string.IsNullOrWhiteSpace(txtBaslik.Text) || string.IsNullOrWhiteSpace(txtMesaj.Text))
            if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtMail.Text) || string.IsNullOrEmpty(txtBaslik.Text) || string.IsNullOrEmpty(txtMesaj.Text))
            {
                lblUyari.ForeColor = System.Drawing.Color.Red;
                lblUyari.Text = "Boşta alan bırakmayınız.";
            }
            else
            {
                SqlConnectionClass.CheckConnection();
                string spamsorgu = "SELECT COUNT(*) FROM tblMesajlar WHERE mesaj_mail = @pmail AND mesaj_durum LIKE '%OKUNMAM%';";
                SqlCommand commandList2 = new SqlCommand(spamsorgu, SqlConnectionClass.connection);
                commandList2.Parameters.AddWithValue("@pmail", txtMail.Text);
                int sorgucevap = Convert.ToInt32(commandList2.ExecuteScalar());
                if (sorgucevap > 0)
                {
                    lblUyari.ForeColor = System.Drawing.Color.Red;
                    lblUyari.Text = "Önceden gönderilmiş mesajınız bulunuyor, lütfen incelenmesini bekleyiniz.";
                }
                else
                {
                    string sorgu = "INSERT INTO tblMesajlar(mesaj_gonderen,mesaj_mail,mesaj_baslik,mesaj_icerik,mesaj_tarih,mesaj_durum) VALUES(@gonderen,@mail,@baslik,@icerik,@tarih,@durum)";
                    SqlCommand commandList = new SqlCommand(sorgu, SqlConnectionClass.connection);
                    commandList.Parameters.AddWithValue("@gonderen", txtName.Text);
                    commandList.Parameters.AddWithValue("@mail", txtMail.Text);
                    commandList.Parameters.AddWithValue("@baslik", txtBaslik.Text);
                    commandList.Parameters.AddWithValue("@icerik", txtMesaj.Text);
                    commandList.Parameters.AddWithValue("@durum", "OKUNMAMIŞ");
                    commandList.Parameters.AddWithValue("@tarih", DateTime.Now);
                    commandList.ExecuteNonQuery();
                    lblUyari.ForeColor = System.Drawing.Color.Green;
                    lblUyari.Text = " *Mesajınız gönderilmiştir. Lütfen sürekli mesaj göndermeyiniz.";
                }
            }
        }
    }
   


}