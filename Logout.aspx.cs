﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["user_id"] = null;
        Response.Cookies["userInfo"].Expires= DateTime.Now.AddDays(-1);
        Response.Redirect("Default.aspx", true);
    }
}