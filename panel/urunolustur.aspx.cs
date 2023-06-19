using softv1.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace softv1.panel
{
    public partial class urunolustur : System.Web.UI.Page
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
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("INSERT INTO bimaksof_admin.tblUrunler(urun_adi,urun_aciklama,urun_tür,urun_kategori,urun_resim) VALUES(@urunadi,@urunaciklama,@uruntur,@urunkategori,@url)", SqlConnectionClass.connection);
            commandList.Parameters.AddWithValue("@urunadi", txtAd.Text);
            commandList.Parameters.AddWithValue("@urunaciklama", txtAciklama.Text);
            commandList.Parameters.AddWithValue("@uruntur", txtTur.Text);
            commandList.Parameters.AddWithValue("url", Label1.Text);
            commandList.Parameters.AddWithValue("@urunkategori", Convert.ToInt32(txtKategori.Text));
            SqlConnectionClass.CheckConnection();
            commandList.ExecuteNonQuery();
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Remove("KullaniciAdi");
            Session.Abandon();
            Response.Redirect("giris.aspx");
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileResim.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(fileResim.FileName);
                    string filePath = Server.MapPath("~/img/" + fileName);
                    fileResim.SaveAs(filePath);

                    string fileUrl = Request.Url.GetLeftPart(UriPartial.Authority) + "/imgs/" + fileName;
                    Label1.Text = "img/" + fileName;
                }
                catch (Exception ex)
                {
                    Label1.Text = "HATA: " + ex.Message;
                }
            }
            else
            {
                Label1.Text = "Resim yüklemediniz.";


            }
        }
    }
}