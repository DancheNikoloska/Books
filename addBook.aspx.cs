using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addBook : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        try { 
        konekcija.Open();
         int s = Convert.ToInt32(strani.Text);
         string sql = "INSERT INTO BOOKS(title, author, description, genre, number_of_pages, price, date_received) VALUES('" + naslov.Text.ToString() + "','" + avtor.Text.ToString() + "','" + opis.Text.ToString() + "','" + zanr.Text.ToString() + "','" + strani.Text.ToString() + "','"+cena.Text.ToString()+"',GETDATE())"; ;
        SqlCommand komanda = new SqlCommand(sql, konekcija);
       komanda.ExecuteNonQuery();
            }
        finally {
        konekcija.Close();
        }
       
           
      
        
    }
    
}