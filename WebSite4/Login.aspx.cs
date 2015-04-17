using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager
    .ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter
      ("select * from user_reg",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int z = dt.Rows.Count;
        int z1 = 0;
        for(int i=0; i<z;i++)
        {
            if (TextBox1.Text == dt.Rows[i][0].ToString() &&
                TextBox2.Text == dt.Rows[i][1].ToString())
            {
                Session.Add("unm",TextBox1.Text);
                if (dt.Rows[i][2].ToString() == "Admin")
                {
                    Response.Redirect("Home.aspx");
                }
                else if (dt.Rows[i][2].ToString() == "User")
                {
                    Response.Redirect("Error.aspx");
                }
                z= 0;
            }
        }
        if (z1 == 0)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox1.Focus();
            Response.Write("Acess Denied");
        }
    
    }
}