using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
     protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString= ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "Select * from USERS";
        SqlCommand komanda = new SqlCommand(sql, konekcija);

        try
        {
            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();
            while (reader.Read())
            {
               
            }
            reader.Close();
        }
        catch
        { }
        finally
        {
            konekcija.Close();
        }
    }
}