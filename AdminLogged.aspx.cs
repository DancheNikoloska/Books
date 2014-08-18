using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogged : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_logged"] == null) {
            Response.Redirect("AdminPage.aspx", true);
        }
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
        string sql = "UPDATE USERS SET name='" + tb.Text + "', surname='" + tb2.Text + "', email='" + tb3.Text + "', phone_number='" + tb4.Text + "', password='" + tb5.Text + "' where user_id=" + GridView1.DataKeys[e.RowIndex].Value;
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        

        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = komanda;
        DataSet ds = new DataSet();
        Response.Write(komanda.CommandText);
        
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
}