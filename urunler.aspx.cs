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
    public partial class items : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand category1 = new SqlCommand("SELECT * FROM bimaksof_admin.tblUrunler WHERE urun_kategori = 1", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader category1read = category1.ExecuteReader();
                DataTab1.DataSource = category1read;
                DataTab1.DataBind();
                category1read.Close();

                SqlCommand category2 = new SqlCommand("SELECT * FROM bimaksof_admin.tblUrunler WHERE urun_kategori = 2", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader category2read = category2.ExecuteReader();
                DataTab2.DataSource = category2read;
                DataTab2.DataBind(); 
                category2read.Close();

                SqlCommand category3 = new SqlCommand("SELECT * FROM bimaksof_admin.tblUrunler WHERE urun_kategori = 3", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader category3read = category3.ExecuteReader();
                DataTab3.DataSource = category3read;
                DataTab3.DataBind();
                category3read.Close();
            }
        }
    }
}