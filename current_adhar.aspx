<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="current_adhar.aspx.cs" Inherits="Banking_website.current_adhar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:deeppink;
        }
        .auto-style1 {
            height: 576px;
        }
        .auto-style2 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style4 {
            color: #3333CC;
            font-size: large;
            background-color: #FFFF00;
        }
        .auto-style5 {
            color: #000099;
            background-color: #66FF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section> <h1 style="font-family:sans-serif ; text-align:center; background:radial-gradient(green,orange);color:white;text-shadow:3px 3px 4px GREEN">Additional Information for Current Account</h1>
        </section>
        <section id="A" class="auto-style1">
            <br />
            <br />
            <br />
            <strong>
            <asp:Label ID="Label4" runat="server" Text="Nominee Name" CssClass="auto-style2"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
            </strong>
            <br />
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" Text="type of current ac " CssClass="auto-style2"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  Width="212px" CssClass="auto-style5">
                <asp:ListItem Selected="True"></asp:ListItem>
            </asp:DropDownList>
            </strong>
            <br />
            <br />
            <strong>
            <asp:Label ID="Label2" runat="server" Text="Issue  Checkbook" CssClass="auto-style2"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:DropDownList ID="B" runat="server" AutoPostBack="True" >
            </asp:DropDownList>
            <br />
            <br />
            <strong>
            <asp:Label ID="Label3" runat="server" Text="SMS Services" CssClass="auto-style2"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:RadioButton ID="Y" runat="server" Text="yes" />
            <asp:RadioButton ID="N" runat="server" Text="no" />
            <br />
            <br />
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="auto-style4" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Final Confirmation" CssClass="auto-style4" />
            </strong>
            <br />
            <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Label ID="Label5" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <strong>
            <asp:Label ID="Label6" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
            </strong>
            <br />
        </section>
    </form>
</body>
</html>
