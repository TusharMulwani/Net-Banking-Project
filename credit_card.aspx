<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="credit_card.aspx.cs" Inherits="Banking_website.credit_card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href ="lockers.aspx"  type ="text/css" rel ="stylesheet"   />
    <meta name ="viewport" content ="width = 20%, initial-scale=1" />
    <meta content="text/html;charset =iso-8859-2" http-equiv="content-type"/>
    <style>
        *{
            background-color:aqua;
        }
  .a9{ position:center;
        position:relative;
         display:none;}
  .m1 {
      
    height: 20%;
    font-size: medium;
    color: midnightblue;
    width: 20%;
    top: 200px;
    left: 300px;
    right:100px;
    
    display:block;
    z-index: 1;
    box-sizing: border-box;
    background-color: navajowhite;
  
} .b{
  float: left;
  width: 50%;
  padding:20px;
  display:block;
}
  .b2{
      text-align: center;
      padding:10px;
  }
            .b:after {
  content: "";
  display: table;
  clear: both;
}
        @media screen and (max-width:600px) {
            .b {
                width: 100%;
            }
        }
                                                                            
        .auto-style1 {
            height: 60%;
            font-size: medium;
            color: midnightblue;
            width: 78%;
            top: 100px;
            left: 200px;
            right: 120px;
            display: block;
            z-index: 1;
            box-sizing: border-box;
            background-color: navajowhite;
        }
                                                                            
        .auto-style2 {
            float: left;
            width: 26%;
            padding: 20px;
        }
                                                                            
        .auto-style3 {
            float: left;
            width: 28%;
            padding: 20px;
        }
                                                                            
        .auto-style4 {
            float: left;
            width: 44%;
            padding: 20px;
            position:fixed;
            text-align: left;
        } 
        @keyframes a1{
            0% {
                background-color: aquamarine;
                font-family: Calibri;
                font-weight: 700;
                animation-duration: 5s;
                animation-iteration-count: infinite;
                animation-direction: alternate;
                animation-timing-function: linear;
                top: 0px;
                left: 0px;
            }

            25% {
                font-family: Calibri;
                background-color: yellow;
                font-family: Calibri;
                font-weight: 700;
                animation-duration: 5s;
                animation-iteration-count: infinite;
                animation-direction: alternate;
                animation-timing-function: linear;
                top: 0px;
                left: 0px;
            }75%{
                 font-family: Calibri;
                background-color:pink;
                font-family: Calibri;
                font-weight: 700;
                animation-duration: 5s;
                animation-iteration-count: infinite;
                animation-direction: alternate;
                animation-timing-function: linear;
                top: 0px;
                left: 0px;
             }

            100% {
                background-color: darkgoldenrod;
                font-family: Calibri;
                font-weight: 700;
                animation-duration: 5s;
                animation-iteration-count: infinite;
                animation-direction: alternate;
                animation-timing-function: linear;
                top: 0px;
                left: 0px;
            }
        }
        .h1{
            
            width: 1300px;
            height: 38px;
            animation-name: a1;
            animation-duration: 5s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            text-align: center;
            font-family:cursive;
            color:white;
        
        }
          
                                                                            
        .auto-style5 {
            margin-left: 921px;
        }
                                                                            
        .auto-style6 {
            margin-left: 952px;
        }
        .auto-style7 {
            margin-left: 951px;
        }
                                                                            
        .auto-style8 {
            text-align: center;
        }
                                                                            
        .auto-style9 {
            text-decoration: underline;
            color: #3333CC;
            background-color: #FF0000;
        }
                                                                            
  </style>
</head>
<body style="height: 798px">
    <form id="form1" runat="server">
        <div><h1 style ="text-align:center; font-family:sans-serif; color:white; background-color:orangered;text-shadow:4px 4px 6px green;">TM BANK CREDIT CARDS FACILITY</h1>
        <div class="a">
            <br />
            <br />
            <br /><div class="auto-style2">

            <asp:Label ID="Label1" runat="server" Text="Mobile Number"></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />

            <br />

            <br />

            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox> 
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Are You Interested"></asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            <br />
            <br />
            <br />
                <strong><em>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
                </em></strong>
            <br />

            <br />

            <asp:Button ID="Button2" runat="server" Text="Apply" OnClick="Button2_Click" />

            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Home" /></div>
            <div class="auto-style3"><p class ="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp; <img  class="a9" style="width:100%" src="Resources/crm.jpg" /> <img class ="a9" style="width:100%" src="Resources/crp.jpg" /><img class="a9" style="width:100%"  src="Resources/cr3.jpg" /> <img  class="a9" style="width:100%" src="Resources/cr.jpg" /></p>
            <script>var a = 0;
                ab();
                function ab() {

                    var m;
                    var x = document.getElementsByClassName("a9");
                    for (m = 0; m < x.length; m++) {
                        x[m].style.display = "none";
                    }
                    a++;
                    if (a > x.length) {
                        a = 1;
                    }
                    x[a - 1].style.display = "block";
                    setTimeout(ab, 3000);

                }</script></div></div> <br /><h2 style="background:radial-gradient(yellow,green); color:white;" class="auto-style5">    CREDIT   CARD     CHARGES  </h2>
            <ol > <li style="color:yellow;background-color:mediumpurple;text-shadow:2px 2px 4px green"class="auto-style6">PLATINUM:Rs400 P.A.</li>
                  <li style="color:purple;background-color:silver;text-shadow:2px 2px 4px black"class="auto-style7">SILVER:Rs600 P.A.</li>  
                <li style="color:white;background-color:gold;text-shadow:2px 2px 4px red"class="auto-style7">GOLD:Rs800 P.A.</li> 
            </ol>   
                       
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><div class ="auto-style4">
                <div class="auto-style8">
                    <br />
                </div>
                <h4 style ="font-family:Calibri; color:white; background-color:brown;text-shadow:2px 2px 4px red;font-size:medium;" class="auto-style8">Features Provided By Us On Credit Cards:</h4>
            <ol type ="circle" style ="text-align:center; font-family:sans-serif; color:white; background-color:darkviolet;text-shadow:3px 3px 4px yellow;">
                <li style ="text-align:center; font-family:sans-serif; color:white; background-color:purple;text-shadow:2px 2px 4px yellow;">fuel surcharge waiver</li>
                <li  style ="text-align:center; font-family:sans-serif; color:white; background-color:purple;text-shadow:2px 2px 4px yellow;">No Cost EMI</li>
                <li  style ="text-align:center; font-family:sans-serif; color:white; background-color:purple;text-shadow:2px 2px 4px yellow;">4 times free cash withdrawl from ATM</li>
                <li  style ="text-align:center; font-family:sans-serif; color:white; background-color:purple;text-shadow:2px 2px 4px yellow;"> Reward Points On Every Rs Spend</li>
                <li  style ="text-align:center; font-family:sans-serif; color:white; background-color:purple;text-shadow:2px 2px 4px yellow;"> Rs10 Lakh Accidental Insurance</li>
            </ol>
            </div>
            <br />
                   
           
                                
        
            </div>
    </form>
</body>
</html>
