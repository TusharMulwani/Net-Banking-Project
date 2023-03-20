<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Banking_website.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    TM Saving Account
    </title>
<link href ="StyleSheet1.css"  type ="text/css" rel ="stylesheet"   />
    <style type="text/css">*{background-color:lawngreen;}
        .auto-style1 {
            width: 107px;
        }
        .C {
            height: 432px;
        }
        .auto-style2 {
            color: #6600CC;
            background-color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style3 {
            background-color: #FF6600;
        }
        .auto-style4 {
            font-weight: bold;
            font-style: italic;
            color: #FF0000;
            text-decoration: underline;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            font-weight: bold;
            font-style: italic;
            color: #FF0000;
            background-color: #FFFFCC;
        }
        .auto-style6 {
            height: 25px;
            width: 125px;
        }
        .auto-style7 {
            width: 107px;
            height: 25px;
        }
        .auto-style8 {
            width: 125px;
        }
        .auto-style9 {
            height: 74px;
            border: 2px solid red;
        }
        .auto-style10 {
            color: #CC33FF;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            text-decoration: underline;
            font-size: large;
            color: #FF0000;
        }
        .auto-style12 {
            color: #3366FF;
            text-decoration: underline;
            font-size: x-large;
            background-color: #FFFF00;
        }
        .auto-style13 {
            background-color: #FFFFFF;
        }
        .auto-style14 {
            color: #333399;
            font-weight: bold;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body style="height: 727px">

    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <h1>TM Saving Account </h1>
        <section class ="B">
         <p class="auto-style11"> <strong class="auto-style13">Special Interest rates (mentioned below)</strong></p>
         <table class="auto-style9" >
          <tr>
              <th class="auto-style6">Savings</th>
          
              <th class="auto-style7">FD</th>
          </tr>
           <tr>
              <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6.5</td>
          
              <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7.5</td>
          </tr>
          

         </table>

           

        </section>
        <section class ="C">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="To  Open   an account please enter your Aadhar Number" CssClass="auto-style12"></asp:Label>

             </strong>

             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
             <asp:TextBox ID="TextBox1" runat="server" Height="26px" style="text-align: right" Width="177px" CssClass="auto-style3"></asp:TextBox>
             <br />
             <br />
             <strong>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="height: 29px" CssClass="auto-style2" />
             </strong>&nbsp; <strong>
            <asp:Button ID="Button4" runat="server" CssClass="auto-style14" OnClick="Button4_Click" Text="Home Page" />
            </strong>
             <br />
             <br />
             <strong>
             <asp:Label ID="Label2" runat="server" Text="Kindly Verify Your Details" CssClass="auto-style10"></asp:Label>
             </strong>
             <br />
             <asp:GridView ID="GridView1" runat="server">
             </asp:GridView>
             <strong><em>
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Verified" CssClass="auto-style4" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button3" runat="server" style="text-align: justify; width: 175px;" Text="need correction" OnClick="Button3_Click" CssClass="auto-style5" />

            </em></strong>

        </section>
    </form>
</body>
</html>
