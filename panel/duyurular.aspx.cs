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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["KullaniciAdi"] != null)
            {
                string kullaniciAdi = Session["KullaniciAdi"].ToString();
                lblUsername.Text = kullaniciAdi;
                lblUsername2.Text = kullaniciAdi;
                if (!IsPostBack)
                {
                    DuyuruYukle();
                    DuyuruSayi();
                }
            }
            else
            {
                Response.Redirect("giris.aspx");
            }
        }

        protected void btnDuyuruEkle_Click(object sender, EventArgs e)
        {
            string yetkili = Session["KullaniciAdi"].ToString();
            SqlCommand commandList = new SqlCommand("INSERT INTO bimaksof_admin.tblDuyurular(duyuru_yetkili,duyuru_metni,duyuru_tarih,gosterim) VALUES(@yetkili,@metin,@tarih,@gosterim)", SqlConnectionClass.connection);
            commandList.Parameters.AddWithValue("@yetkili", yetkili);
            commandList.Parameters.AddWithValue("@metin", txtDuyuru.Text);
            commandList.Parameters.AddWithValue("@tarih", DateTime.Now);
            commandList.Parameters.AddWithValue("@gosterim", "AKTİF");
            SqlConnectionClass.CheckConnection();
            commandList.ExecuteNonQuery();
            DuyuruYukle();
            DuyuruSayi();
        }

        private void DuyuruYukle()
        {
            SqlCommand duyuruyukle = new SqlCommand("SELECT * FROM bimaksof_admin.tblDuyurular", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlDataReader duyuruoku = duyuruyukle.ExecuteReader();
            DataDuyuru.DataSource = duyuruoku;
            DataDuyuru.DataBind();
            duyuruoku.Close();
        }

        private void DuyuruSayi()
        {
            SqlCommand duyurusayiyukle = new SqlCommand("SELECT COUNT(*) FROM bimaksof_admin.tblDuyurular", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int duyurusayi = Convert.ToInt32(duyurusayiyukle.ExecuteScalar());
            lblSayi.Text = duyurusayi.ToString();
        }

        protected void DataDuyuru_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "DELETE")
            {
                int id = Convert.ToInt32(((Label)e.Item.FindControl("lblDuyuruID")).Text);
                SqlCommand verisil = new SqlCommand("DELETE FROM bimaksof_admin.tblDuyurular WHERE duyuru_ID = '" + id + "'", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                verisil.ExecuteNonQuery();
                SqlConnectionClass.CloseConnection();
                DuyuruYukle();
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