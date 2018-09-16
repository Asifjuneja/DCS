using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class a1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);

        String name = txtname.Text.Trim();
        String password = txtpassword.Text.Trim();
        conn.Open();

        String str = "SELECT *FROM ADMIN";
        SqlCommand cmd1 = new SqlCommand(str);
        SqlDataAdapter sda1 = new SqlDataAdapter(cmd1.CommandText, conn);
        DataTable dt1 = new DataTable();
        sda1.Fill(dt1);
        int RowCount = dt1.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            name = dt1.Rows[i]["admin_name"].ToString();
            password = dt1.Rows[i]["admin_pw"].ToString();
            if (name == txtname.Text && password == txtpassword.Text)
            {
                Session["admin"] = name;
                Response.Redirect("admin_home.aspx");
            }
        }

        conn.Close();
    }

}
