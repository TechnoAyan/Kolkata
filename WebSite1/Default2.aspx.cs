﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
            Label1.Text = RadioButton1.Text;
        else if (RadioButton2.Checked == true)
            Label1.Text = RadioButton2.Text;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
            Label1.Text = RadioButton1.Text;
        else if (RadioButton2.Checked == true)
            Label1.Text = RadioButton2.Text;
    }
}