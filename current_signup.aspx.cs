using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Banking_website
{
    public partial class current_signup : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conS = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int l = int.Parse(TextBox1.Text);

            con = new SqlConnection(conS);
            con.Open();

            cmd = new SqlCommand("insert into current_Signup values(@a,@b,@c)", con);
            cmd.Parameters.AddWithValue("@a", l);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", TextBox3.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('thank you for submitting your records');window.location='current_signup.aspx';</script>");



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('thank you for visitng our page , we are redirecting you to the home page');window.location='Home.aspx';</script>");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button4.Visible = true;
            Button5.Visible = true;
            Label1.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('WE are redirecting you to the login page');window.location='Current_login.aspx';</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Dear User 1st We have to signup then only we can login');window.location='current_signup.aspx';</script>");

        }
    }
}