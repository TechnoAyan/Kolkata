<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 66%;
            height: 139px;
        }
    </style>
</head>
<body bgcolor="#333333">
    <form id="form1" runat="server">
    <div>
    <center><br /><br /><br /><br />
        <table bgcolor="#FF9393" class="style1" style="border: thick dashed #800000">
            <tr>
                <td align="center" bgcolor="Maroon" colspan="2" 
                    style="font-size: 25px; font-weight: bold; color: #FFFFFF;">
                    Validation Form</td>
            </tr>
            <tr>
                <td align="right" style="font-size: 14px; font-weight: bold">
                    Name:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Pls Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: 14px; font-weight: bold">
                    Email:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Pls Enter Email" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Pls enter valid Email" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: 14px; font-weight: bold">
                    Password:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Pls Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: 14px; font-weight: bold">
                    Confirm Password::</td>
                <td align="left">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Pls Re-Enter Password" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                        ErrorMessage="Value not match" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: 14px; font-weight: bold">
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Button1" runat="server" BackColor="Maroon" Font-Bold="True" 
                        ForeColor="White" Text="Submit" BorderStyle="None" />
                </td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>
