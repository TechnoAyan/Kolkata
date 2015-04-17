<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 63%;
            height: 162px;
        }
    </style>
</head>
<body bgcolor="#333333">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server"><center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="mob" HeaderText="Mobile" />
                    <asp:BoundField DataField="addr" HeaderText="Address" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="64px" 
                                ImageUrl='<%# Eval("images") %>' Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbEdit" runat="server" CommandArgument='<%# Eval("id") %>' 
                                Font-Bold="True" Font-Underline="False" ForeColor="#003300" 
                                oncommand="lbEdit_Command">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbDelete" runat="server" 
                                CommandArgument='<%# Eval("id") %>' Font-Bold="True" Font-Underline="False" 
                                ForeColor="Red" oncommand="lbDelete_Command">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbAdd" runat="server" Font-Bold="True" 
                                Font-Underline="False" ForeColor="Blue" onclick="lbAdd_Click">Add</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            </center>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <center>
            <table bgcolor="#FFD7EB" class="style1">
                <tr>
                    <td align="center" bgcolor="#660033" colspan="2" 
                        style="color: #FFFFFF; font-size: 25px; font-weight: bold">
                        Add/Edit USer</td>
                </tr>
                <tr>
                    <td align="right">
                        Id:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblid" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td align="right">
                        Name:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td align="right">
                        Mobile:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td align="right">
                        Address:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td align="right">
                        Upoad Image:
                    </td>
                    <td align="left">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        &nbsp;</td>
                    <td align="left">
                        <asp:Image ID="Image1" runat="server" Height="82px" 
                            ImageUrl="~/m_gtstudent1101.jpg" Width="90px" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        &nbsp;</td>
                    <td align="left">
                        <asp:Button ID="Button1" runat="server" BackColor="#660033" Font-Bold="True" 
                            ForeColor="White" Text="Save" />
                        <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Bold="True" 
                            ForeColor="White" Text="Cancel" onclick="Button2_Click" />
                    </td>
                </tr>
            </table>
            </center>
        </asp:View>
    </asp:MultiView>
    </form>
</body>
</html>
