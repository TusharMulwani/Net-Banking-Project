<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Current_login.aspx.cs" Inherits="Banking_website.Current_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            background-color:darkblue;
        }
        .auto-style1 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style5 {
            color: #000099;
            font-weight: bold;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
         <h1 style="font-family:sans-serif ; text-align:center; background:PURPLE;color:white;text-shadow:3px 3px 4px GREEN"> TM BANK LOGIN</h1>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style1" Text="To LOGIN KINDLY WRITE YOUR MOBILE NUMBER HERE"></asp:Label>
            </strong>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style4" OnClick="Button3_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home Page" CssClass="auto-style4" style="font-weight: bold; color: #FFFFFF; font-size: large" />
            </strong>
         </p>
        <p>
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="username"></asp:Label>
            </strong><span class="auto-style1"><strong>&nbsp;
            </strong></span>
            <asp:TextBox ID="TextBox1" runat="server"  TextMode ="email"></asp:TextBox>
        </p>
        <p>
            &nbsp; &nbsp;</p>
         <p>
             &nbsp;</p>
        <p>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="password"></asp:Label>
            <span class="auto-style2"> &nbsp;</span></strong><strong><asp:TextBox ID="TextBox2" runat="server"   CssClass="auto-style3"></asp:TextBox>
            </strong>
        </p>
        <p>
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="LOG IN" style="height: 29px" CssClass="auto-style2" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" CssClass="auto-style5" OnClick="Button4_Click" Text="Transfer Fund" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </p>
        <p>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
