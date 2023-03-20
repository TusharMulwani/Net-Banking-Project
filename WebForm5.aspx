<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Banking_website.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>TM BANK</title>
    <style type="text/css">
        *{
           
        }
     .h1{
         font-family:Constantia;
         background: radial-gradient(blue ,green);
         color: white;

     }   
            .io{
  float: left;
  width: 25%;
  padding: 20px;
}
            .io:after {
  content: "";
  display: table;
  clear: both;
}
    @media screen and (max-width:600px) {
            .io {
                width: 100%;
            }
        }    
        .a{
            text-decoration: none;
        }
        .a:hover{
            background-color: springgreen;
            
        }
       
        .auto-style2 {
            width: 172px;
            height: 56px;
            color: violet;
            background-color:brown;
            text-decoration:none;
        }
        .auto-style2:hover{
            background-color: orange;
        }
        .auto-style3 {
            width: 164px;
            height: 56px;
        }
        .auto-style4 {
            width: 153px;
            height: 56px;
            background: red;
        }
        .auto-style5 {
            width: 153px;
            height: 56px;
            background: yellow;
        }
        .auto-style8 {
            background-image: url('src(%22E:\images\sav.jpg%22)');
            background-color: khaki;
            height: 56px;
            color:indigo;
        }
        .auto-style8:hover{
            background-color:gold;
        }
        .auto-style9 {
            height: 56px;
            background-color: forestgreen;
            color: white;
        }
        .auto-style9:hover{
            background-color: brown;
        }
        .auto-style17 {
            width: 153px;
            height: 56px;
             background-color: palevioletred;
            color: white;
        }
         .auto-style17:hover{
             background-color: forestgreen;
         }  @keyframes a1 {
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
        .auto-style12 {
            width: 1300px;
            height: 38px;
            animation-name: a1;
            animation-duration: 5s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            font-size:x-large;
        }
        .auto-style13 {
            height: 83px;
        }
        .auto-style0 {
            height: 83px;
            color: wheat;
            background-color:green;
        }
        .auto-style0:hover{
            background-color: aqua;
        }
        .ab{
             height: 83px;
            color: yellow;
            background-color:green;
        }
        .ab:hover{
            background-color:darkblue;
        }
        .p{
            background-color:darkblue;
            color:darkorange;
        }
        </style>

</head>
<body style="height: 639px">
    <form id="form" runat="server">
            
              <h1 style="font-family:sans-serif ; text-align:center; background:PURPLE;color:white;text-shadow:3px 3px 4px GREEN"> TM BANK ACCOUNT</h1>

            <p class="a10" style="font-family:sans-serif ; text-align:center; background:yellow;color:red;text-shadow:3px 3px 4px GREEN"> <strong><span class="auto-style12">PRODUCTS AVAILABLE FOR TM BANK ACCOUNT HOLDERS</span></strong></p>
          
 
               
               
        

           <table class ="M"> 
     <tr>    <th class="auto-style8">&nbsp;<a href="WebForm1.aspx">SAVINGS ACCOUNT </a> </th>
        <th class="auto-style9"><a href="lockers.aspx">LOCKERS FACILITY</a></th>
        <th class="auto-style17"><a href="current_account.aspx">CURRENT ACCOUNT</a></th>
        <th class="auto-style2"><a href="homeloan.aspx">HOME LOAN</a></th>
        <th class="ab"><a href="Login.aspx">MONEY TRANSFER&nbsp;</a> </th>
        <th class="auto-style4"><a href="GoldLoanaspx.aspx">GOLD LOANS</a></th>
         <th class="auto-style5"><a href="carloan.aspx">CAR LOANS</a></th>
        <th class="auto-style0" rowspan="1" tabindex="52"><a href="credit_card.aspx">CREDIT CARD </a></th>
         <th class="p" rowspan="1" tabindex="52"><a href="business_current.aspx">Business Loan </a> </th>

     </tr>

           </table>

        <p class ="auto-style11">Dear User Kindly Do not disclose your OTP or CVV or other type of confidential information to any unknown person(even banking personnel). </p>

       
      
        
            

       
      <div class ="auto-style13">

    
        
    <div class="io" style ="background:radial-gradient(yellow ,green); color:white; ">
     <strong style ="color:firebrick"> NET BANKING </strong><br /><br /><br />
     
       <i > Already a Customer :</i><a href ="Login1.aspx" target ="_blank"><em>Log In</em></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <br /> <br /><br /><br />&nbsp;<i>New Customer :</i><a href ="signup.aspx" target ="_blank"><em>Sign Up</em></a>
  
        </div><div class ="io" style ="font-family:Bahnschrift; color:darkgreen ;background:radial-gradient(pink ,purple);  white-space:normal; text-shadow:2px 2px 5px red">
             <b>Dear User Welcome to our Renowned TM BANK , Here We Provide A Good Number Of Products To Our Customers.
                We Have more than 10 years of experience in the banking industry . We try to delivery  all the requests of Our Client in minimum period of time.
                We Have won good Number Of rewards in Our Field. Customer Feedback as per our record are more than 90% positive. We are trying to provide best No. Of Service to our clients.</b>
            
              </div>
        <div class="io" >

       
            <video width ="320" height="240" autoplay muted>
                <source src ="Resources/Money%20-%2050292.mp4"  type ="video/mp4" />

            </video>
         </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
          <div>
              <h4 style="font-family:sans-serif ;text-align: center; color:coral; background-color: purple ;text-shadow: 3px 3px 4px green"> For   Any  Queries ,  Call US on :02593355 or Mail us at: TM@gmail.com</h4>
          </div>
          <br /><br /><h5 style="font-family:sans-serif ;text-align: center; color:white; background-color: firebrick ;text-shadow: 3px 3px 4px green">THANKS FOR VISITING</h5> 
         

       </div>  
      
       
            

       
      
        
    </form>
    </body>
</html>