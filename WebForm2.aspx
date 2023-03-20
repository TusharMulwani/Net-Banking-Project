<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Banking_website.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
            background-color:palegreen;
        }
        .auto-style1 {
            color: #99FF99;
            font-weight: bold;
            font-size: large;
            background-color: #000066;
        }
        .auto-style2 {
            color: #FFFF00;
            font-size: large;
            background-color: #0000CC;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="font-family:sans-serif ; text-align:center; background:radial-gradient(orange,red);color:white;text-shadow:3px 3px 4px red"> FINAL DETAILS FOR OPENING SAVINGS ACCOUNT</h1>
        <section> 
            <p class="auto-style3"> <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text=" BEFORE SEEING FINAL DETAILS KINDLY CLICK ON UPDATE"></asp:Label>
                </strong></p>
            <p> &nbsp;</p>
            <p> <strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style1" OnClick="Button3_Click" Text="UPDATE" />
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style1" OnClick="Button4_Click" Text="I WANT TO VERIFY" />
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="Button5" runat="server" CssClass="auto-style1" OnClick="Button5_Click" Text="HOME PAGE" />
                </strong></p>
            <p> 
                <strong> 
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style4"></asp:Label>
                </strong>
            </p>
        </section>
        <div>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="2" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <strong>
            <asp:Button ID="Button1" runat="server" Text="VERIFIED" OnClick="Button1_Click" Width="156px" CssClass="auto-style1" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="want to make changes" CssClass="auto-style1" />
            </strong>
        </div>
    </form>
</body>
</html>
