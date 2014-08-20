using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProfilePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        SqlConnection konekcija3 = new SqlConnection();
        konekcija3.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql3 = "select * from BOOKS";
        SqlCommand komanda3 = new SqlCommand(sql3, konekcija3);
        try
        {
            konekcija3.Open();
            SqlDataReader reader = komanda3.ExecuteReader();

            while (reader.Read())
            {
                items.InnerHtml += "<li>";
                items.InnerHtml += "<table class=\"admin_users\" style=\"height: 50px; width: 750px; border: 2px solid #212120;margin: auto;margin-bottom: 15px;background: #EBE2C3; border-radius: 5px;padding: 10px;\">";
                items.InnerHtml += "<tr>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center \">";

                items.InnerHtml += reader["title"];

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center \">";

                items.InnerHtml += reader["author"];

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center; \">";
                items.InnerHtml += reader["number_of_pages"];

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center \">";
                items.InnerHtml += reader["genre"];

                items.InnerHtml += "</td>";

                items.InnerHtml += "<td style=\"width: 80px;text-align: center \">";
                if ((Convert.ToInt32(reader["activated"]) == 0))
                    items.InnerHtml += ("<input type=\"button\"  id=\"" + reader["book_id"] + "\"  runat=\"server\" style=\"width: 90px;\"  value=\"Неактивиран\" disabled></input>");
                else
                    items.InnerHtml += ("<input type=\"button\"  id=\"" + reader["book_id"] + "\"  runat=\"server\" value=\"Активиран\" style=\"width: 90px;\"  disabled />");

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center \">";
                items.InnerHtml += "<a href=\"DeleteBook.aspx?id=" + reader["book_id"] + "\"><img src=\"css/images/delete.jpg\"  /></a>";

                items.InnerHtml += "</td>";
                items.InnerHtml += "</tr>";
                items.InnerHtml += "</table>";
                items.InnerHtml += "</li>";
            }

        }
        catch { }
        finally { konekcija3.Close(); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}