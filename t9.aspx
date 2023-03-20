<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="t9.aspx.cs" Inherits="Banking_website.t9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
    <style >
          body{
    background-color :lightcoral;
}
        .auto-style1 {
            height: 1064px;
        }
        .auto-style2 {
            color: #0000FF;
        }
        .auto-style4 {
            text-align: center;
            background-color:white;
            color:blue;
        }
        .newStyle1 {
            font-family: "Segoe Print";
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style6 {
            height: 60px;
        }
        .auto-style7 {
            margin-top: 0px;
            font-weight: bold;
            color: #00FF00;
            font-size: small;
            background-color: #FF3300;
        }
        .auto-style8 {
            text-decoration :none;
            font-family:Bahnschrift;
           background:radial-gradient(purple ,green);
            width: 220px;
            color:white;
        }
        .auto-style10 {
            width: 123px;
        }
        .auto-style11 {
            height: 48px;
            width: 123px;
        }
        .auto-style12 {
            height: 60px;
            width: 123px;
        }
        .auto-style14 {
            width: 129px;
        }
        .auto-style15 {
            height: 48px;
            width: 129px;
        }
        .auto-style16 {
            height: 60px;
            width: 129px;
        }
        .auto-style17 {
            height: 48px;
            width: 220px;
        }
        .auto-style18 {
            height: 60px;
            width: 220px;
        }
        .auto-style19 {
            height: 48px;
            width: 107px;
        }
        .auto-style20 {
            height: 60px;
            width: 107px;
        }
        .auto-style21 {
            width: 107px;
        }
        .auto-style22 {
            height: 55px;
            margin-top: 0px;
        }
       .asp:hover {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.Button1 {
  background-color: white; 
  color: black; 
  border: 2px solid black;
}

.button1:hover {
  background-color: black;
  color: white;
}
        .auto-style23 {
            text-decoration : none;
            font-family: Bahnschrift;
            width: 220px;
            color: white;
            text-align: center;
        }
        .auto-style24 {
            font-weight: bold;
            color: #00FF00;
            font-size: small;
            background-color: #FF3300;
        }
        .newStyle2 {
            font-family: Bahnschrift;
        }
        .auto-style25 {
            font-family: Bahnschrift;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000099;
        }
        .auto-style26 {
            color: #FF0000;
            font-size: small;
            font-weight: bold;
            background-color: #00FF00;
        }
        .auto-style27 {
            font-weight: bold;
            color: #FFFF00;
            font-size: small;
            background-color: #6600CC;
        }
        .auto-style28 {
            font-weight: bold;
            color: #FFFFFF;
            font-size: small;
            background-color: #FF3300;
        }
        .auto-style30 {
            color: #669999;
            background-color: #FFFF00;
        }
        .auto-style31 {
            color: #99CCFF;
            background-color: #006600;
        }
        .auto-style32 {
            font-weight: bold;
            color: #0066CC;
            background-color: #990000;
        }
        .M{
            border:2px solid black;
        }
        .auto-style33 {
            color: #0000CC;
            background-color: #00FF00;
            font-size: large;
        }
        .auto-style34 {
            color: #CCFFFF;
            background-color: #FF0000;
            font-size: large;
        }
        .auto-style36 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style37 {
            color: #FFFFFF;
            font-size: large;
            background-color: #0000CC;
        }
        .auto-style38 {
            background-color: #0000CC;
        }
        .auto-style39 {
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style40 {
            width: 362px;
        }
        .auto-style42 {
            height: 48px;
            width: 362px;
        }
        .auto-style43 {
            height: 60px;
            width: 362px;
        }
        .auto-style44 {
            font-family: Bahnschrift;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000099;
            margin-left: 0px;
        }
        .auto-style45 {
            color: #000099;
            font-size: medium;
            font-weight: bold;
        }
        .auto-style46 {
            font-size: medium;
            color: #000099;
            background-color: #FFFFFF;
        }
      
        .auto-style47 {
            color: #FFFFFF;
        }
      
        .auto-style48 {
            font-weight: bold;
            color: #0033CC;
            background-color: #FF6600;
        }
        .auto-style49 {
            color: #333300;
            background-color: #FFFFFF;
        }
      
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" contenteditable="false">
            <h1 class="auto-style4">&nbsp;<em class="newStyle1">SAVINGS ACCOUNT DASHBOARD</em></h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /><div class ="a">

             <div class ="auto-style22">    
&nbsp;&nbsp; <strong><span class="auto-style36"><em class="auto-style38">HELLO&nbsp;&nbsp;&nbsp;&nbsp; </em></span><em>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style37"></asp:Label>
                 </em><span class="auto-style36">&nbsp;&nbsp;&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em><strong>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Account Number" Height="25px"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style39" Height="32px" Width="175px"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:Button ID="Button36" runat="server" OnClick="Button36_Click" Text="ADD MONEY" Width="104px" style="height: 29px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </em>  
                 <asp:Button ID="Button39" runat="server" OnClick="Button39_Click" Text="LOG OUT" Width="99px" />
                </div> <div class ="c"><video width ="70" height="50" autoplay muted>
                <source src ="Resources/Money%20-%2050292.mp4" type ="video/mp4" />
                    </video>
                    <br />
                    <strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style49" Text="Label"></asp:Label>
                    <asp:Button ID="Button38" runat="server" CssClass="auto-style48" OnClick="Button38_Click" Text="Button" />
                    </strong></div>
                </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button37" runat="server" CssClass="auto-style45" OnClick="Button37_Click" Text="Account balance" Width="180px" />
            </strong>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style46" Text="Label"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="bal" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" BorderColor="#990000" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Names="Consolas" Text="Label" CssClass="auto-style36" ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="a" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" BorderColor="#990000" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Names="Consolas" Text="Label" CssClass="auto-style47"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button28" runat="server" OnClick="Button28_Click" CssClass="auto-style33" Width="194px" style="height: 29px" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="TM" runat="server" OnClick="TM_Click" CssClass="auto-style34" Width="287px" Height="32px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp
           <table class ="M"> 
     <tr>    <th class="auto-style8"> Personal Details </a> </th>
        <th class="auto-style8">FUND TRANSFER</th>
        <th class="auto-style8">LOANS AVAILED</th>
        <th class="auto-style8"> DEPOSITS</th>
        <th class="auto-style8">SETTINGS </th>
        <th class="auto-style8">CUSTOMER SERVICE</th>
        <th class="auto-style8" rowspan="1" tabindex="52">CARDS</th>
          <th class="auto-style8" rowspan="1" tabindex="52">OTHER SERVICES</th>
     

     </tr>
      <tr>
          <td class ="auto-style23" >
              <em><strong>
              <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click1" Text="NOMINEE NAME" Width="130px" CssClass="auto-style24" />
              </strong></em>&nbsp;
          </td>
          <td class="auto-style40">&nbsp;<em><strong><asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="New Payee" Width="132px" CssClass="auto-style44" />
              </strong></em>&nbsp;</td>
          <td class="auto-style10">
               <em><strong>
               <asp:Button ID="Button9" runat="server" Text="HOME LOAN" OnClick="Button9_Click" Width="108px" CssClass="auto-style26" />
                    </strong></em>
                    </td>
          <td class="auto-style14">
              <em><strong>
              <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Fixed Deposits" Width="212px" CssClass="auto-style27" />
              </strong></em>
          </td>
          <td class="auto-style21"><a href="WebForm1.aspx"> 
              <em><strong> 
              <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="Change Nominee Name" CssClass="auto-style28" />
              </strong></em>
          </td>
          <td><asp:Button ID="Button20" runat="server" Text="Raise A Complaint" OnClick="Button20_Click" Width="140px" CssClass="auto-style30" />
          </td>
          <td><asp:Button ID="Button24" runat="server" Text="Apply For New Debit Card" Width="192px" OnClick="Button24_Click" CssClass="auto-style31" />
          </td>
          <td>
              <em><strong>
              <asp:Button ID="Button32" runat="server" Height="46px" OnClick="Button32_Click" Text="BHIM UPI ACTIVATION" Width="199px" CssClass="auto-style32" />
              </strong></em>
          </td>
          </tr>
               <tr>
          
           <td class ="auto-style17">
               <em><strong>
               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="FATHERS NAME" Width="126px" CssClass="auto-style24" />
                   </strong></em>
                   </td>
          <td class="auto-style42">
              <em><strong>
              <asp:Button ID="Button5" runat="server" Height="32px" OnClick="Button5_Click" Text="registered payee " Width="140px" CssClass="auto-style25" />
                   </strong></em>
                   </td>
          <td class="auto-style11">
               <em><strong>
               <asp:Button ID="Button8" runat="server" Text="CAR LOAN" OnClick="Button8_Click" Width="112px" CssClass="auto-style26" />
                   </strong></em>
                   </td>
          <td class="auto-style15"><a href="WebForm1.aspx"> 
              <em><strong> 
              <asp:Button ID="Button29" runat="server" OnClick="Button29_Click" Text="Recurring Deposits" CssClass="auto-style27" />
                   </strong></em>
                   </td>
          <td class="auto-style19">
              <em><strong>
              <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Change Father's name" CssClass="auto-style28" Height="32px" />
                   </strong></em>
                   </td>
           <td class="auto-style5"><asp:Button ID="Button21" runat="server" Text="Refer A Friend" OnClick="Button21_Click" CssClass="auto-style30" />
                   </td>
          <td class="auto-style5"><a href="WebForm1.aspx"> &nbsp;</a><asp:Button ID="Button25" runat="server" Text="apply credit card" Width="172px" OnClick="Button25_Click" CssClass="auto-style31" />
                   </td>
          <td class="auto-style5"><a href="WebForm1.aspx">&nbsp;</a><em><strong><asp:Button ID="Button33" runat="server" OnClick="Button33_Click" Text="new cheq book" CssClass="auto-style32" Height="38px" />
                   </strong></em>
                   </td></tr>
               <tr>
           <td class ="auto-style8">
               <em><strong>
               <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="35px" OnClick="Button3_Click" Text="Mobile Number" Width="131px" />
                   </strong></em>
                   </td>
          <td class="auto-style40">
              <em><strong>
              <asp:Button ID="Button10" runat="server" Height="35px" Text="Delete Payee" Width="129px" OnClick="Button10_Click" CssClass="auto-style25" />
                   </strong></em>
                   </td>
          <td class="auto-style10">
               <em><strong>
               <asp:Button ID="Button7" runat="server" Text="Personal Loan" OnClick="Button7_Click" Width="105px" CssClass="auto-style26" />
                   </strong></em>
                   </td>
          <td class="auto-style14">
              <em><strong>
              <asp:Button ID="Button30" runat="server" OnClick="Button30_Click" Text="See The Deposits" CssClass="auto-style27" />
                   </strong></em>
                   </td>
          <td class="auto-style21">
              <em><strong>
              <asp:Button ID="Button18" runat="server" Text="Change Home Address" OnClick="Button18_Click" Height="33px" CssClass="auto-style28" />
                   </strong></em>
                   </td>
          <td><asp:Button ID="Button22" runat="server" Text="POST FeedBack" Width="160px" OnClick="Button22_Click" CssClass="auto-style30" />
                   </td>
          <td><asp:Button ID="Button26" runat="server" Text="Deactivate Current Debit Card" Width="223px" OnClick="Button26_Click" CssClass="auto-style31" />
                   </td>
          <td>
              <em><strong>
              <asp:Button ID="Button34" runat="server" Text="Mini Statement" CssClass="auto-style32" OnClick="Button34_Click" />
                   </strong></em>
                   </td>
      </tr>
                <tr>
           <td class ="auto-style18">
               <em><strong>
               <asp:Button ID="Button4" runat="server" Height="37px" OnClick="Button4_Click" Text="Addresss" Width="119px" CssClass="auto-style24" />
                    </strong></em>&nbsp;
                    </td>
          <td class="auto-style43">
              <em><strong>
              <asp:Button ID="Button11" runat="server" Height="47px" Text="Modify Payee" Width="129px" OnClick="Button11_Click" CssClass="auto-style25" />
                    </strong></em>
                    </td>
          <td class="auto-style12">
              <em><strong>
              <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="GOLD LOAN" Width="109px" CssClass="auto-style26" />
                    </strong></em>
                    </td>
          <td class="auto-style16"><a href="WebForm1.aspx"> 
              <em><strong> 
              <asp:Button ID="Button31" runat="server" OnClick="Button31_Click" Text="Close The Deposits" CssClass="auto-style27" />
              </strong></em>&nbsp;</td>
          <td class="auto-style20">
              <em><strong>
              <asp:Button ID="Button19" runat="server" Text="Change mobile number" OnClick="Button19_Click" CssClass="auto-style28" />
                    </strong></em>
                    </td>
          <td class="auto-style6"><a href="WebForm1.aspx"> <asp:Button ID="Button23" runat="server" Text="Raise A Dispute" OnClick="Button23_Click" CssClass="auto-style30" />
                    </td>
          <td class="auto-style6"><asp:Button ID="Button27" runat="server" Text="Deactivate Current Credit Card" Width="164px" OnClick="Button27_Click" CssClass="auto-style31" />
                    </td>
          <td class="auto-style6">
              <em><strong>
              <asp:Button ID="Button35" runat="server" Text="Mobile Banking  " CssClass="auto-style32" OnClick="Button35_Click" />
                    </strong></em>
                    </tr>

           </table>
        </div>
    </form>
</body>
</html>