﻿using System;
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
        string sql = "select * from BOOKS, COPIES WHERE BOOKS.book_id=COPIES.book_id and copy_id="+id;
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();
            while (reader.Read())
            {
                bTitle.InnerHtml = "<img src=\"css/images/G_"+reader["image"]+"\" />"
                +"<h1>"+reader["title"]+"</h1>"+
                "<h3>"+reader["author"]+"</h3>"+
                "<h4>Детали:</h4>"+               
                "<p>Жанр: <span>"+reader["genre"]+"</span></p>"+
                "<p>Број на страни: <span> "+reader["number_of_pages"]+"</span></p>"+
                "<p>Цена: <span> "+reader["price"]+"ден</span></p>"+
                "<p>Поени: <span> 3</span></p>"+
              " <button><a href=#>Избери</a></button>";

                bDesc.InnerHtml = " <h5>&nbsp&nbsp&nbsp&nbsp&nbsp"+reader["description"]+" </h5>";
            }

        }
        catch { }
        finally { konekcija.Close(); }
    }
}