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
    public partial class yetkililer : System.Web.UI.Page
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
            SqlCommand commandList = new SqlCommand("INSERT INTO tblKullanicilar(kullanici_Adi,kullanici_Parola,kullanici_yetki,kullanici_Pozisyon) VALUES(@kadi,@kparola,@kyetki,@kpozisyon)", SqlConnectionClass.connection);
            commandList.Parameters.AddWithValue("@kadi", txtAd.Text);
            commandList.Parameters.AddWithValue("@kparola", txtParola.Text);
            commandList.Parameters.AddWithValue("@kpozisyon", txtPozisyon.Text);
            commandList.Parameters.AddWithValue("@kyetki", Convert.ToInt32(txtSeviye.Text));
            SqlConnectionClass.CheckConnection();
            commandList.ExecuteNonQuery();
            Response.Redirect("adminler.aspx");
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Remove("KullaniciAdi");
            Session.Abandon();
            Response.Redirect("giris.aspx");
        }
    }
}