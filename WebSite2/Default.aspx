<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox ID="chkphp" runat="server" Font-Bold="True" Text="PHP" />
        <asp:CheckBox ID="chkASP" runat="server" Font-Bold="True" Text="ASP" />
        <asp:CheckBox ID="chkjava" runat="server" Font-Bold="True" Text="JAVA" />
        <asp:CheckBox ID="chkseo" runat="server" Font-Bold="True" Text="SEO" />
        <asp:Button ID="Button1" runat="server" BackColor="#FF3300" Font-Bold="True" 
            onclick="Button1_Click" Text="Select Course" />
        <br />
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>ASP</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>SEO</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="Button2" runat="server" BackColor="#CC9900" Font-Bold="True" 
            onclick="Button2_Click" Text="Select Courses" />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
            ForeColor="#003300"></asp:Label>
    </div>
    </form>
</body>
</html>
