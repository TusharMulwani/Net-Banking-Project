using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banking_website
{
    public partial class Login4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button4.Visible = false;
                Button5.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;
                Label1.Visible = false;

                Label4.Visible = false;




            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = true;
            Label1.Visible = true;
            Button1.Text = "Savings Login";

            Button2.Text = "Current Login";

           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
            string a = Button1.Text;
            switch (a)
            {
                case "Savings":
                    Response.Write("<script>alert('thanks for showing your interest we are directing you to the account opening page '); window.location='WebForm1.aspx'</script>");
                    break;
                case "Savings Login":
                    Response.Write("<script>alert('For Credentials Verification we are directing you to the login page '); window.location='logi.aspx'</script>");
                    break;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string h = Button2.Text;
            switch (h)
            {
                case "Current Login":
                    Response.Write("<script>alert('For Credentials Verification we are directing you to the login page '); window.location='Current_login.aspx'</script>");
                    break;
                case "Current":
                    Response.Write("<script>alert('thanks for showing your interest we are directing you to the account opening page '); window.location='WebForm1.aspx'</script>");
                    break;
            }
            
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks For Visiting .we are redirecting you to the home page '); window.location='Home.aspx'</script>");

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label4.Visible = true;
            Label4.Text = " Do you want to open an account here";
            Button4.Visible = true;
            Button5.Visible = true;
            Button4.Text = "Yes";
            Button5.Text = "No";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = true;
            Button1.Text = "Savings";
            Button2.Text = "Current";


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks For Visiting .we are redirecting you to the home page '); window.location='WebForm5.aspx'</script>");

        }
    }
}