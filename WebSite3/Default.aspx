<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 73%;
            height: 188px;
        }
    </style>
</head>
<body bgcolor="#232323">
    <form id="form1" runat="server">
    <div>
    <center><br /><br /><br /><br /><br />
        <table bgcolor="#FFB7DB" class="style1">
            <tr>
                <td align="center" bgcolor="#660033" colspan="2" 
                    
                    style="font-size: 25px; font-weight: bold; font-family: 'monotype Corsiva'; color: #FFFFFF;">
                    Registration Form</td>
            </tr>
            <tr>
                <td align="right" style="font-weight: bold; font-size: 14px">
                    Id:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
                  <tr>
                <td align="right" style="font-weight: bold; font-size: 14px">
                    Name:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
                  <tr>
                <td align="right" style="font-weight: bold; font-size: 14px">
                    Mobile:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
                  <tr>
                <td align="right" style="font-weight: bold; font-size: 14px">
                    Address:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
                  <tr>
                <td align="right" style="font-weight: bold; font-size: 14px">
                    Upload Image:</td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
                  <tr>
                <td align="right" style="font-weight: bold; font-size: 14px">
                    &nbsp;</td>
                <td align="left">
                    <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl="~/JoeStagUK.gif" 
                        Width="93px" />
                </td>
            </tr>
                  <tr>
                <td align="center" style="font-weight: bold; font-size: 14px" bgcolor="Maroon" 
                          colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            <asp:BoundField DataField="mob" HeaderText="Mobile" />
                            <asp:BoundField DataField="addr" HeaderText="Address" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                      </td>
            </tr>
                  <tr>
                <td align="right" style="font-weight: bold; font-size: 14px">
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Button1" runat="server" BackColor="#660033" Font-Bold="True" 
                        ForeColor="White" Text="Submit" onclick="Button1_Click" 
                        style="height: 26px" />
                    <asp:Button ID="Button2" runat="server" BackColor="#003366" Font-Bold="True" 
                        ForeColor="White" Text="Update" onclick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" BackColor="#003300" Font-Bold="True" 
                        ForeColor="White" Text="Delete" onclick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" BackColor="#FF9900" Font-Bold="True" 
                        ForeColor="Black" Text="Show" onclick="Button4_Click" />
                </td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>
