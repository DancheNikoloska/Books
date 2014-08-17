using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id=Request.QueryString["id"];
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "select * from BOOKS WHERE book_id="+id;
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();
            while (reader.Read())
            {
                bTitle.InnerHtml = "<img src=\"css/images/G_"+reader["image"]+"\" />"
                +"<h1>"+reader["title"]+"</h1>"+
                "<h3 style=\"margin-left: 161px;\">"+reader["author"]+"</h3>"+
                "<h4 style=\"margin-left: 161px;\">Детали:</h4>" +
                "<p style=\"margin-left: 161px;\">Жанр: <span>" + reader["genre"] + "</span></p>" +
                "<p style=\"margin-left: 161px;\">Број на страни: <span> " + reader["number_of_pages"] + "</span></p>" +
                "<p style=\"margin-left: 161px;\">Цена: <span> " + reader["price"] + "ден</span></p>" +
                "<p style=\"margin-left: 161px;\">Поени: <span> 3</span></p>" +
              " <button style=\"width:300px;\"><a href=\"Contact.aspx?id="+reader["book_id"]+"\">Контактирајте го огласувачот</a></button>";

                bDesc.InnerHtml = " <h5>&nbsp&nbsp&nbsp&nbsp&nbsp"+reader["description"]+" </h5>";
                
            }

        }
        catch { }
        finally { konekcija.Close(); }
    }
}