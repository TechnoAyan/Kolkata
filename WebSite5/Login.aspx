<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 41%;
            height: 75px;
        }
    </style>
</head>
<body bgcolor="#333333">
    <form id="form1" runat="server">
    <div>
    <center><br /><br /><br /><br /><br />
        <table bgcolor="#FFC4FF" class="style1">
            <tr>
                <td align="center" bgcolor="#660033" colspan="2" 
                    style="color: #FFFFFF; font-size: 25px; font-weight: bold">
                    Login</td>
            </tr>
            <tr>
                <td align="right">
                    Username:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Password:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Button1" runat="server" BackColor="#660033" Font-Bold="True" 
                        ForeColor="White" Text="Login" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>
