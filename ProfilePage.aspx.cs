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
        message.Visible = false;
        //check if user_id is ok
        if (Session["user_id"] == null)
        {
            Response.Redirect("Default.aspx", true);
        }
        else {

            int id = Convert.ToInt32(Session["user_id"]);
        
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        //fill profile info
        SqlConnection konekcija4 = new SqlConnection();
        konekcija4.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql4 = "select * from USERS where user_id="+id;
        SqlCommand komanda4 = new SqlCommand(sql4, konekcija4);
        try
        {
            konekcija4.Open();
            SqlDataReader reader4 = komanda4.ExecuteReader();

            while (reader4.Read())
            {
                TextBox1.Text = reader4["name"].ToString();
                TextBox2.Text = reader4["surname"].ToString();
                TextBox3.Text = reader4["email"].ToString();
                TextBox4.Text = reader4["phone_number"].ToString();
                break;

            }

        }
        catch { }
        finally { konekcija4.Close(); }
        //fill books
        SqlConnection konekcija3 = new SqlConnection();
        konekcija3.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql3 = "select * from BOOKS where user_id=" + id;
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
                items.InnerHtml += "<td style=\"width: 80px;text-align: center;color:black \">";

                items.InnerHtml += reader["title"];

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center;color:black \">";

                items.InnerHtml += reader["author"];

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center;color:black \">";
                items.InnerHtml += reader["number_of_pages"];

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center;color:black \">";
                items.InnerHtml += reader["genre"];

                items.InnerHtml += "</td>";

                items.InnerHtml += "<td style=\"width: 80px;text-align: center;color:black \">";
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (MultiView1.ActiveViewIndex!=0)
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text.ToString();
        string surname = TextBox2.Text.ToString();
        string email = TextBox3.Text.ToString();
        string phone = TextBox4.Text.ToString();
        string password = TextBox5.Text.ToString();

        //insert into database

        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        try
        {
            konekcija.Open();

            string sql = "INSERT INTO USERS( name, surname, email, phone_number, password) VALUES('" + name + "','" + surname + "','" + email + "','" + phone + "','" + password + "')"; 
            SqlCommand komanda = new SqlCommand(sql, konekcija);

            int rows = komanda.ExecuteNonQuery();
            if (rows == 0)
            {
                message.InnerText = "Неуспешна промена на податоците. Обидете се повторно.";
                message.Visible = true;
            }
            else
            {
                message.Visible = true;
            }
        }
        finally
        {
            konekcija.Close();
        }
    }
}