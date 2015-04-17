using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=kolkata2;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        grdfll();
        if (!IsPostBack)
        {
            ddlfill();
        }
    }
    public void grdfll()
    {
        SqlDataAdapter da = new SqlDataAdapter
       ("select * from reg", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void ddlfill()
    {
        SqlDataAdapter da = new SqlDataAdapter
        ("select id,name from reg",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "name";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string imgpath = Image1.ImageUrl;
        if (FileUpload1.PostedFile.FileName != "")
        {
      imgpath = string.Format("img/{0}.jpg", TextBox1.Text);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into reg values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+imgpath+"')";
        cmd.ExecuteNonQuery();
        con.Close();
        
        if (FileUpload1.PostedFile.FileName != "")
        {
     FileUpload1.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        Image1.ImageUrl = imgpath;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "delete from reg where id='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string imgpath = Image1.ImageUrl;
        if (FileUpload1.PostedFile.FileName != "")
        {
            imgpath = string.Format("img/{0}.jpg", TextBox1.Text);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "update reg set name='" + TextBox2.Text + "',mob='" + TextBox3.Text + "',addr='" + TextBox4.Text + "',img='"+imgpath+"' where id='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();

        if (FileUpload1.PostedFile.FileName != "")
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        Image1.ImageUrl = imgpath;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand
       ("select * from reg where id='" + TextBox1.Text + "'");
        cmd1.Connection = con;
        con.Open();
        SqlDataReader dr = cmd1.ExecuteReader
        (CommandBehavior.CloseConnection);
        if (dr.Read())
        {
            TextBox2.Text=dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
            Image1.ImageUrl = dr[4].ToString();
        } dr.Close();

     //   SqlDataAdapter da = new SqlDataAdapter
     // ("select * from reg where id='"+TextBox1.Text+"'",con);
     //DataTable dt = new DataTable();
     //da.Fill(dt);
     //   TextBox2.Text=dt.Rows[0][1].ToString();
     //   TextBox3.Text = dt.Rows[0][2].ToString();
     //   TextBox4.Text = dt.Rows[0]["addr"].ToString();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand
             ("select * from reg where id='" +DropDownList1.SelectedValue.ToString() + "'");
        cmd1.Connection = con;
        con.Open();
        SqlDataReader dr = cmd1.ExecuteReader
        (CommandBehavior.CloseConnection);
        if (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
        } dr.Close();
    }
}