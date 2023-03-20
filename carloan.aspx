<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carloan.aspx.cs" Inherits="Banking_website.carloan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href ="loan.aspx"  type ="text/css" rel ="stylesheet"   />
    <meta name ="viewport" content ="width = 20%, initial-scale=1" />
    <meta content="text/html;charset =iso-8859-2" http-equiv="content-type"/>
    <style>
        body{
            background-color:burlywood;
        }
        h1{
    position:relative;</body>mlm 
    color:white;

    text-align: center;
    background-image:repeating-radial-gradient(white,red 10%,orange 15%);
}
        h3{
            text-shadow: 3PX 1PX YELLOW;
            color:red;

            text-decoration: underline overline dotted GREEN;

        }
        footer{
            text-align:center;
            color: orange;
            font-family:Constantia;
            border:dotted 2PX GREEN;
        }
        .auto-style1 {
            height: 959px;
            width: 1404px;
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
  
} .auto-style9{
      height:55%;
      padding : 14px 24px;
      margin:10px 20px;
      border:solid 1px black;
      position:relative;
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
        font-weight: 700;
        animation-duration: 5s;
        animation-iteration-count: infinite;
        animation-direction: alternate;
        animation-timing-function: linear;
        top: 0px;
        left: 0px;
    }
    50% {
        background-color: chartreuse;
        font-family: Calibri;
        font-weight: 700;
        animation-duration: 5s;
        animation-iteration-count: infinite;
        animation-direction: alternate;
        animation-timing-function: linear;
        top: 0px;
        left: 0px;
    }
    75% {
        background-color: yellow;
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
 
         .auto-style11 {
            width: 1300px;
            height: 38px;
            animation-name: a1;
            animation-duration: 5s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
        }
    .auto-style9:hover{
        background:pink;
    }
    .M{
        border:solid 1PX dotted;
    }
        .auto-style12 {
            color: #FF0000;
            font-size: medium;
        }
        .auto-style13 {
            background-color: #990099;
        }
        .auto-style14 {
            background-color: #9900CC;
        }
        .auto-style15 {
            color: #FFFFFF;
        }
        .auto-style16 {
            background-color: #006600;
        }
        .auto-style17 {
            font-weight: bold;
            color: #000099;
            font-size: medium;
        }
        .auto-style18 {
            color: #00FFCC;
            font-size: medium;
            background-color: #FF0000;
        }
        .auto-style19 {
            color: #FFFFFF;
            font-size: large;
            background-color:brown;
        }
        </style>
</head>
<body style="width: 1407px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="padding:10px; text-align:center ;background-color:chartreuse"> <strong>WELCOME TO OUR CAR LOAN FACILITY</strong></h1><br />
            
             <h2 class ="auto-style11" style="padding:10px; background-color:bisque;text-align:center; color:darkgreen;"><strong>CAR LOAN @ 7.5% </strong> </h2> <br/>
             <p class ="m1">&nbsp;&nbsp;&nbsp;&nbsp;<img  class="a9" style="width:100%" src="Resources/c1.png" /> <img class ="a9" style="width:100%" src="Resources/c2.jpg" /><img class="a9" style="width:100%"  src="Resources/c3.jpg" /><img  class="a9" style="width:100%" src="Resources/c4.png" /><img  class="a9" style="width:100%" src="Resources/c5.png" /></p>
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

                }




            </script>
            <h2 style="padding:10px; text-align:center;background-color:cornsilk; color:darkmagenta; text-wrap:inherit"><strong> We offer following benefits to our customers</strong></h2>
            <br />
           <table class ="M" style="size"> 
     <tr>    <th class="auto-style9"style =" color:crimson; background:yellow">AVAIL 1st year Free car Insurance </th>
        <th class="auto-style9" style =" color:crimson; background:yellow">LOAN WITHIN 24 HRS</th>
        <th class="auto-style9"style =" color:crimson; background:yellow">ONLINE EMI PAYMENT</th>
        <th class="auto-style9"style =" color:crimson; background:yellow">RS 2000 gift vouchers </th>
        <th class="auto-style9"style =" color:crimson; background:yellow">24*7 Customer support </th>
        <th class="auto-style9"style =" color:crimson; background:yellow">attractive loan rates</th>
        <th class="auto-style9" style =" color:crimson; background:yellow">Easy loan disbursment</th>
     </tr>

           </table>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <span class="auto-style15"><strong><em class="auto-style16">EMI&nbsp;&nbsp;&nbsp; CALCULAOR</em></strong></span><br />
            <br />
            <span class="auto-style12"><strong><em>LOAN AMOUNT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TIME PERIOD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COLLATERAL VALUE</em></strong></span><br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style13" ForeColor="White" ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style14" ForeColor="White"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style14" ForeColor="White"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CALCULATE" CssClass="auto-style17" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style18"></asp:Label>

           
            </strong>

           
            <br />
            <br />

           <h3>IF YOU ARE INTERESTED IN OUR CAR LOAN FACILITY KINDLY <a href ="loan_query.aspx"> CLICK HERE</a></h3>
            <footer class="auto-style19"> <strong>THANKS FOR VISITING</strong></footer>
            </div>
    </form>
</body>
</html>
