using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banking_website
{
    public partial class loan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox1.Text);
            int b = int.Parse(TextBox4.Text);
            int c = int.Parse(TextBox5.Text);
            int l = c * 90 / 100;
           
            if (l >= a)
            {
                double r = 8 / 12 * 100;
                double t = b * 12;
                double emi = (a * r * (float)Math.Pow(1 + r, t) / (float)(Math.Pow(1 + r, t) - 1));
                Label6.Text = emi.ToString();

            }
            else
            {
                Response.Write("<script>alert('your loan amount cant be greater than 90% of collateral value');window.location='loan.aspx';</script>");
            }

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}