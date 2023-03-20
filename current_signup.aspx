<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="current_signup.aspx.cs" Inherits="Banking_website.current_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> TM BANK SIGNUP</title>
    <style type="text/css">
        *{
            background-color:darkgreen;
        }
        .auto-style1 {
            height: 671px;
        }
        .auto-style2 {
            color: #9900CC;
            font-size: large;
            font-weight: bold;
            background-color: #FF66FF;
        }
        .auto-style3 {
            color: #CC0066;
            font-size: large;
            font-weight: bold;
            background-color: #66FF66;
        }
        .auto-style4 {
            font-size: large;
            font-weight: bold;
            color: #FFCCFF;
            background-color: #000099;
        }
        .auto-style5 {
            color: #FFFFCC;
            font-size: large;
        }
        .auto-style6 {
            color: #000099;
            font-size: large;
        }
        .auto-style7 {
            color: #00FFFF;
            font-size: large;
        }
        .auto-style8 {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
    <script>function k() {
            r = confirm('you have been signed in sucessfully, we are directing you to Login');
            if (r == true) { window.location.href = "Login.aspx" } else { window.location.href = "WebForm3.aspx" }
        }</script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="font-family:sans-serif ; text-align:center; background:radial-gradient(orange,red);color:white;text-shadow:3px 3px 4px GREEN"> TM BANK SIGNUP </h1>
            &nbsp;<br />
            <br />
            <br />
            <br />
            <span class="auto-style5"><strong>Mobile Number</strong></span><asp:TextBox ID="TextBox1" runat="server" TextMode ="Number"></asp:TextBox>
            <br />
            <br />
            <strong>
            <span class="auto-style8">User Name&nbsp;&nbsp;&nbsp;</span><span class="auto-style6">&nbsp;&nbsp;&nbsp; </span> </strong><asp:TextBox ID="TextBox2" runat="server"  TextMode ="Email"></asp:TextBox>
            <br />
            <br />
            <br />
            <strong>
            <span class="auto-style8">Password&nbsp;&nbsp;</span><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </strong><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign UP" CssClass="auto-style2" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Text="Login" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button2" runat="server" Text="Home Page" OnClick="Button2_Click" CssClass="auto-style4" />
            &nbsp;<br />
            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Have You already signup" style="color: #990099; background-color: #FFFFFF"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" CssClass="auto-style9" OnClick="Button4_Click" Text="YES" style="font-weight: bold; color: #9999FF; background-color: #66FFFF" Height="45px" Width="64px" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <em>
            <asp:Button ID="Button5" runat="server" CssClass="auto-style8" OnClick="Button5_Click" Text="NO" style="font-weight: bold; color: #FFFF00; background-color: #0033CC" /></em><br />
            <br />
            </strong>
        </div>
    </form>
</body>
</html>
