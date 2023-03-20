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
    public partial class Current_login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        string conStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string b1 = TextBox1.Text;
            string b2 = TextBox2.Text;
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOINC where passwords = @a and username = @b", con);
            cmd.Parameters.AddWithValue("@a", b2);
            cmd.Parameters.AddWithValue("@b", b1);

            dr = cmd.ExecuteReader();


            while (dr.Read())
            {


                string l = dr["ACType"].ToString();
                HttpCookie m2 = new HttpCookie("d");
                m2.Values["o"] = dr["mobile_no"].ToString();
                m2.Values["m"] = l;

                m2.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m2);
                Response.Redirect("current_savings.aspx");


            }

            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();
                    Response.Write("<script>alert('kindly verify  your records');window.location='Current_Login.aspx';</script>");


                

            }
        

        protected void Button3_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOINC where mobile_no = @a", con);
            cmd.Parameters.AddWithValue("@a", int.Parse(TextBox3.Text));
            dr = cmd.ExecuteReader();
            Boolean o = dr.HasRows;
            if (o == true) {
                Label1.Visible = true;
                Label2.Visible = true;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                Button1.Visible = true;
            }
            else {
                ds = new DataSet();
                da = new SqlDataAdapter("insert into JOINC(PAN_no, name , addresses , Company_name, DOB, mobile_no, nominee_name, ACType, Cheq_req, SMS_Services, AccountNO, username, passwords) SELECT current_Confi2.PAN_no , current_Confi2.name, current_Confi2.addresses, current_Confi2.Company_name, current_Confi2.DOB, current_Confi2.mobile_no, current_Confi2.nominee_name, current_Confi2.ACType, current_Confi2.cheq_req, current_Confi2.SMS_Services, current_Confi2.AccountNO, current_signup.username, current_signup.passwords from current_Confi2, current_signup where current_Confi2.mobile_no = current_signup.mobile_no", conStr);
                da.Fill(ds);
                Label1.Visible = true;
                Label2.Visible = true;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                Button1.Visible = true;
            }
            dr.Close();
            cmd.ExecuteReader();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('thank you for visitng our page , we are redirecting you to the home page');window.location='Home.aspx';</script>");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string b1 = TextBox1.Text;
            string b2 = TextBox2.Text;
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from current_signup where username = @a and passwords = @b ", con);
            cmd.Parameters.AddWithValue("@a", b1);
            cmd.Parameters.AddWithValue("@b", b2);


            dr = cmd.ExecuteReader();


            if (dr.Read())
            {

                string lk = dr["mobile_no"].ToString();




                HttpCookie m2 = new HttpCookie("d");
                m2.Values["o"] = lk;

                m2.Values["j"] = "current";
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
