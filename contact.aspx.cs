using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("loginPage.aspx");
        }
        btnprofile.Text = Session["user"].ToString();
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Remove("user");

        Response.Redirect("loginPage.aspx");
    }
    protected void btnprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }
}