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
    public partial class WebForm9 : System.Web.UI.Page
    {
        DataSet ds;
        SqlDataAdapter da;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                


                if (Request.Cookies["d"].Values["i"] == "new" & Request.Cookies["d"].Values["j"] == "saving")
                {
                    Button6.Visible = false;
                    Button3.Visible = true;
                    Button1.Visible = false;
                    Button7.Visible = false;
                    Button5.Visible = false;


                    Button2.Visible = true;
                    Label10.Visible = false;

                    Label7.Visible = false;
                    
                    DropDownList1.Visible = false;
                    Label8.Visible = false;
                    GridView1.Visible = false;
                    Label9.Text = "Kindly enter following information for new payee";
                    con = new SqlConnection(conSt);
                    con.Open();
                    string k1 = Request.Cookies["d"].Values["o"];
                    int l1 = int.Parse(k1);
                    cmd = new SqlCommand("select * from payee2 where actype =@a", con);
                    cmd.Parameters.AddWithValue("@a", "saving");

                    dr = cmd.ExecuteReader();
                    Boolean k = dr.HasRows;
                    int a2 = 0;
                    int j = dr.FieldCount;
                    if (k == true)
                    {
                        while (dr.Read())
                        {

                            string i = dr["nic_name"].ToString();
                         
                            while (a2 < j)
                            {
                                DropDownList1.Items.Add(i);

                                a2++;
                                break;
                            }


                        }
                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else if(Request.Cookies["d"].Values["i"] == "modify" & Request.Cookies["d"].Values["j"] == "saving")
                {
                    Button6.Visible = false;
                    Button3.Visible = false;
                    Button1.Visible = true;
                    Button2.Visible = true;
                    Button7.Visible = false;
                    Button5.Visible = false;
                    DropDownList1.Visible = true;
                    Label8.Visible = false;
                    GridView1.Visible = false;
                    Label9.Text = "Kindly modify the details of the selected payee";
                    con = new SqlConnection(conSt);
                    con.Open();
                    string k1 = Request.Cookies["d"].Values["o"];
                    int l1 = int.Parse(k1);
                    cmd = new SqlCommand("select * from payee2 where actype =@a", con);
                    cmd.Parameters.AddWithValue("@a", "saving");

                    dr = cmd.ExecuteReader();
                    Boolean k = dr.HasRows;
                    int a2 = 0;
                    if (k == true)
                    {
                        while (dr.Read())
                        {

                            string i = dr["nic_name"].ToString();
                            int j = dr.FieldCount;
                            while (a2 < j)
                            {
                                DropDownList1.Items.Add(i);

                                a2++;
                                break;
                            }


                        }
                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else if (Request.Cookies["d"].Values["i"] == "new" & Request.Cookies["d"].Values["j"] == "current")
                {
                    Button6.Visible = false;
                    Button3.Visible = true;
                    Button1.Visible = false;
                    Button7.Visible = false;
                    Button5.Visible = false;


                    Button2.Visible = true;
                    Label10.Visible = false;

                    Label7.Visible = false;

                    DropDownList1.Visible = false;
                    Label8.Visible = false;
                    GridView1.Visible = false;
                    Label9.Text = "Kindly enter following information for new current account payee";
                    con = new SqlConnection(conSt);
                    con.Open();
                    string k1 = Request.Cookies["d"].Values["o"];
                    int l1 = int.Parse(k1);
                    cmd = new SqlCommand("select * from payee2 where actype =@a", con);
                    cmd.Parameters.AddWithValue("@a", "current");

                    dr = cmd.ExecuteReader();
                    Boolean k = dr.HasRows;
                    int a2 = 0;
                    if (k == true)
                    {
                        while (dr.Read())
                        {

                            string i = dr["nic_name"].ToString();
                            int j = dr.FieldCount;
                            while (a2 < j)
                            {
                                DropDownList1.Items.Add(i);

                                a2++;
                                break;
                            }


                        }
                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else if (Request.Cookies["d"].Values["i"] == "modify" & Request.Cookies["d"].Values["j"] == "current")
                {
                    Button6.Visible = false;
                    Button3.Visible = false;
                    Button1.Visible = true;
                    Button2.Visible = true;
                    Button7.Visible = false;
                    Button5.Visible = false;
                    Label7.Visible = true;
                    DropDownList1.Visible = true;
                    Label8.Visible = false;
                    GridView1.Visible = false;
                    Label9.Text = "Kindly modify the details of the selected payee";
                    con = new SqlConnection(conSt);
                    con.Open();
                    string k1 = Request.Cookies["d"].Values["o"];
                    int l1 = int.Parse(k1);
                    cmd = new SqlCommand("select * from payee2 where actype =@a", con);
                    cmd.Parameters.AddWithValue("@a", "current");

                    dr = cmd.ExecuteReader();
                    Boolean k = dr.HasRows;
                    int a2 = 0;
                    if (k == true)
                    {
                        while (dr.Read())
                        {

                            string i = dr["nic_name"].ToString();
                            int j = dr.FieldCount;
                            while (a2 < j)
                            {
                                DropDownList1.Items.Add(i);

                                a2++;
                                break;
                            }


                        }
                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                else
                {
                    Button6.Visible = false;
                    Button3.Visible = false;
                    Button1.Visible = true;
                    Button2.Visible = true;
                    Label7.Visible = true;
                    DropDownList1.Visible = true;
                    Label8.Visible = false;
                    GridView1.Visible = false;
                    Label9.Text = "following are the details of the payee";

                }
                
               
            }

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["d"].Values["i"] == "modify" & Request.Cookies["d"].Values["j"] == "saving")
            {
                string k7 = Request.Cookies["d"].Values["o"];
                int l1 = int.Parse(k7);
                con = new SqlConnection(conSt);
                con.Open();
                cmd = new SqlCommand("select * from payee2 where  mob_no = @b", con);
                cmd.Parameters.AddWithValue("@b", l1);

                dr = cmd.ExecuteReader();
                Boolean k = dr.HasRows;
                if (k == true)
                {
                    Label10.Visible = true;
                    Label10.Text = "KindlY select above dropdown list and click on modify  Button ";
                    Button7.Visible = true;
                    Button7.Text = "Update";
                    Button5.Visible = true;
                    Button5.Text = "Not Update";
                }
                else
                {
                    Label10.Visible = false;
                    Label9.Visible = true;
                    Label9.Text = "we dont have any payee registered with your account kindly add the payee";
                    Button5.Visible = true;
                    Button5.Text = "Ok";

                }



            }
            else if (Request.Cookies["d"].Values["i"] == "modify" & Request.Cookies["d"].Values["j"] == "current")
            {
                string k7 = Request.Cookies["d"].Values["o"];
                int l1 = int.Parse(k7);
                con = new SqlConnection(conSt);
                con.Open();
                cmd = new SqlCommand("select * from payee2 where  mob_no = @b and actype = @c", con);
                cmd.Parameters.AddWithValue("@b", l1);
                cmd.Parameters.AddWithValue("@c", "current");

                dr = cmd.ExecuteReader();
                Boolean k = dr.HasRows;
                if (k == true)
                {
                    Label10.Visible = true;
                    Label10.Text = "KindlY select above dropdown list and click on modify  Button ";
                    Button7.Visible = true;
                    Button7.Text = "Update Payee";
                    Button5.Visible = true;
                    Button5.Text = "Not Update Payee";
                }
                else
                {
                    Label10.Visible = false;
                    Label9.Visible = true;
                    Label9.Text = "we dont have any payee registered with your account kindly add the payee";
                    Button5.Visible = true;
                    Button5.Text = "Ok";

                }

            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {if(Request.Cookies["d"].Values["j"] == "saving") { Response.Write("<script>alert('we are redirecting you to the  home page');window.location='t9.aspx'</script>"); }
            else { Response.Write("<script>alert('we are redirecting you to the  home page');window.location='current_savings.aspx'</script>"); }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {  if (Request.Cookies["d"].Values["i"] == "new" & Request.Cookies["d"].Values["j"] == "saving")
            {
                string k7 = Request.Cookies["d"].Values["o"];
                int l1 = int.Parse(k7);
                string k9 = Request.Cookies["d"].Values["j"];
                ds = new DataSet();
                da = new SqlDataAdapter("insert into  payee2  values ( @a, @b, @c, @d , @e ,@l, @f,@g )  ", conSt);

                da.SelectCommand.Parameters.AddWithValue("@a", int.Parse(TextBox2.Text));
                da.SelectCommand.Parameters.AddWithValue("@b", TextBox1.Text);
                da.SelectCommand.Parameters.AddWithValue("@c", TextBox3.Text);
                da.SelectCommand.Parameters.AddWithValue("@d", int.Parse(TextBox5.Text));
                da.SelectCommand.Parameters.AddWithValue("@e", TextBox6.Text);
                da.SelectCommand.Parameters.AddWithValue("@l", l1);
                da.SelectCommand.Parameters.AddWithValue("@f", int.Parse(TextBox4.Text));
                da.SelectCommand.Parameters.AddWithValue("@g", k9);


                da.Fill(ds);
                Response.Write("<script>alert('Data Is Sucessfully updated'); window.location='WebForm9.aspx'</script>");

            }
           else if (Request.Cookies["d"].Values["i"] == "new" & Request.Cookies["d"].Values["j"] == "current")
            {
                string k7 = Request.Cookies["d"].Values["o"];
                int l1 = int.Parse(k7);
                string k9 = Request.Cookies["d"].Values["j"];
                ds = new DataSet();
                da = new SqlDataAdapter("insert into  payee2  values ( @a, @b, @c, @d , @e ,@l, @f,@g )  ", conSt);

                da.SelectCommand.Parameters.AddWithValue("@a", int.Parse(TextBox2.Text));
                da.SelectCommand.Parameters.AddWithValue("@b", TextBox1.Text);
                da.SelectCommand.Parameters.AddWithValue("@c", TextBox3.Text);
                da.SelectCommand.Parameters.AddWithValue("@d", int.Parse(TextBox5.Text));
                da.SelectCommand.Parameters.AddWithValue("@e", TextBox6.Text);
                da.SelectCommand.Parameters.AddWithValue("@l", l1);
                da.SelectCommand.Parameters.AddWithValue("@f", int.Parse(TextBox4.Text));
                da.SelectCommand.Parameters.AddWithValue("@g", k9);


                da.Fill(ds);
                Response.Write("<script>alert('Data Is Sucessfully updated'); window.location='WebForm9.aspx'</script>");

            }
            else
            {
                Response.Write("<script>alert('directing you to the dashboard as some problem has occured'); window.location='Home.aspx'</script>");
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox6.Text = DropDownList1.SelectedItem + "";
            string k7 = Request.Cookies["d"].Values["o"];
            int l1 = int.Parse(k7);
            string k1 = DropDownList1.SelectedItem + "";

            string f = Button4.Text;
            switch (f)
            {
                case "Show the details":
                    con = new SqlConnection(conSt);
                    con.Open();
                    cmd = new SqlCommand("select * from payee2 where nic_name = @a", con);
                    cmd.Parameters.AddWithValue("@a", k1);
                    dr = cmd.ExecuteReader();
                    Boolean k = dr.HasRows;
                    if (k == true)
                    {
                        dr.Close();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        da = new SqlDataAdapter("select p_name , p_acno , ifsc, amount_received , max_limit , nic_name from payee2 where nic_name = @m and mob_no = @l", con);
                        da.SelectCommand.Parameters.AddWithValue("@m", k1);
                        da.SelectCommand.Parameters.AddWithValue("@l", l1);
                        ds = new DataSet();
                        da.Fill(ds);
                        GridView1.Visible = true;
                        Label8.Visible = true;
                        Label8.Text = "Following Are the details saved in our records";
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                        
                        con = new SqlConnection(conSt);
                        con.Open();
                        cmd = new SqlCommand("select * from payee2 where  mob_no = @b", con);
                        cmd.Parameters.AddWithValue("@b", l1);

                        dr = cmd.ExecuteReader();
                        while (dr.Read())
                        {
                            string q = dr["p_acno"].ToString();
                            string q1 = dr["p_name"].ToString();
                             string q2 = dr["ifsc"].ToString();
                            string q3 = dr["max_limit"].ToString();
                            string q4 = dr["nic_name"].ToString();
                            string q5 = dr["amount_received"].ToString();
                            string q6 = dr["actype"].ToString();

                            TextBox1.Text = q1;
                            TextBox2.Text = q;
                            TextBox3.Text = q2;
                            TextBox4.Text = q5;
                            TextBox5.Text = q3;
                            TextBox6.Text = q4;
                            Label9.Visible = true;
                            Label9.Text = " You Can Make changes from the below saved records now";
                            Label10.Text = "Do you want to update above mentioned Records?";











                        }

                    }
                    else
                    {
                        Button6.Visible = true;
                        Button6.Text = "Ok";
                        Label8.Visible = true;
                        Label8.Text = "Sorry no records found";

                    }
                    break;
                case "Ok":
                    Label6.Visible = false;
                    Button6.Visible = false;
                    break;
                case "Modify":
                    break;
            }
          
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string z = Button5.Text;
            switch (z)
            {
                case "Not Update":
                    Button7.Visible = false;
                    Button5.Visible = false;
                    Label10.Visible = false;
                    GridView1.Visible = false;
                    Label8.Visible = false;
                    break;
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string o = Button7.Text;
            switch (o)
            {
                case "Update":
                    string k7 = Request.Cookies["d"].Values["o"];
                    int l1 = int.Parse(k7);
                    ds = new DataSet();
                    da = new SqlDataAdapter("update payee2 set p_name = @a , p_acno = @b, ifsc = @c, amount_received = @d , max_limit = @e   where  nic_name = @m and mob_no = @l", conSt);

                    da.SelectCommand.Parameters.AddWithValue("@a", TextBox1.Text);
                    da.SelectCommand.Parameters.AddWithValue("@b", int.Parse(TextBox2.Text));
                    da.SelectCommand.Parameters.AddWithValue("@c", TextBox3.Text);
                    da.SelectCommand.Parameters.AddWithValue("@d", int.Parse(TextBox4.Text));
                    da.SelectCommand.Parameters.AddWithValue("@e", int.Parse(TextBox5.Text));

                    da.SelectCommand.Parameters.AddWithValue("@m", TextBox6.Text);
                    da.SelectCommand.Parameters.AddWithValue("@l", l1);
                    da.Fill(ds);
                    Response.Write("<script>alert('Data Is Sucessfully updated'); window.location='WebForm9.aspx'</script>");
                    Button5.Visible = false;
                    Label10.Visible = true;
                    Label10.Text = "Records Update Sucessfully";
                    Button7.Visible = true;
                    Button7.Text = "Ok";
                    break;
                case "Ok":
                    Button7.Visible = false;
                    Label10.Visible = false;
                    Button6.Visible = false;
                    Label8.Visible = false;
                    break;

                case "Update Payee":
                    string ko = Request.Cookies["d"].Values["o"];
                    int l12 = int.Parse(ko);
                    ds = new DataSet();
                    da = new SqlDataAdapter("update payee2 set p_name = @a , p_acno = @b, ifsc = @c, amount_received = @d , max_limit = @e   where  nic_name = @m and actype = @l", conSt);

                    da.SelectCommand.Parameters.AddWithValue("@a", TextBox1.Text);
                    da.SelectCommand.Parameters.AddWithValue("@b", int.Parse(TextBox2.Text));
                    da.SelectCommand.Parameters.AddWithValue("@c", TextBox3.Text);
                    da.SelectCommand.Parameters.AddWithValue("@d", int.Parse(TextBox4.Text));
                    da.SelectCommand.Parameters.AddWithValue("@e", int.Parse(TextBox5.Text));

                    da.SelectCommand.Parameters.AddWithValue("@m", TextBox6.Text);
                    da.SelectCommand.Parameters.AddWithValue("@l", "current");
                    da.Fill(ds);
                    Response.Write("<script>alert('Data Is Sucessfully updated'); window.location='WebForm9.aspx'</script>");
                    Button5.Visible = false;
                    Label10.Visible = true;
                    Label10.Text = "Records Update Sucessfully";
                    Button7.Visible = true;
                    Button7.Text = "Ok";
                    break;


            }
           
        }
    }
}