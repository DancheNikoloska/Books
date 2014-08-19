using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(Request.QueryString["id"] == null)
           Response.Redirect("AdminLogged.aspx", true);
       else { 
        int id = Convert.ToInt32(Request.QueryString["id"]);

        // database update

        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "DELETE FROM BOOKS WHERE book_id="+id;
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
        }
        catch { }
        finally { konekcija.Close();
        Response.Redirect("AdminLogged.aspx", true);
        }
        
       }
    }
}