<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="current_savings.aspx.cs" Inherits="Banking_website.current_savings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href ="sav.css"  type ="text/css" rel ="stylesheet"   />
    <style type="text/css">
        body{
            background-color:lightcoral;
        }
        .auto-style1 {
            height: 921px;
        }
        .auto-style2 {
            color: #0000FF;
        }
        .M{border:1px solid black;

        }
        .auto-style4 {
            text-align: center;
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
            width: 662px;
        }
        .auto-style11 {
            height: 48px;
            width: 662px;
        }
        .auto-style12 {
            height: 60px;
            width: 662px;
        }
        .auto-style14 {
            width: 197px;
        }
        .auto-style15 {
            height: 48px;
            width: 197px;
        }
        .auto-style16 {
            height: 60px;
            width: 197px;
        }
        .auto-style17 {
            height: 48px;
            width: 307px;
        }
        .auto-style18 {
            height: 60px;
            width: 307px;
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
            height: 66px;
            margin-top: 0px;
        }
       .asp:Button {
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
            width: 307px;
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
        .auto-style32 {
            font-weight: bold;
            color: #0066CC;
            background-color: #990000;
        }
        .auto-style33 {
            color: #FF6666;
            background-color: #00FF00;
        }
        .auto-style34 {
            color: #CCFFFF;
            background-color: #FF0000;
        }
        .auto-style36 {
            text-decoration : none;
            font-family: Bahnschrift;
            width: 307px;
            color: white;
        }
        .auto-style37 {
            text-decoration : none;
            font-family: Bahnschrift;
            width: 662px;
            color: white;
        }
        .auto-style38 {
            text-decoration : none;
            font-family: Bahnschrift;
            width: 197px;
            color: white;
        }
        .auto-style39 {
            text-decoration : none;
            font-family: Bahnschrift;
            width: 252px;
            color: white;
        }
        .auto-style40 {
            width: 252px;
        }
        .auto-style41 {
            height: 48px;
            width: 252px;
        }
        .auto-style42 {
            height: 60px;
            width: 252px;
        }
        .auto-style49 {
            color: #333300;
            background-color: #FFFFFF;
        }
        .auto-style48 {
            font-weight: bold;
            color: #0033CC;
            background-color: #FF6600;
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
      
        .auto-style50 {
            text-decoration : none;
            font-family: Bahnschrift;
            width: 228px;
            color: white;
        }
        .auto-style51 {
            width: 228px;
        }
        .auto-style52 {
            height: 48px;
            width: 228px;
        }
        .auto-style53 {
            height: 60px;
            width: 228px;
        }
      
        .auto-style54 {
            text-decoration : none;
            font-family: Bahnschrift;
            color: white;
        }
      
        </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" contenteditable="false">
            <h1 class="auto-style4">&nbsp;<em class="newStyle1">CURRENT ACCOUNT DASHBOARD</em></h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /><div class ="a">

             <div class ="auto-style22">    
&nbsp;&nbsp; HELLO&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em><strong>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Account Number" Height="25px"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:Button ID="Button36" runat="server" OnClick="Button36_Click" Text="ADD MONEY" Width="104px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </em>  
                 <asp:Button ID="Button39" runat="server" OnClick="Button39_Click" Text="Log out" />
                </div> <div class ="c"><video width ="70" height="50" autoplay muted>
                <source src ="Resources/Money%20-%2050292.mp4" type ="video/mp4" /></div>
                </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label6" runat="server" CssClass="auto-style49" Text="Label"></asp:Label>
            <asp:Button ID="Button38" runat="server" CssClass="auto-style48" OnClick="Button38_Click" Text="Button" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Button ID="Button37" runat="server" CssClass="auto-style45" OnClick="Button37_Click" Text="Account balance" Width="180px" Height="24px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" CssClass="auto-style46" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong> 
            <asp:TextBox ID="bal" runat="server"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" BorderColor="#990000" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Names="Consolas" Text="Label" ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="a" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" BorderColor="#990000" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Names="Consolas" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button28" runat="server" OnClick="Button28_Click" CssClass="auto-style33" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="TM" runat="server" OnClick="TM_Click" style="height: 29px" CssClass="auto-style34" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp
           <table class ="M"> 
     <tr>    <th class="auto-style8"> Personal Details  </th>
        <th class="auto-style8">FUND TRANSFER</th>
        <th class="auto-style8">LOANS AVAILED</th>
        <th class="auto-style8"> DEPOSITS</th>
        <th class="auto-style8">SETTINGS </th>
        <th class="auto-style8">CUSTOMER SERVICE</th>
        <th class="auto-style54" rowspan="1" tabindex="52">&nbsp;</th>
          <th class="auto-style8" rowspan="1" tabindex="52">OTHER SERVICES</th>
     

     </tr>
      <tr>
          <td class ="auto-style23" >
              <em><strong>
              <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click1" Text="FIRM NAME" Width="130px" CssClass="auto-style24" />
              </strong></em>&nbsp;
          </td>
          <td class="auto-style51">&nbsp;<em><strong><asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="New Payee" Width="142px" CssClass="auto-style25" />
              </strong></em>&nbsp;</td>
          <td class="auto-style10">
               <em><strong>
               <asp:Button ID="Button9" runat="server" Text="BUSINESS" OnClick="Button9_Click" Width="108px" CssClass="auto-style26" />
                    </strong></em>
                    </td>
          <td class="auto-style14">
              <em><strong>
              <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Deposits against loan" Width="212px" CssClass="auto-style27" />
              </strong></em>
          </td>
          <td class="auto-style21"><a href="WebForm1.aspx"> 
              <em><strong> 
              <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="Change Firm Name" CssClass="auto-style28" />
              </strong></em>
          </td>
          <td class="auto-style40"><asp:Button ID="Button20" runat="server" Text="Raise A Complaint" OnClick="Button20_Click" Width="140px" CssClass="auto-style30" />
          </td>
          <td>&nbsp;</td>
          <td>
              <em><strong>
              <asp:Button ID="Button32" runat="server" Height="46px" OnClick="Button32_Click" Text="BHIM UPI ACTIVATION" Width="199px" CssClass="auto-style32" />
              </strong></em>
          </td>
          </tr>
               <tr>
          
           <td class ="auto-style17">
               <em><strong>
               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Nominee  Name" Width="126px" CssClass="auto-style24" />
                   </strong></em>
                   </td>
          <td class="auto-style52">
              <em><strong>
              <asp:Button ID="Button5" runat="server" Height="32px" OnClick="Button5_Click" Text="registered payee " Width="140px" CssClass="auto-style25" />
                   </strong></em>
                   </td>
          <td class="auto-style11">
               <em><strong>
               <asp:Button ID="Button8" runat="server" Text="VEHICLE LOAN" OnClick="Button8_Click" Width="128px" CssClass="auto-style26" />
                   </strong></em>
                   </td>
          <td class="auto-style15"><a href="WebForm1.aspx"> 
              <em><strong> 
              <asp:Button ID="Button29" runat="server" OnClick="Button29_Click" Text="Deposits For Inteerest" CssClass="auto-style27" />
                   </strong></em>
                   </td>
          <td class="auto-style19">
              <em><strong>
              <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Change properitor name" CssClass="auto-style28" />
                   </strong></em>
                   </td>
           <td class="auto-style41"><asp:Button ID="Button21" runat="server" Text="Refer A Friend" OnClick="Button21_Click" CssClass="auto-style30" />
                   </td>
          <td class="auto-style5">&nbsp;</td>
          <td class="auto-style5"><a href="WebForm1.aspx">&nbsp;</a><em><strong><asp:Button ID="Button33" runat="server" OnClick="Button33_Click" Text="new cheq book" CssClass="auto-style32" Height="38px" />
                   </strong></em>
                   </td></tr>
               <tr>
           <td class ="auto-style36">
               <em><strong>
               <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="35px" OnClick="Button3_Click" Text="Mobile Number" Width="131px" />
                   </strong></em>
                   </td>
          <td class="auto-style51">
              <em><strong>
              <asp:Button ID="Button10" runat="server" Height="35px" Text="Delete Payee" Width="129px" OnClick="Button10_Click" CssClass="auto-style25" />
                   </strong></em>
                   </td>
          <td class="auto-style10">
               <em><strong>
               <asp:Button ID="Button7" runat="server" Text="Personal" OnClick="Button7_Click" Width="105px" CssClass="auto-style26" />
                   </strong></em>
                   </td>
          <td class="auto-style14">
              <em><strong>
              <asp:Button ID="Button30" runat="server" OnClick="Button30_Click" Text="See The Deposits" CssClass="auto-style27" />
                   </strong></em>
                   </td>
          <td class="auto-style21">
              <em><strong>
              <asp:Button ID="Button18" runat="server" Text="Change FIRM's Address" OnClick="Button18_Click" Height="34px" CssClass="auto-style28" />
                   </strong></em>
                   </td>
          <td class="auto-style40"><asp:Button ID="Button22" runat="server" Text="POST FeedBack" Width="160px" OnClick="Button22_Click" CssClass="auto-style30" />
                   </td>
          <td>&nbsp;</td>
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
          <td class="auto-style53">
              <em><strong>
              <asp:Button ID="Button11" runat="server" Height="47px" Text="Modify Payee" Width="129px" OnClick="Button11_Click" CssClass="auto-style25" />
                    </strong></em>
                    </td>
          <td class="auto-style12">
              <em><strong>
              <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Property Loan" Width="109px" CssClass="auto-style26" />
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
          <td class="auto-style42"><a href="WebForm1.aspx"> <asp:Button ID="Button23" runat="server" Text="Raise A Dispute" OnClick="Button23_Click" CssClass="auto-style30" />
                    </td>
          <td class="auto-style6">&nbsp;</td>
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