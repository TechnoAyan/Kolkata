<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
            GroupName="gen" oncheckedchanged="RadioButton1_CheckedChanged" Text="Male" />
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
            GroupName="gen" oncheckedchanged="RadioButton1_CheckedChanged" Text="Female" />
        <asp:Button ID="Button1" runat="server" BackColor="#990000" Font-Bold="True" 
            ForeColor="White" onclick="Button1_Click" Text="Select" />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#990000"></asp:Label>
    </div>
    </form>
</body>
</html>
