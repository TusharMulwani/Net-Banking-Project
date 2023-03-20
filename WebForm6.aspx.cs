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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label8.Visible = false;
                string m = Request.Cookies["d"].Values["o"];
                string mk = Request.Cookies["d"].Values["j"];
                string o = Request.Cookies["d"].Values["i"];


                int k = int.Parse(m);
                con = new SqlConnection(conSt);
                con.Open();
                cmd = new SqlCommand("select * from payee2 WHERE mob_no = @k ", con);
                cmd.Parameters.AddWithValue("@k", k);
                dr = cmd.ExecuteReader();
                Boolean y = dr.HasRows;
                int u = dr.FieldCount;
                int a = 0;
                if (y == true)
                {
                    while (dr.Read())
                    {
                        string k1 = dr["nic_name"].ToString();
                        
                        while (a<u)
                        {
                            DropDownList1.Items.Add(k1);
                            a++;
                            break;

                        }




                    }

                }
                else
                {
                    
                    HttpCookie m2 = new HttpCookie("d");
                    m2.Values["o"] = k+"";

                    m2.Values["j"] = mk;
                    m2.Values["i"] = o;





                    m2.Expires = DateTime.Now.AddSeconds(900);
                    Response.Cookies.Add(m2);
                    Response.Redirect("WebForm9.aspx");
                    Response.Write("<script>alert('sorry no records found . we are redirecting you to the new page where  you can add new payee. '); window.location='WebForm9.aspx'</script>");

                }
                dr.Close();
                cmd.ExecuteNonQuery();
                con.Close();
            }

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["d"].Values["j"] == "saving") { Response.Write("<script>alert(' we are redirecting you to the home page '); window.location='t9.aspx'</script>"); }
            else
            {
                Response.Write("<script>alert(' we are redirecting you to the home page '); window.location='Current_login.aspx'</script>");
            }

                
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (Request.Cookies["d"].Values["j"] == "saving") {
                string m = Request.Cookies["d"].Values["o"];
                int k = int.Parse(m);

                string l = DropDownList1.SelectedItem + "";
                con = new SqlConnection(conSt);
                con.Open();
                cmd = new SqlCommand("select *  from payee2 WHERE p_name = @k  and mob_no = @j", con);
                cmd.Parameters.AddWithValue("@k", TextBox2.Text);
                cmd.Parameters.AddWithValue("@j", k);

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    string y = dr["p_acno"].ToString();
                    string i = dr["p_name"].ToString();
                    string j = dr["ifsc"].ToString();
                    string q = dr["max_limit"].ToString();


                    int d = int.Parse(q);

                    string ot = "Debit To:" + i;


                    int o = int.Parse(TextBox6.Text);

                    int o1 = o + 3;


                    if (o <= d)
                    {
                        ds = new DataSet();
                        da = new SqlDataAdapter("Update payee2 set amount_received  = @a   where nic_name = @k and  mob_no = @c", conSt);
                        da.SelectCommand.Parameters.AddWithValue("@a", o);
                        da.SelectCommand.Parameters.AddWithValue("@k", l);
                        da.SelectCommand.Parameters.AddWithValue("@c", k);
                        da.Fill(ds);
                        ds = new DataSet();
                        da = new SqlDataAdapter("insert into moneys values(@a,@b,@c,@d)", conSt);
                        da.SelectCommand.Parameters.AddWithValue("@a", k);
                        da.SelectCommand.Parameters.AddWithValue("@b", o1);
                        da.SelectCommand.Parameters.AddWithValue("@c", ot);
                        da.SelectCommand.Parameters.AddWithValue("@d", "saving");

                        da.Fill(ds);

                        Label8.Visible = true;
                        Label8.Text = "we have sucessfully transfered Rs" + o + " To the Above Mentioned Payee and Rs" + o1 + " Is Deducted From Your Account";




                    }








                }
                dr.Close();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else if (Request.Cookies["d"].Values["j"] == "current")
            {
                string m = Request.Cookies["d"].Values["o"];
                int k = int.Parse(m);

                string l = DropDownList1.SelectedItem + "";
                con = new SqlConnection(conSt);
                con.Open();
                cmd = new SqlCommand("select *  from payee2 WHERE p_name = @k  and mob_no = @j", con);
                cmd.Parameters.AddWithValue("@k", TextBox2.Text);
                cmd.Parameters.AddWithValue("@j", k);

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    string y = dr["p_acno"].ToString();
                    string i = dr["p_name"].ToString();
                    string j = dr["ifsc"].ToString();
                    string q = dr["max_limit"].ToString();


                    int d = int.Parse(q);

                    string ot = "Debit To:" + i;


                    int o = int.Parse(TextBox6.Text);

                    int o1 = o + 3;


                    if (o <= d)
                    {
                        ds = new DataSet();
                        da = new SqlDataAdapter("Update payee2 set amount_received  = @a   where nic_name = @k and  mob_no = @c", conSt);
                        da.SelectCommand.Parameters.AddWithValue("@a", o);
                        da.SelectCommand.Parameters.AddWithValue("@k", l);
                        da.SelectCommand.Parameters.AddWithValue("@c", k);
                        da.Fill(ds);
                        ds = new DataSet();
                        da = new SqlDataAdapter("insert into moneys2 values(@a,@b,@c,@d)", conSt);
                        da.SelectCommand.Parameters.AddWithValue("@a", k);
                        da.SelectCommand.Parameters.AddWithValue("@b", o1);
                        da.SelectCommand.Parameters.AddWithValue("@c", ot);
                        da.SelectCommand.Parameters.AddWithValue("@d", "current");

                        da.Fill(ds);

                        Label8.Visible = true;
                        Label8.Text = "we have sucessfully transfered Rs" + o + " To the Above Mentioned Payee and Rs" + o1 + " Is Deducted From Your Account";




                    }








                }
                dr.Close();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int k = int.Parse(m);

            string l = DropDownList1.SelectedItem + "";
            con = new SqlConnection(conSt);
            con.Open();
            cmd = new SqlCommand("select *  from payee2 WHERE nic_name = @k  and mob_no = @j", con);
            cmd.Parameters.AddWithValue("@k", l);
            cmd.Parameters.AddWithValue("@j", k);

            dr = cmd.ExecuteReader();
            Boolean i1 = dr.HasRows;
            if (i1 == true)
            {
                while (dr.Read())
                {
                    string y = dr["p_acno"].ToString();
                    string i = dr["p_name"].ToString();
                    string j = dr["ifsc"].ToString();
                    string q = dr["max_limit"].ToString();
                    TextBox2.Text = i;
                    TextBox1.Text = j;
                    TextBox3.Text = y + "";
                }

            }
            else
            {
                Response.Write("<script>alert('sorry no records found '); window.location='WebForm6.aspx'</script>");
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox6.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
            Label8.Visible = false;




        }
    }
}