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
        int c;
        int s;
        if (int.TryParse(cena.Text, out c) && int.TryParse(strani.Text, out s))
        {
                SqlConnection konekcija = new SqlConnection();
                konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
                try
                {
                    konekcija.Open();

                    string sql = "INSERT INTO BOOKS(title, author, description, genre, number_of_pages, price, date_received,user_id) VALUES('" + naslov.Text.ToString() + "','" + avtor.Text.ToString() + "','" + opis.Text.ToString() + "','" + zanr.Text.ToString() + "','" + strani.Text.ToString() + "','" + cena.Text.ToString() + "',GETDATE(),"+Session["user_id"]+")"; 
                    SqlCommand komanda = new SqlCommand(sql, konekcija);
                    
                    int rows = komanda.ExecuteNonQuery();
                    if (rows == 0)
                    {
                        success.Text = "Неуспешно додавање!";
                    }
                    else
                    { success.Text = "Успешно додавање!"; }
                }
                finally
                {
                    konekcija.Close();
                }

            }
        
             else
            {
                success.Text = "Невалидни податоци!";
            }
        
       
      
        
    }
    
}