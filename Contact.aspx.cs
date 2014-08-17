using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    private string user;
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!Page.IsPostBack)
        user = Request.QueryString["user"].ToString(); ;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string user_email = "";
        
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "select * from USERS where user_id='"+user+"'";
        Response.Write(sql);
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader reader = komanda.ExecuteReader();

            while (reader.Read())
            {
                user_email = reader["email"].ToString();
                break;
            }


        }
        catch { }
        finally { konekcija.Close(); }

        Response.Write(sql);

        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.Credentials = new System.Net.NetworkCredential("gg.goran93@gmail.com", "emailPassword");
        smtp.UseDefaultCredentials = false;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.EnableSsl = true;

        MailMessage mail = new MailMessage();


        //from to
        
        mail.From = new MailAddress(TextBox2.Text.ToString());
        mail.To.Add(user_email);
        mail.Body = input_4.Text.ToString();
        smtp.Send(mail);
        
    }
   
}