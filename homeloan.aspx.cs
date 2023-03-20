using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banking_website
{
    public partial class homeloan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox1.Text);
            int b = int.Parse(TextBox2.Text);
            int c = int.Parse(TextBox3.Text);
            int l = c * 90 / 100;

            if (l >= a)
            {
                double r = 6.5 / (12 * 100);
                double t = b * 12;
                double emi = (a * r * (float)Math.Pow(1 + r, t)) / (float)(Math.Pow(1 + r, t) - 1);
                Label1.Visible = true;
                string y = emi.ToString();
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
                Label1.Text = "Your EMI  Per Month would be : " + y;


            }
            else
            {
                Response.Write("<script>alert('your loan amount cant be greater than 90% of collateral value');window.location='homeloan.aspx';</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks For Visiting '); window.location='Home.aspx'</script>");
        }
    }
}