using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ActivateBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["book_id"] == null || Session["admin_logged"] == null) {
            Response.Redirect("AdminLogged.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
            try
            {
                FileUpload1.SaveAs(HostingEnvironment.ApplicationPhysicalPath + "css\\images\\" +
                     FileUpload1.FileName);
                FileUpload1.SaveAs(HostingEnvironment.ApplicationPhysicalPath + "css\\images\\G_" +
                     FileUpload1.FileName);
                
            }
            catch (Exception ex)
            {
                Label1.Text = "Грешка: " + ex.Message.ToString();
            }
        else
        {
            Label1.Text = "Не избравте фајл.";
        }

        //update to database

        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "UPDATE BOOKS SET activated=1,image='"+FileUpload1.FileName+"' where book_id="+Request.QueryString["book_id"];
        SqlCommand komanda = new SqlCommand(sql, konekcija);
       
        try
        {
            konekcija.Open();
            
            if(komanda.ExecuteNonQuery()>0)
             Response.Write(sql);
            Response.Redirect("AdminLogged.aspx",false);
            Response.Write(sql);

        }
        catch { }
        finally { konekcija.Close(); }

    }
}