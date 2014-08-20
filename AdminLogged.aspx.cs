using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogged : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        if (Session["admin_logged"] == null) {
            Response.Redirect("AdminPage.aspx", true);
        }*/
        if (!Page.IsPostBack) { 
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "SELECT * FROM USERS" ;
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = komanda;
        DataSet ds = new DataSet();

        try
        {
            konekcija.Open();
            adapter.Fill(ds, "USERS");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch { }
        finally { konekcija.Close(); }
        }

         //Korisnici
        


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
                    items.InnerHtml += ("<a href=\"DeleteBook.aspx\"><input type=\"button\"  id=\"" + reader["book_id"] + "\"  runat=\"server\" style=\"width: 90px;\"  value=\"Активирај\" ></input></a>");
                else
                    items.InnerHtml += ("<input type=\"button\"  id=\"" + reader["book_id"] + "\"  runat=\"server\" value=\"Активиран\" style=\"width: 90px;\"  disabled />");

                items.InnerHtml += "</td>";
                items.InnerHtml += "<td style=\"width: 80px;text-align: center \">";
                items.InnerHtml += "<a href=\"DeleteBook.aspx?id="+reader["book_id"]+"\"><img src=\"css/images/delete.jpg\"  /></a>";

                items.InnerHtml += "</td>";
                items.InnerHtml += "</tr>";
                items.InnerHtml += "</table>";
                items.InnerHtml += "</li>";
            }

        }
        catch { }
        finally { konekcija3.Close(); }


        //charts

       



    }

    protected void Button_Click(object sender, EventArgs e)
    {
        



    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.SelectedIndex = -1;
        //refill
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "SELECT * FROM USERS";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = komanda;
        DataSet ds = new DataSet();

        try
        {
            konekcija.Open();
            adapter.Fill(ds, "USERS");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch { }
        finally { konekcija.Close(); }
        
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "SELECT * FROM USERS";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = komanda;
        DataSet ds = new DataSet();

        try
        {
            konekcija.Open();
            adapter.Fill(ds, "USERS");
           
        }
        catch { }
        finally { konekcija.Close(); }
        DataView dv = ds.Tables[0].DefaultView;
        if (ViewState["nasoka"] == null)
            ViewState["nasoka"] = "ASC";
        if ((string)ViewState["nasoka"] == "DESC")
        {
            dv.Sort = e.SortExpression + " DESC";
            ViewState["nasoka"] = "ASC";
        }
        else {
            dv.Sort = e.SortExpression + " " + " ASC";
            ViewState["nasoka"] = "DESC";
        }

        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

       
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "SELECT * FROM USERS";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = komanda;
        DataSet ds = new DataSet();

        try
        {
            konekcija.Open();
            adapter.Fill(ds, "USERS");

        }
        catch { }
        finally { konekcija.Close(); }
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = ds;
        GridView1.DataBind();

        
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "SELECT * FROM USERS";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = komanda;
        DataSet ds = new DataSet();

        try
        {
            konekcija.Open();
            adapter.Fill(ds, "USERS");

        }
        catch { }
        finally { konekcija.Close(); }
        GridView1.EditIndex = -1;
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        TextBox tb = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]; 
        TextBox tb2 = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox tb3 = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox tb4 = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox tb5 = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];

        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "UPDATE USERS SET name=@name, surname=@surname, email=@email, phone_number=@phone_number, password=@password where user_id=" + GridView1.DataKeys[e.RowIndex].Value;
        SqlCommand komanda = new SqlCommand();
        
        komanda.Parameters.Add("@name", SqlDbType.NVarChar).Value= tb.Text;
        komanda.Parameters.Add("@surname", SqlDbType.NVarChar).Value = tb2.Text;
        komanda.Parameters.Add("@email", SqlDbType.NVarChar).Value= tb3.Text;
        komanda.Parameters.Add("@phone_number", SqlDbType.NVarChar).Value= tb4.Text;
        komanda.Parameters.AddWithValue("@password", SqlDbType.NVarChar).Value=tb5.Text;

        komanda.Connection = konekcija;
        komanda.CommandText = sql;
        
       
        
        
        
        
        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
                
                
            

        }
        catch { }
        finally { konekcija.Close();
                   GridView1.EditIndex = -1;
        }

        SqlConnection konekcija1 = new SqlConnection();
        konekcija1.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql2 = "SELECT * FROM USERS";
        SqlCommand komanda2 = new SqlCommand(sql2, konekcija1);
        SqlDataAdapter adapter2 = new SqlDataAdapter();
        adapter2.SelectCommand = komanda2;
        DataSet ds2 = new DataSet();

        try
        {
            konekcija.Open();
            adapter2.Fill(ds2, "USERS");

        }
        catch { }
        finally { konekcija.Close(); }
        GridView1.EditIndex = -1;
        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql = "DELETE FROM USERS WHERE user_id=" + GridView1.DataKeys[e.RowIndex].Value;
        SqlCommand komanda = new SqlCommand(sql, konekcija);


        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = komanda;
        DataSet ds = new DataSet();
        

        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();




        }
        catch { }
        finally
        {
            konekcija.Close();
            GridView1.EditIndex = -1;
        }
        SqlConnection konekcija1 = new SqlConnection();
        konekcija1.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        string sql2 = "SELECT * FROM USERS";
        SqlCommand komanda2 = new SqlCommand(sql2, konekcija1);
        SqlDataAdapter adapter2 = new SqlDataAdapter();
        adapter2.SelectCommand = komanda2;
        DataSet ds2 = new DataSet();

        try
        {
            konekcija.Open();
            adapter2.Fill(ds2, "USERS");

        }
        catch { }
        finally { konekcija.Close(); }
        GridView1.EditIndex = -1;
        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
}