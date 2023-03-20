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
    public partial class Deposits : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label2.Visible = false;
                Button6.Visible = false;
                Button7.Visible = false;

                string s1 = Request.Cookies["d"].Values["p"];
                string s2 = Request.Cookies["d"].Values["s"];
                string s3 = Request.Cookies["d"].Values["j"];

                Label1.Text = "Hello " + s1 + "  Here are the deposits  details ";
                da = new SqlDataAdapter("select * from FDRD  where Mob_NO = @f and Account=@a", conSt);
                da.SelectCommand.Parameters.AddWithValue("@f", int.Parse(s2));
                da.SelectCommand.Parameters.AddWithValue("@a", s3);

                ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Button4.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
                Button7.Visible = false;
            }
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string s2 = Request.Cookies["d"].Values["j"];
            if (s2 == "current")
            {
                Label2.Visible = true;
                Label2.Text = "Which Deposits you would like to make";
                Button6.Visible = true;
                Button7.Visible = true;
                Button6.Text = "Fixed Deposits";
                Button7.Text = "Recurring Deposits";




            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Which Deposits you would like to make";
                Button6.Visible = true;
                Button7.Visible = true;
                Button6.Text = "Deposits against loan";
                Button7.Text = "Deposits For Interest";

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to the home page. '); </script>");
            string s2 = Request.Cookies["d"].Values["s"];
            HttpCookie m1 = new HttpCookie("d");
            m1.Values["o"] = s2;
           

            m1.Expires = DateTime.Now.AddSeconds(900);
            Response.Cookies.Add(m1);
            Response.Redirect("t9.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to the Deposits Closure Page. '); </script>");
            string s2 = Request.Cookies["d"].Values["s"];
            HttpCookie m1 = new HttpCookie("d");
            m1.Values["o"] = s2;


            m1.Expires = DateTime.Now.AddSeconds(900);
            Response.Cookies.Add(m1);
            Response.Redirect("Deposits_Closure.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

            Button4.Visible = true;
            Button5.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["s"];
            int l = int.Parse(m);
            con = new SqlConnection(conSt);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string k = dr["ACType"].ToString();
                string k5 = dr["name"].ToString();
                string k10 = dr["accno"].ToString();
                string k2 = dr["nominee"].ToString();
                string mo = dr["mob"].ToString();
                Response.Write("<script>alert('we are redirecting you to the new page  for Closing the RD'); </script>");

                HttpCookie m1 = new HttpCookie("d");
                m1.Values["o"] = k;
                m1.Values["p"] = k5;
                m1.Values["q"] = k10;
                m1.Values["r "] = k2;
                m1.Values["s"] = mo;
                m1.Values["t"] = "Recurring Deposits";


                m1.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m1);
                Response.Redirect("Deposits_Closure.aspx");
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["s"];
            int l = int.Parse(m);
            con = new SqlConnection(conSt);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string k = dr["ACType"].ToString();
                string k5 = dr["name"].ToString();
                string k10 = dr["accno"].ToString();
                string k2 = dr["nominee"].ToString();
                string mo = dr["mob"].ToString();
                Response.Write("<script>alert('we are redirecting you to the new page  for Closing the FD'); </script>");

                HttpCookie m1 = new HttpCookie("d");
                m1.Values["o"] = k;
                m1.Values["p"] = k5;
                m1.Values["q"] = k10;
                m1.Values["r "] = k2;
                m1.Values["s"] = mo;
                m1.Values["t"] = "Fixed Deposits";


                m1.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m1);
                Response.Redirect("Deposits_Closure.aspx");
            }
    }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string u = Button6.Text;
            switch (u)
            {
                case "Fixed Deposits":
                    string m = Request.Cookies["d"].Values["s"];
                    int l = int.Parse(m);
                    con = new SqlConnection(conSt);
                    con.Open();
                    cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
                    cmd.Parameters.AddWithValue("@a", l);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string k = dr["ACType"].ToString();
                        string k5 = dr["name"].ToString();
                        string k10 = dr["accno"].ToString();
                        string k2 = dr["nominee"].ToString();
                        string mo = dr["mob"].ToString();
                        Response.Write("<script>alert('we are redirecting you to the new page  for booking the FD'); </script>");

                        HttpCookie m1 = new HttpCookie("d");
                        m1.Values["o"] = k;
                        m1.Values["p"] = k5;
                        m1.Values["q"] = k10;
                        m1.Values["r "] = k2;
                        m1.Values["s"] = mo;
                        m1.Values["t"] = "Fixed Deposits";


                        m1.Expires = DateTime.Now.AddSeconds(900);
                        Response.Cookies.Add(m1);
                        Response.Redirect("FD.aspx");

                    }dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    break;
                case "Deposits against loan":
                    string mk = Request.Cookies["d"].Values["s"];
                    int l2 = int.Parse(mk);
                    con = new SqlConnection(conSt);
                    con.Open();
                    cmd = new SqlCommand("select * from JOINC  where mobile_no = @a", con);
                    cmd.Parameters.AddWithValue("@a", l2);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string k = dr["ACType"].ToString();
                        string k5 = dr["name"].ToString();
                        string k10 = dr["AccountNO"].ToString();
                        string k2 = dr["nominee_name"].ToString();
                        string mo = dr["mobile_no"].ToString();

                        HttpCookie m2 = new HttpCookie("d");
                        m2.Values["o"] = k;
                        m2.Values["p"] = k5;
                        m2.Values["q"] = k10;
                        m2.Values["r "] = k2;
                        m2.Values["s"] = mo;
                        m2.Values["t"] = "Deposits Against Loan";
                        m2.Values["j"] = "current";


                        m2.Expires = DateTime.Now.AddSeconds(900);
                        Response.Cookies.Add(m2);
                        Response.Redirect("FD.aspx");

                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    break;
            }
          
           

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string o = Button7.Text;
            switch (o)
            {
                case "Recurring Deposits":
                    string m = Request.Cookies["d"].Values["s"];
                    int l = int.Parse(m);
                    con = new SqlConnection(conSt);
                    con.Open();
                    cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
                    cmd.Parameters.AddWithValue("@a", l);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string k = dr["ACType"].ToString();
                        string k5 = dr["name"].ToString();
                        string k10 = dr["accno"].ToString();
                        string k2 = dr["nominee"].ToString();
                        string mo = dr["mob"].ToString();
                        Response.Write("<script>alert('we are redirecting you to the new page  for booking the RD'); </script>");

                        HttpCookie m1 = new HttpCookie("d");
                        m1.Values["o"] = k;
                        m1.Values["p"] = k5;
                        m1.Values["q"] = k10;
                        m1.Values["r "] = k2;
                        m1.Values["s"] = mo;
                        m1.Values["t"] = "Fixed Deposits";


                        m1.Expires = DateTime.Now.AddSeconds(900);
                        Response.Cookies.Add(m1);
                        Response.Redirect("FD.aspx");
                    }
                    break;

                case "Deposits For Inteerest":
                    string mk = Request.Cookies["d"].Values["s"];
                    int l2 = int.Parse(mk);
                    con = new SqlConnection(conSt);
                    con.Open();
                    cmd = new SqlCommand("select * from JOINC  where mobile_no = @a", con);
                    cmd.Parameters.AddWithValue("@a", l2);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string k = dr["ACType"].ToString();
                        string k5 = dr["name"].ToString();
                        string k10 = dr["AccountNO"].ToString();
                        string k2 = dr["nominee_name"].ToString();
                        string mo = dr["mobile_no"].ToString();

                        HttpCookie m2 = new HttpCookie("d");
                        m2.Values["o"] = k;
                        m2.Values["p"] = k5;
                        m2.Values["q"] = k10;
                        m2.Values["r "] = k2;
                        m2.Values["s"] = mo;
                        m2.Values["t"] = "Deposits For Inteerest";
                        m2.Values["j"] = "current";


                        m2.Expires = DateTime.Now.AddSeconds(900);
                        Response.Cookies.Add(m2);
                        Response.Redirect("FD.aspx");

                    }
                    break;
            }
            

        }
    }
}