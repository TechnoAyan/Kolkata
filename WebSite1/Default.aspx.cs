using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    int no1 = Convert.ToInt32(TextBox1.Text);
    int no2 = Convert.ToInt32(TextBox2.Text);
    int res = no1 + no2;
    //Label1.Text = "Result is: " + res;
    Label1.Text = string.Format
        ("Result is: {0}", res);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "Login")
            LinkButton1.Text = "Logout";
        else if (LinkButton1.Text == "Logout")
            LinkButton1.Text = "Login";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Text =string.Format
 ("You have selected: {0}",DropDownList1.Text);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = string.Format
             ("You have selected: {0}",
             DropDownList1.SelectedValue.ToString());
        //Label1.Text = string.Format
        //   ("You have selected: {0}", 
        //   DropDownList1.SelectedItem.ToString());
        //Label1.Text = string.Format
        // ("You have selected: {0}", DropDownList1.Text);
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = Calendar1.
      SelectedDate.ToString("dd-dddd/MM/yyyy");
    }
}