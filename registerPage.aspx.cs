using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class registerPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtname.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
            txtCPassword.Text = "";
        }

        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
            conn.Open();
            String chkuser = "SELECT *FROM TBL_STUDENT WHERE STUD_NAME=' "+txtname.Text+" ' ";
            SqlCommand cmd = new SqlCommand(chkuser, conn);
            
            conn.Close();
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string name = txtname.Text;
        string email = txtemail.Text;
        string password = txtpassword.Text;
        if (txtemail.Text != "" || txtname.Text != "" || txtpassword.Text != "" || txtCPassword.Text != "")
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
            try
            {
                conn.Open();
                String insertQuery = "INSERT INTO TBL_STUDENT(STUD_NAME,STUD_EMAIL,STUD_PW) VALUES (@name,@email,@password)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                cmd.ExecuteNonQuery();
                l1.Visible = true;
                l1.Text = "Your Account Created Successfully";
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
        else
        {
            Response.Write("Please Fill All Information...");
        }
    }
}