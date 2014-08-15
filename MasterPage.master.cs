using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            
        //if user is logged
        if (Session["username"] != null)
        {
            
            login.Visible = false;
            logged.InnerHtml = ("<span>                      Најавени сте како: " + Session["username"].ToString() + "<a href=\"Logout.aspx\" > (Одјава)</a></span>");
            logged.Visible = true;
            

        }
        else {
            
            login.Visible = true;
            logged.Visible = false;
            
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //connection to database
        
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "SELECT * FROM USERS WHERE email='"+ email.Text.ToString()+"' and password='"+ password.Text.ToString() + "'";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            
            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();
            
            while (reader.Read())
            {
                
                if(reader["email"].ToString()!=null){
                    
                   
                    Session["username"] = reader["name"] + " " + reader["surname"];
                    Response.Redirect("Default.aspx", false);
                    
                    break;
                }
            }
          
        }
        catch { }
        finally { konekcija.Close(); }
        
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //database connection

    }
}
