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
        string str = "";
        if (chkphp.Checked) str += "PHP, ";
        if (chkASP.Checked) str += "ASP, ";
        if (chkjava.Checked) str += "JAVA, ";
        if (chkseo.Checked) str += "SEO, ";
        if (str.Length > 0) str = str.Substring(0,str.Length-2);
        int pos = str.LastIndexOf(",");
        if (pos > -1)
        {
            str = str.Remove(pos,1);
            str = str.Insert(pos," and");
        }
        if (str.Length == 0)
            str = "Nothing";
        Label1.Text = "You have selected: " + str;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
        str += CheckBoxList1.Items[i].Value.ToString() + ", ";
        }
            if (str.Length > 0) str = str.Substring(0, str.Length - 2);
            int pos = str.LastIndexOf(",");
            if (pos > -1)
            {
                str = str.Remove(pos, 1);
                str = str.Insert(pos, " and");
            }
            if (str.Length == 0)
                str = "Nothing";
            Label1.Text = "You have selected: " + str;
        

    }
}