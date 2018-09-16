using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_stud : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter sda;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!this.IsPostBack)
        //{
        if (Session["admin"] == null)
        {
            Response.Redirect("../loginPage.aspx");
        }
        if (!IsPostBack)
        {
            ListView1.DataBind();
            txtname.Text = "";
            txtemail.Text = "";
            txtpw.Text = "";
            txtadd.Text = "";
            txtdept.Text = "";
            txtphone.Text = "";
            lblMessage.Text = "";
            txtsearch.Text = "";
            txtdelid.Text = "";
        }
        

    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Remove("admin");
        Response.Redirect("../loginPage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_home.aspx");
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {

        if (txtname.Text != "" && txtemail.Text != "" && txtpw.Text != "" && txtadd.Text != "" && txtdept.Text != "" && txtphone.Text != "")
        {
            cmd = new SqlCommand("insert into tbl_student(stud_name,stud_email,stud_pw,stud_add,stud_dept,stud_phone) values(@name,@email,@pass,@add,@dept,@phone)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@pass", txtpw.Text);
            cmd.Parameters.AddWithValue("@add", txtadd.Text);
            cmd.Parameters.AddWithValue("@dept", txtdept.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            lblMessage.Text = "Record Inserted..";
            
            ListView1.DataBind();
            txtname.Text = "";
            txtemail.Text = "";
            txtpw.Text = "";
            txtadd.Text = "";
            txtdept.Text = "";
            txtphone.Text = "";
        }
        else
        {
            lblMessage.Text = "Please Insert All Required Fields";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (txtdelid.Text != "")
        {
            cmd = new SqlCommand("delete tbl_student where stud_id=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", txtdelid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            lblMessage.Text = "Record Deleted...";
            ListView1.DataBind();
            txtdelid.Text = "";
        }
        else
        {
            lblMessage.Text = "Please Enter ID To Delete Record ...";
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select *from tbl_student where stud_id =@id", con);
        con.Open();
        cmd.Parameters.AddWithValue("@id",txtsearch.Text);
        DataTable dt = new DataTable();
//        DataSet ds = new DataSet();
        sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            txtname.Text = dt.Rows[0]["stud_name"].ToString();
            txtemail.Text = dt.Rows[0]["stud_email"].ToString();
            txtpw.Text = dt.Rows[0]["stud_pw"].ToString();
            txtadd.Text = dt.Rows[0]["stud_add"].ToString();
            txtdept.Text = dt.Rows[0]["stud_dept"].ToString();
            txtphone.Text = dt.Rows[0]["stud_phone"].ToString();
        }
        else
        {
            lblMessage.Text = "No Record Found";
        }
        con.Close();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (txtname.Text != "" && txtemail.Text != "" && txtpw.Text != "" && txtadd.Text != "" && txtdept.Text != "" && txtphone.Text != "")
        {
            cmd = new SqlCommand("update tbl_student set stud_name=@name,stud_email=@email,stud_pw=@pass,stud_add=@add,stud_dept=@dept,stud_phone=@phone where stud_name=@name", con);
            con.Open();

            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@pass", txtpw.Text);
            cmd.Parameters.AddWithValue("@add", txtadd.Text);
            cmd.Parameters.AddWithValue("@dept", txtdept.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Record Updated...";
            con.Close();
            ListView1.DataBind();
        }
        else
        {
            lblMessage.Text = "Please Select Record to Update";
        }
    }
}