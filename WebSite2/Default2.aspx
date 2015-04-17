<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" BackColor="#666633" 
            DisplaySideBar="False" Height="191px" Width="537px" ActiveStepIndex="0" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Personal Details">
                    <table bgcolor="#B0D8FF" class="style1">
                        <tr>
                            <td align="center" bgcolor="#003366" colspan="2" 
                                style="color: #FFFFFF; font-weight: bold; font-size: 25px">
                                Personal Details</td>
                        </tr>
                        <tr>
                            <td align="right">
                                Name:</td>
                            <td align="left">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Mobile:</td>
                            <td align="left">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Parental Details">
                <table bgcolor="#B0D8FF" class="style1">
                        <tr>
                            <td align="center" bgcolor="#003366" colspan="2" 
                                style="color: #FFFFFF; font-weight: bold; font-size: 25px">
                                Parental Details</td>
                        </tr>
                        <tr>
                            <td align="right">
                                FAther Name:</td>
                            <td align="left">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Mother Name:</td>
                            <td align="left">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Medical Details">
                 <table bgcolor="#B0D8FF" class="style1">
                        <tr>
                            <td align="center" bgcolor="#003366" colspan="2" 
                                style="color: #FFFFFF; font-weight: bold; font-size: 25px">
                                Medical Details</td>
                        </tr>
                        <tr>
                            <td align="right">
                                Blood Group:</td>
                            <td align="left">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                RBC Count:</td>
                            <td align="left">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="12pt" 
            ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
