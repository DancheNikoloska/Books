using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        if (Request.QueryString["zanr"] != "" && Request.QueryString["zanr"] != null)
        {
           
            string zanr = Request.QueryString["zanr"];
            BooksData.SelectCommand = "SELECT * FROM BOOKS WHERE genre=N'" + zanr + "' and activated='1'";
            //proba.Text = zanr;
        }
        else
        {
            BooksData.SelectCommand = "SELECT * FROM BOOKS WHERE activated='1'";
        }
    }
}