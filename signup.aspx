<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Banking_website.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> TM BANK SIGNUP</title>
    <style type="text/css">
        *{
            background-color:cadetblue;
        }
        .auto-style1 {
            height: 620px;
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
            font-size: large;
            color: #FF33CC;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            font-size: large;
            color: #CC66FF;
            background-color: #FF0000;
        }
        .auto-style10 {
            color: #FFFF99;
            background-color: #009933;
            font-size: large;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            background-color: #333399;
        }
        .auto-style12 {
            color: #FFFFFF;
            font-size: large;
            background-color: #009933;
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
            <h1 style="font-family:sans-serif ; text-align:center; background:radial-gradient(BLUE,BROWN);color:yellow;text-shadow:3px 3px 4px GREEN"> TM BANK SIGNUP </h1>
            &nbsp;<br />
            <br />
            <br />
            <br />
            <span class="auto-style5"><strong>Mobile Number</strong></span><asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode ="Number"></asp:TextBox>
            <br />
            <br />
            <span class="auto-style6"><strong>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode ="Email"></asp:TextBox>
            <br />
            <br />
            <br />
            <span class="auto-style7"><strong>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign UP" CssClass="auto-style2" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Text="Login" OnClick="Button3_Click" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button2" runat="server" Text="Home Page" OnClick="Button2_Click" CssClass="auto-style4" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text="Are You sure about the above information?"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Have You already signup"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" CssClass="auto-style11" OnClick="Button6_Click" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" CssClass="auto-style11" OnClick="Button7_Click" Text="NO" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" CssClass="auto-style9" OnClick="Button4_Click" Text="YES" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" CssClass="auto-style8" OnClick="Button5_Click" Text="NO" />
            </strong>
        </div>
    </form>
</body>
</html>
