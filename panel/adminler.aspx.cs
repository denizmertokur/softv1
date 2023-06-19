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
    public partial class adminler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] != null)
            {
                string kullaniciAdi = Session["KullaniciAdi"].ToString();

                if (!IsPostBack) { 
                    AdminYukle();
                }

            }
            else
            {
                Response.Redirect("giris.aspx");
            }
        }

        private void AdminYukle()
        {
            SqlCommand datasorgu = new SqlCommand("SELECT * FROM tblKullanicilar", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlDataReader dataoku = datasorgu.ExecuteReader();
            DataAdmins.DataSource = dataoku;
            DataAdmins.DataBind();
            dataoku.Close();
        }

        protected void DataAdmins_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "DELETE")
            {
                int id = Convert.ToInt32(((Label)e.Item.FindControl("lblID")).Text);
                SqlCommand verisil = new SqlCommand("DELETE FROM tblKullanicilar WHERE kullanici_ID = '" + id + "'", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                verisil.ExecuteNonQuery();
                SqlConnectionClass.CloseConnection();
                AdminYukle();
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