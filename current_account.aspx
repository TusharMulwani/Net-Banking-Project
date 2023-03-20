<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="current_account.aspx.cs" Inherits="Banking_website.current_account " %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    TM Current Account
    </title>
<link href ="StyleSheet1.css"  type ="text/css" rel ="stylesheet"   />
    <style type="text/css">*{background-color:lawngreen;}
        .C {
            height: 432px;
        }
        .auto-style2 {
            background-color: khaki;
                        color:blue;
        }
        .auto-style3 {
            background-color: #FF6600;
        }
        .auto-style4 {
            font-weight: bold;
            font-style: italic;
           background-color: khaki;
                        color:blue;
            text-decoration: underline;
           
        }
        .auto-style5 {
            font-weight: bold;
            font-style: italic;
            color: #FF0000;
            background-color: #FFFFCC;
        }
        .auto-style8 {
            width: 125px;
            background-color: khaki;
                        color:blue;
        }
        .auto-style9 {
            height: 74px;
            border: 2px solid red;
                        background-color: khaki;
                        color:blue;
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
        .auto-style17{
            background-color: khaki;
                        color:blue;
        }
        .ab{
            background-color: khaki;
                        color:blue;
        }
        .auto-style18 {
            color: #000066;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body style="height: 727px">

    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <h1>TM Current Account </h1>
        <section class ="B">
         <p class="auto-style11"> <strong class="auto-style13">Special Features Provided by our Bank Are: (mentioned below)</strong></p>
         
              <table class ="M"> 
     <tr>    <th class="auto-style8">&nbsp;Average Balance Just Rs10000 </a> </th>
        <th class="auto-style9">3 Cheque Leaves Are Free Per Year</th>
        <th class="auto-style17">Minimal charges On NEFT & RTGS</th>
        <th class="auto-style2">Can Avail Netbanking and mobile banking Facilites</a></th>
        <th class="ab">Free Movie tickets every month&nbsp;</a> </th>
        <th class="auto-style4">Rs 200 Amazon Vouchers On Account Opening</a></th>
         
     </tr>
         
          

         </table>

           

        </section>
        <section class ="C">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="To  Open   an account please enter your Company PAN  Number" CssClass="auto-style12"></asp:Label>

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
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="height: 29px" CssClass="auto-style2" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button4" runat="server" CssClass="auto-style18" OnClick="Button4_Click" Text="Home Page" />
            </strong>
             <br />
             <br />
             <strong>
             <asp:Label ID="Label2" runat="server" Text="Kindly Verify Your Details" CssClass="auto-style10"></asp:Label>
             </strong>
             <br />
             <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                 <AlternatingRowStyle BackColor="#DCDCDC" />
                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#0000A9" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#000065" />
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
