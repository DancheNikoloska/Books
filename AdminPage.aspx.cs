using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        bool valid = false;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "SELECT * FROM USERS WHERE email='" + email.Text.ToString() + "' and password='" + password.Text.ToString() + "' and user_id in (Select * from ADMINS)";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {

            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();

            while (reader.Read())
            {

                if (reader["email"].ToString() != null)
                {

                    valid = true;
                    Session["admin_logged"] = true;
                    Response.Redirect("AdminLogged.aspx", false);
          
                    break;


                }
            }

        }
        catch { }
        finally { konekcija.Close(); }
        if (!valid)
        {
            Response.Write("<p style=\"margin-left: 41%;background: white;width: 260px;height: 20px; border-left: 2px solid #7A1900; border-bottom: 2px solid #7A1900; border-right: 2px solid #7A1900;font-weight: bold; color:#B94629;\">Невалидна емаил адреса или лозинка.</p>");
        }
    }
}