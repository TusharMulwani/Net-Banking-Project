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
    public partial class FD : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList3.Items.Add("Auto Renewal");
                DropDownList3.Items.Add("closure on maturity");
                DropDownList3.Items.Add("close interest amount and renew the principal");
               
                //string k5 = Request.Cookies["d"].Values["t"];

                //Label11.Text = "to book your  "  +k5+ "  kindly fill the required details";
                Label12.Visible = false;
                //string m = Request.Cookies["d"].Values["s"];
               // int l = int.Parse(m);
                if ( Request.Cookies["d"].Values["j"] == "saving")
                {
                    con = new SqlConnection(conSt);
                    con.Open();
                    cmd = new SqlCommand("select *  from JOIN2 where mob = @a", con);
                    cmd.Parameters.AddWithValue("@a", l);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string li = dr["name"].ToString();
                        string di = dr["accno"].ToString();
                        string dk = dr["nominee"].ToString();
                        TextBox5.Text = dk;
                        TextBox2.Text = di;
                        TextBox1.Text = li;


                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                else
                {
                    con = new SqlConnection(conSt);
                    con.Open();
                    cmd = new SqlCommand("select *  from JOINC where mobile_no = @a", con);
                    cmd.Parameters.AddWithValue("@a", l);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string li = dr["name"].ToString();
                        string di = dr["AccountNO"].ToString();
                        string dk = dr["nominee_name"].ToString();
                        TextBox5.Text = dk;
                        TextBox2.Text = di;
                        TextBox1.Text = li;


                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string k1 = Request.Cookies["d"].Values["o"];
            string k2 = Request.Cookies["d"].Values["p"];
            string k3 = Request.Cookies["d"].Values["q"];
            string k5 = Request.Cookies["d"].Values["r"];
            string k9 = Request.Cookies["d"].Values["s"];
            string k51 = Request.Cookies["d"].Values["t"];
            string k52 = Request.Cookies["d"].Values["j"];


            int l2 = int.Parse(TextBox4.Text);
            int pi = int.Parse(k3);
            string lo = DropDownList3.SelectedItem + "";
            int lp = int.Parse(TextBox6.Text);
            double o;
            int r = int.Parse(TextBox4.Text);


            if (lp <= 6)
            {
                o = 4.5;
            }
            else if (lp > 6 & lp <= 10)
            {
                o = 6;
            }
            else
            {
                o = 7;
            }
            double k = (r * o * lp) / 100;
            int u = pi + 550+r;

            double j = k + r;
            con = new SqlConnection(conSt);
            con.Open();
           
            

           
            cmd = new SqlCommand("insert into FDRD values (@a,@b,@c,@d,@e,@f,@g,@h,@i,@j ,@k,@l) ", con);
            cmd.Parameters.AddWithValue("@a",int.Parse( k9));
            cmd.Parameters.AddWithValue("@b",k1);
            cmd.Parameters.AddWithValue("@c", k2);
            cmd.Parameters.AddWithValue("@d", pi);
            cmd.Parameters.AddWithValue("@e",lp);
            cmd.Parameters.AddWithValue("@f", r);
            cmd.Parameters.AddWithValue("@g", TextBox5.Text);
            cmd.Parameters.AddWithValue("@h", lo);
            cmd.Parameters.AddWithValue("@i", o);
            cmd.Parameters.AddWithValue("@j",j);
            cmd.Parameters.AddWithValue("@k", u);
            cmd.Parameters.AddWithValue("@l", k52);



            cmd.ExecuteNonQuery();
            con.Close();
            Label12.Visible = true;
            Label12.Text = "Thanks For Booking  " + k51 + "  for the time period of " + lp + "months. Maturity amount of the following depsit is : Rs" + j;

            if (k51 =="Fixed Deposits") {
                Response.Write("<script>alert('Thanks For Booking FD with us. '); window.location='FD.aspx'</script>");
            }
            else if(k51 == "Deposits against loan")
            {
                Response.Write("<script>alert('Thanks For Booking Deposit against Loan with us. '); window.location='FD.aspx'</script>");
            }
            else if (k51 == "Deposits For Interest")
            {
                Response.Write("<script>alert('Thanks For Booking Deposit against Loan with us. '); window.location='FD.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Thanks For Booking RD with us. '); window.location='FD.aspx'</script>");

            }
            
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string k52 = Request.Cookies["d"].Values["j"];
            if (k52 == "saving") {
                Response.Write("<script>alert('Thanks For visiting '); window.location='logi.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Thanks For visiting '); window.location='Current_login.aspx'</script>");
            }
            

        }
    }
}