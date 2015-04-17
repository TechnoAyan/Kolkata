<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffd680">
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:TextBox ID="TextBox2"
            runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Font-Bold="True" 
            Font-Size="12pt" ForeColor="White" onclick="Button1_Click" style="height: 29px" 
            Text="Submit" />
        <asp:Button ID="Button2" runat="server" BackColor="#003366" Font-Bold="True" 
            Font-Size="15pt" ForeColor="White" onclick="Button2_Click" Text="+" />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
            ForeColor="#990000"></asp:Label>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            Font-Size="15pt" Font-Underline="False" ForeColor="#003300" 
            onclick="LinkButton1_Click">Login</asp:LinkButton>
        <br />
        <asp:ImageButton ID="ImageButton1"
        onmouseover="this.src='images/start_over.gif'"
       onmouseout="this.src='images/start_normal.gif'" 
        runat="server" 
            ImageUrl="~/images/start_normal.gif" />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="height: 22px">
            <asp:ListItem Value="1">Kolkata</asp:ListItem>
            <asp:ListItem Value="2">Kanpur</asp:ListItem>
            <asp:ListItem Value="3">Jamshedpur</asp:ListItem>
            <asp:ListItem Value="4">Bihar</asp:ListItem>
            <asp:ListItem Value="5">Indore</asp:ListItem>
            <asp:ListItem Value="6">Bhopal</asp:ListItem>
            <asp:ListItem Value="7">Delhi</asp:ListItem>
            <asp:ListItem Value="8">Noida</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" Text="Click Me" 
            onclick="Button3_Click" />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" 
            Height="200px" onselectionchanged="Calendar1_SelectionChanged" 
            ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    </div>
    </form>
</body>
</html>
