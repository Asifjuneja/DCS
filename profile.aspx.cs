using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("loginPage.aspx");
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        con.Open();

        String str = "select * from tbl_student where stud_name='" + Session["user"] + "'";

        SqlCommand com = new SqlCommand(str, con);

        SqlDataAdapter da = new SqlDataAdapter(com);

        DataSet ds = new DataSet();

        da.Fill(ds);

        txtid.Text = ds.Tables[0].Rows[0]["stud_id"].ToString();

        txtname.Text = ds.Tables[0].Rows[0]["stud_name"].ToString();

        txtmail.Text = ds.Tables[0].Rows[0]["stud_email"].ToString();

       // Image1.ImageUrl = ds.Tables[0].Rows[0]["stud_img"].ToString();

        txtadd.Text = ds.Tables[0].Rows[0]["stud_add"].ToString();

        txtdept.Text = ds.Tables[0].Rows[0]["stud_dept"].ToString();

        txtphone.Text = ds.Tables[0].Rows[0]["stud_phone"].ToString();

        con.Close();
        txtid.Enabled = false;
        txtname.Enabled = false;
        txtmail.Enabled = false;
        txtadd.Enabled = false;
        txtdept.Enabled = false;
        txtphone.Enabled = false;
        dddept.Visible = false;
        btnUpdate.Visible = false;
        btnReset.Visible = false;
    }
    protected void btnmodify_Click(object sender, EventArgs e)
    {
        txtname.Enabled = true;
        txtmail.Enabled = true;
        txtadd.Enabled = true;
        txtdept.Visible = false;
        dddept.Visible = true;
        txtphone.Enabled = true;
        btnUpdate.Visible = true;
        btnmodify.Enabled = false;
        btnReset.Visible = true;
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        conn.Open();
        
        String updateQuery = "UPDATE TBL_STUDENT SET STUD_NAME=@name, STUD_EMAIL=@email, STUD_ADD=@add, STUD_DEPT=@dept, STUD_PHONE=@phone WHERE STUD_EMAIL='" + Session["user"] + "'";
        SqlCommand cmd = new SqlCommand(updateQuery, conn);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@email", txtmail.Text);
        cmd.Parameters.AddWithValue("@add", txtadd.Text);
        cmd.Parameters.AddWithValue("@dept", dddept.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.ExecuteNonQuery();
        lblerr.Text = "Data Modified";
        conn.Close();
        txtname.Enabled = false;
        txtmail.Enabled = false;
        txtadd.Enabled = false;
        txtdept.Enabled = false;
        txtphone.Enabled = false;
        txtdept.Visible = true;
        dddept.Visible = false;
        btnUpdate.Visible = false;
        btnReset.Visible = false;
        btnmodify.Enabled = true;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtname.Enabled = false;
        txtmail.Enabled = false;
        txtadd.Enabled = false;
        txtdept.Enabled = false;
        txtphone.Enabled = false;
        txtdept.Visible = true;
        dddept.Visible = false;
        btnUpdate.Visible = false;
        btnReset.Visible = false;
        btnmodify.Enabled = true;
    }

    //protected void btnUploadImg_Click(object sender, EventArgs e)
    //{
    //    if (FileUpload1.HasFile)
    //    {
    //        String FileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
    //        if (FileExt == ".jpg" || FileExt == ".png" || FileExt == ".jpeg")
    //        {
    //            FileUpload1.SaveAs(Server.MapPath("~/App_Data/pro_image/" + FileUpload1.FileName));
    //            lblerr.Text = "You Uploaded a File :" + FileUpload1.PostedFile.FileName;
    //            Image1.ImageUrl = "~/App_Data/pro_image/" + FileUpload1.FileName;
    //            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
    //            con.Open();
    //            SqlCommand cmd = new SqlCommand("insert into tbl_student(stud_img) values @img", con);
    //            cmd.Parameters.AddWithValue("@img", "~/App_Data/pro_image/" + FileUpload1.FileName);
    //            cmd.ExecuteNonQuery();

    //        }
    //        else
    //        {
    //            lblerr.Text = "Only Picture Files Can be Uploaded";
    //        }
    //    }
    //    else
    //    {
    //        lblerr.Text = "Please Specify a File";
    //    }
    //}
}
