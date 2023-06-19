using softv1.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace softv1.panel.dist
{
    public partial class mesajlar : System.Web.UI.Page
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
                    VeriYukle();
                    MesajSayisi();
                }
            }
            else
            {
                Response.Redirect("giris.aspx");
            }

        }

        private void VeriYukle()
        {
            SqlCommand mesajyukle = new SqlCommand("SELECT * FROM tblMesajlar", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlDataReader mesajoku = mesajyukle.ExecuteReader();
            DataMesajlar.DataSource = mesajoku;
            DataMesajlar.DataBind();
            mesajoku.Close();
        }

        private void MesajSayisi()
        {
            SqlCommand mesajsayikontrol = new SqlCommand("SELECT COUNT(*) FROM tblMesajlar", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int mesajsayi = Convert.ToInt32(mesajsayikontrol.ExecuteScalar());
            lblMesajSayi.Text = mesajsayi.ToString();
        }

        protected void DataMesajlar_ItemCommand(object source, DataListCommandEventArgs e)
        {
        }

        protected void DataMesajlar_DeleteCommand(object source, DataListCommandEventArgs e)
        {
        }

        protected void DataMesajlar_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "DELETE")
            {
                int id = Convert.ToInt32(((Label)e.Item.FindControl("lblMesajID")).Text);
                SqlCommand verisil = new SqlCommand("DELETE FROM tblMesajlar WHERE mesaj_ID = '" + id + "'", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                verisil.ExecuteNonQuery();
                SqlConnectionClass.CloseConnection();
                VeriYukle();
                MesajSayisi();
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