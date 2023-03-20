<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signupc.aspx.cs" Inherits="Banking_website.signupc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:greenyellow;
        }

        .auto-style5 {
            height: 405px;
        }
    
        .auto-style1 {
            color: #000066;
            background-color: #FF33CC;
        }
        .auto-style3 {
            color: #000066;
            font-weight: bold;
            background-color: #FF0066;
        }
        .auto-style2 {
            background-color: #FF66FF;
        }
        .auto-style4 {
            color: #009900;
            font-weight: bold;
            background-color: #FFFF66;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server" class="auto-style5">
        <div>
            <h1 style="font-family:sans-serif ; text-align:center; background:red;color:white;text-shadow:3px 3px 4px GREEN"> TM BANK LOGIN</h1>
        </div>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Saving Account signup"></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="Savings Signup" OnClick="Button1_Click1" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Current Account signup"></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Text="Current Signup" OnClick="Button2_Click" />
        </strong>
    </form>
    
</body>
</html>
