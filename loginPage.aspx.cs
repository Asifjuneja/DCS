using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class loginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        
        String mail = txtname.Text.Trim();
        String password = txtpassword.Text.Trim();
        conn.Open();
        
        String str="SELECT *FROM TBL_STUDENT";
        SqlCommand cmd1 = new SqlCommand(str);
        SqlDataAdapter sda1 = new SqlDataAdapter(cmd1.CommandText,conn);
        DataTable dt1 = new DataTable();
        sda1.Fill(dt1);
        int RowCount = dt1.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            mail=dt1.Rows[i]["stud_name"].ToString();
            password=dt1.Rows[i]["stud_pw"].ToString();
            if (mail == txtname.Text && password == txtpassword.Text)
            {
                Session["user"] = mail;
                Response.Redirect("home.aspx");
            }
        }

        conn.Close();
    }
}



        //SqlCommand cmd = new SqlCommand("SELECT *FROM TBL_STUDENT WHERE STUD_EMAIL=@email AND STUD_PW=@password ",conn);
        //cmd.Parameters.AddWithValue("email",txtemail.Text);
        //cmd.Parameters.AddWithValue("password", txtpassword.Text);
        //SqlDataReader dr = cmd.ExecuteReader();
        //if (dr.Read())
        //{
                      
        //    Response.Write("Login SuccessFully");
        //    Response.Redirect("~/home.aspx");
        // //   Session["user"] = txtemail.Text;  
        //}
        //else
        //{
        //    l1.Visible = true;
        //    l1.Text = "Please Enter Valid Email Or Password !";
        //}