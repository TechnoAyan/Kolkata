using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager
   .ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        grdfll();
    }
    public void grdfll()
    {
        SqlDataAdapter da = new SqlDataAdapter
       ("select * from reg",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void lbEdit_Command(object sender, CommandEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        string no = e.CommandArgument.ToString();
        SqlCommand cmd1 = new SqlCommand
       ("select * from reg where id ='"+no+"'",con);
       
        con.Open();
        SqlDataReader dr = cmd1.ExecuteReader
            (CommandBehavior.CloseConnection);
        if (dr.Read())
        {
            lblid.Text = no;
            TextBox1.Text=dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            Image1.ImageUrl = dr[4].ToString();
        } dr.Close();

    }
    protected void lbDelete_Command(object sender, CommandEventArgs e)
    {
        string no = e.CommandArgument.ToString();
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "delete from reg where id='"+no+"'";
        cmd.ExecuteNonQuery();
        con.Close();
        grdfll();
    }
    protected void lbAdd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        clr();
        lblid.Text = maxid();
        TextBox1.Focus();

    }
    public string maxid()
    {
        SqlCommand cmd1 = new SqlCommand
       ("select max(id) from reg",con);
      
        con.Open();
        object obj = cmd1.ExecuteScalar();
        con.Close();
        if (obj.ToString() == "")
            return "1";
        else
        {
            return ((Convert.ToInt32(obj) + 1).ToString());

        }

    }
    public void clr()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}