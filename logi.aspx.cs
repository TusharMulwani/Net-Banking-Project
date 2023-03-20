using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Banking_website
{
    public partial class logi : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string b1 = a.Text;
            string b2 = TextBox2.Text;
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select mobile_no from signup where username = @a and passwords = @b ", con);
            cmd.Parameters.AddWithValue("@a", b1);
            cmd.Parameters.AddWithValue("@b", b2);


            dr = cmd.ExecuteReader();


            if (dr.Read())
            {

                string lk = dr["mobile_no"].ToString();




                HttpCookie m2 = new HttpCookie("d");
                m2.Values["o"] = lk;


                m2.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m2);
                Response.Redirect("t9.aspx");

            }

            else
            {
                Response.Write("<script>alert('kindly verify  your records');window.location='Login1.aspx';</script>");


            }
            dr = cmd.ExecuteReader();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks For Visiting .we are redirecting you to the home page '); window.location='WebForm5.aspx'</script>");

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
          
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string b1 = a.Text;
            string b2 = TextBox2.Text;
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from signup where username = @a and passwords = @b ", con);
            cmd.Parameters.AddWithValue("@a", b1);
            cmd.Parameters.AddWithValue("@b", b2);


            dr = cmd.ExecuteReader();


            if (dr.Read())
            {

                string lk = dr["mobile_no"].ToString();




                HttpCookie m2 = new HttpCookie("d");
                m2.Values["o"] = lk;
               
                m2.Values["j"] = "saving";
                m2.Values["i"] = "new";




                m2.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m2);
                Response.Redirect("WebForm6.aspx");

            }

            else
            {
                Response.Write("<script>alert('kindly verify  your records');window.location='Login1.aspx';</script>");


            }
            dr = cmd.ExecuteReader();
            con.Close();

        }
    }
    }
