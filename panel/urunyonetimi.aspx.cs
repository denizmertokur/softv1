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
    public partial class urun : System.Web.UI.Page
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
                    UrunYukle();
                    UrunSayisi();
                }
            }
            else
            {
                Response.Redirect("giris.aspx");
            }
        }
        private void UrunYukle()
        {
            SqlCommand urunyukle = new SqlCommand("SELECT * FROM bimaksof_admin.tblUrunler", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlDataReader urunoku = urunyukle.ExecuteReader();
            DataUrun.DataSource = urunoku;
            DataUrun.DataBind();
            urunoku.Close();
        }

        private void UrunSayisi()
        {
            SqlCommand urunyukle = new SqlCommand("SELECT COUNT(*) FROM bimaksof_admin.tblUrunler", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int urunsayi = Convert.ToInt32(urunyukle.ExecuteScalar());
            lblSayi.Text = urunsayi.ToString();
        }

        protected void btnUrunEkle_Click(object sender, EventArgs e)
        {
            Response.Redirect("urunolustur.aspx");
        }

        protected void DataUrun_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "DELETE")
            {
                int id = Convert.ToInt32(((Label)e.Item.FindControl("lblUrunID")).Text);
                SqlCommand verisil = new SqlCommand("DELETE FROM bimaksof_admin.tblUrunler WHERE urun_ID = '" + id + "'", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                verisil.ExecuteNonQuery();
                SqlConnectionClass.CloseConnection();
                UrunYukle();
                UrunSayisi();
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
