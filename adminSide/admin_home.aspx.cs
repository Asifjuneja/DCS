﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminSide_admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("../loginPage.aspx");
        }
        btnprofile.Text = Session["admin"].ToString();
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Remove("admin");
        Response.Redirect("../loginPage.aspx");
    }
}