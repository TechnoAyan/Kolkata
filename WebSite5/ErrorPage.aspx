﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #008000; font-size: 25px; font-weight: bold; font-family: verdana">
    <center>
        You are not authorised to View this Page&nbsp;
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="15pt" 
            Font-Underline="False">Go to Login Page</asp:LinkButton>
    </center>
    </div>
    </form>
</body>
</html>
