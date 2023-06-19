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
    public partial class anasayfa : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                SayiYukle();
                DuyuruYukle();
            }
        }
        private void SayiYukle()
        {
            SqlCommand mesajyukle = new SqlCommand("SELECT COUNT(*) FROM tblMesajlar WHERE mesaj_durum LIKE '%OKUNMA%';", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int mesajsayi = Convert.ToInt32(mesajyukle.ExecuteScalar());
            lblMesajSayisi.Text = mesajsayi.ToString();

            SqlCommand bayiyukle = new SqlCommand("SELECT COUNT(*) FROM tblBayiler", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int bayisayi = Convert.ToInt32(bayiyukle.ExecuteScalar());
            lblBayiSayisi.Text = bayisayi.ToString();

            SqlCommand urunyukle = new SqlCommand("SELECT COUNT(*) FROM bimaksof_admin.tblUrunler", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int urunsayi = Convert.ToInt32(urunyukle.ExecuteScalar());
            lblUrunSayisi.Text = urunsayi.ToString();

            SqlCommand kullaniciyukle = new SqlCommand("SELECT COUNT(*) FROM tblKullanicilar", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int kullanicisayi = Convert.ToInt32(kullaniciyukle.ExecuteScalar());
            lblAdminSayisi.Text = kullanicisayi.ToString();

            SqlConnectionClass.CloseConnection();
        }

        private void DuyuruYukle()
        {
            SqlCommand duyuruyukle = new SqlCommand("SELECT * FROM bimaksof_admin.tblDuyurular", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlDataReader duyuruoku = duyuruyukle.ExecuteReader();
            DataDuyuru.DataSource = duyuruoku;
            DataDuyuru.DataBind();
            duyuruoku.Close();
            SqlConnectionClass.CloseConnection();
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Remove("KullaniciAdi");
            Session.Abandon();
            Response.Redirect("giris.aspx");
        }
    }
}