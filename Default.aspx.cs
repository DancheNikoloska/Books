using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "select * from BOOKS order by date_received desc;";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();
            int i = 1;
            while (reader.Read())
            {
                if (i == 1)
                {
                    string d = Regex.Match(reader["description"].ToString(), @"^(\w+\b.*?){15}").ToString();
                    box1.InnerHtml = "<h1>" + reader["title"] + " - " + reader["author"] + "</h1>" +
                   "<img src=css/images/" + reader["image"] + " alt=image   />" +
                   "<div class=product_info>" +
                   "<p>" + d + " ..." + "</p>" +
                   " <h3>" + reader["price"] + " ден." + "</h3>" +
                   "<div class=detail_button><a href=BookDetails.aspx?id=" + reader["book_id"] + ">Повеќе</a></div></div>";
                }
                if (i == 2)
                {
                    string d = Regex.Match(reader["description"].ToString(), @"^(\w+\b.*?){13}").ToString();
                    box2.InnerHtml = "<h1>" + reader["title"] + " - " + reader["author"] + "</h1>" +
                   "<img src=css/images/" + reader["image"] + " alt=image   />" +
                   "<div class=product_info>" +
                   "<p>" + d + " ..." + "</p>" +
                   " <h3>" + reader["price"] + " ден." + "</h3>" +
                   "<div class=detail_button><a href=BookDetails.aspx?id=" + reader["book_id"] +">Повеќе</a></div></div>";
                }

                if (i == 3)
                {
                    string d = Regex.Match(reader["description"].ToString(), @"^(\w+\b.*?){11}").ToString();
                    box3.InnerHtml = "<h1>" + reader["title"] + " - " + reader["author"] + "</h1>" +
                   "<img src=css/images/" + reader["image"] + " alt=image   />" +
                   "<div class=product_info>" +
                   "<p>" + d + " ..." + "</p>" +
                   " <h3>" + reader["price"] + " ден." + "</h3>" +
                   "<div class=detail_button><a href=BookDetails.aspx?id=" + reader["book_id"] + ">Повеќе</a></div></div>";
                }

                if (i == 4)
                {
                    string d = Regex.Match(reader["description"].ToString(), @"^(\w+\b.*?){13}").ToString();
                    box4.InnerHtml = "<h1>" + reader["title"] + " - " + reader["author"] + "</h1>" +
                   "<img src=css/images/" + reader["image"] + " alt=image   />" +
                   "<div class=product_info>" +
                   "<p>" + d.ToString() + " ..." + "</p>" +
                   " <h3>" + reader["price"] + " ден." + "</h3>" +
                   "<div class=detail_button><a href=BookDetails.aspx?id=" + reader["book_id"] + ">Повеќе</a></div></div>";
                }
                i++;
               
            }

        }
        catch { }
        finally { konekcija.Close(); }

    }
}