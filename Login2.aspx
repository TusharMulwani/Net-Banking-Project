<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Banking_website.Login2" %>

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
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #000099;
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
    </style>
</head>
<body style="height: 505px">
    <form id="form" runat="server">
         <h1 style="font-family:sans-serif ; text-align:center; background:PURPLE;color:white;text-shadow:3px 3px 4px GREEN"> TM BANK LOGIN</h1>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <span class="auto-style1"><strong>username&nbsp;
            </strong></span>
            <asp:TextBox ID="a" runat="server" OnTextChanged="TextBox1_TextChanged1" TextMode ="email" CssClass="auto-style6"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <strong><span class="auto-style5"><span class="auto-style1">password</span></span><span class="auto-style2"> </span> <asp:TextBox ID="TextBox2" runat="server"  OnTextChanged="TextBox2_TextChanged" CssClass="auto-style3"></asp:TextBox>
            </strong>
        </p>
        <p>
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="LOG IN" style="height: 40px" CssClass="auto-style2" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home Page" CssClass="auto-style4" />
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
