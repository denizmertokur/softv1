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
    public partial class bayilistesi : System.Web.UI.Page
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
                    BayiSayisi();
                }
            }
            else
            {
                Response.Redirect("giris.aspx");
            }

        }

        private void VeriYukle()
        {
            SqlCommand bayiyukle = new SqlCommand("SELECT * FROM tblBayiler", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlDataReader bayioku = bayiyukle.ExecuteReader();
            DataBayiler.DataSource = bayioku;
            DataBayiler.DataBind();
            bayioku.Close();
        }

        private void BayiSayisi()
        {
            SqlCommand bayisayikontrol = new SqlCommand("SELECT COUNT(*) FROM tblBayiler", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            int bayisayi = Convert.ToInt32(bayisayikontrol.ExecuteScalar());
            lblSayi.Text = bayisayi.ToString();
        }

        protected void DataBayiler_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "DELETE")
            {
                int id = Convert.ToInt32(((Label)e.Item.FindControl("lblBayiID")).Text);
                SqlCommand verisil = new SqlCommand("DELETE FROM tblBayiler WHERE bayi_ID = '" + id + "'", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                verisil.ExecuteNonQuery();
                SqlConnectionClass.CloseConnection();
                VeriYukle();
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