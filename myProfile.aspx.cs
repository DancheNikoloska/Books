using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "select * from BOOKS where user_id=1";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();
            while (reader.Read())
            {
                mybooks.InnerHtml +="<h1>"+ reader["title"]+"</h1>";
            }
        }
        catch { }
        finally { konekcija.Close(); }
    }
}