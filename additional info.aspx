<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="additional info.aspx.cs" Inherits="Banking_website.additional_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 379px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section> <h1>Additional Information for Savings Account</h1>
        </section>
        <section id="A" class="auto-style1">
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Nominee Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="type of saving ac "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="212px">
                <asp:ListItem Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Issue  Checkbook"></asp:Label>
            <asp:DropDownList ID="B" runat="server" AutoPostBack="True" OnSelectedIndexChanged="B_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Debit card"></asp:Label>
            <asp:RadioButton ID="Y" runat="server" Text="yes" />
            <asp:RadioButton ID="N" runat="server" Text="no" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="height: 29px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Final Confirmation" />
            <br />
            <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
        </section>
    </form>
</body>
</html>
