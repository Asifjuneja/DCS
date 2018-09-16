using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class forgotPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        //  txtname.Text = "";
        //txtemail.Text = "";
        //txtpw.Text = "";
        txtpw.Visible = false;

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT *FROM TBL_STUDENT WHERE STUD_EMAIL=@email AND STUD_NAME=@name ", conn);
        cmd.Parameters.AddWithValue("email", txtemail.Text);
        cmd.Parameters.AddWithValue("name", txtname.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtpw.Visible = true;
            btnReset.Text = "Reset Your Password";
            Response.Write("");
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
            conn1.Open();
            String updateQuery = "UPDATE TBL_STUDENT SET STUD_PW=@password WHERE STUD_EMAIL=@email";
            SqlCommand cmd1 = new SqlCommand(updateQuery, conn1);
            cmd1.Parameters.AddWithValue("@email", txtemail.Text);
            cmd1.Parameters.AddWithValue("@password", txtpw.Text);
            cmd1.ExecuteNonQuery();

            Response.Write("Password Changed SuccessFully");
            conn1.Close();

        }
        else
        {
            txtpw.Visible = false;
            l1.Visible = true;
            l1.Text = "User Name And Email Doesnt Matches";
        }
        conn.Close();
    }
}