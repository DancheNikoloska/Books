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
            //if user has remember me
            if (Response.Cookies["userInfo"].HasKeys)
            {

                login.Visible = false;
                logged.InnerHtml = ("<span>                      Најавени сте како: " + Response.Cookies["userInfo"]["name"].ToString() + " " + Response.Cookies["userInfo"]["surname"].ToString() + "<a href=\"Logout.aspx\" > (Одјава)</a></span>");
                logged.Visible = true;


            }
            else
            {

                login.Visible = true;
                logged.Visible = false;

            }
            
            login.Visible = true;
            logged.Visible = false;
            
        }
       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //connection to database
        bool valid = false;
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

                    valid = true;
                    Session["username"] = reader["name"] + " " + reader["surname"];
                    Response.Redirect("Default.aspx", false);

                    //check if remember me is enambled
                     if (remember.Checked) {
                        HttpCookie cookie = new HttpCookie("userInfo");
                        cookie["username"] = reader["name"].ToString();
                        cookie["surname"] = reader["surname"].ToString();
                        cookie["id"] = reader["id"].ToString();
                        cookie["email"] = reader["email"].ToString();
                        cookie.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie);
                        
                     }
                    
                    break;
                }
            }
          
        }
        catch { }
        finally { konekcija.Close(); }
        if (!valid) {
            Response.Write("<p style=\"margin-left: 37%;background: white;width: 260px;height: 20px; border-left: 2px solid #7A1900; border-bottom: 2px solid #7A1900; border-right: 2px solid #7A1900;font-weight: bold; color:#B94629;\">Невалидна емаил адреса или лозинка.</p>");
        }

        

       
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        bool valid = false;

        //get inputs
        string name = TextBox1.Text.ToString();
        string surname = TextBox2.Text.ToString();
        string email = TextBox3.Text.ToString();
        string address=null;
        if(TextBox4.Text!=null)
         address = TextBox4.Text.ToString();
        string password = TextBox6.Text.ToString();
        
         
        //database connection
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "INSERT INTO USERS VALUES('"+name+"','"+surname+"','"+email+"','"+address+"','"+password+"',"+0+")";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
            valid = true;
            

        }
        catch { }
        finally { konekcija.Close(); }
        if (valid) { 
        Session["username"] = name + " " + surname;
        Response.Redirect("Default.aspx", false);
        }
    }
}
