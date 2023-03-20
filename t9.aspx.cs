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
   
    public partial class t9 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;

        string conStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                a.Visible = false;
                Button38.Visible = false;
                Label6.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Button28.Visible = false;
                GridView1.Visible = false;
                bal.Visible = false;
                Label5.Visible = false;

                TM.Visible = false;
                TextBox2.Visible = false;
                string m = Request.Cookies["d"].Values["o"];
                int l = int.Parse(m);
                con = new SqlConnection(conStr);
                con.Open();
                cmd = new SqlCommand("select name , accno  from JOIN2 where mob = @a", con);
                cmd.Parameters.AddWithValue("@a", l);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    string li = dr["name"].ToString();
                    string di = dr["accno"].ToString();
                    Label1.Text = li;
                    TextBox3.Text = di;
                   
                }
                dr.Close();
                cmd.ExecuteNonQuery();
                con.Close();
                

            }
            
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Label3.Visible = true;
            
            Button28.Visible = true;
            Button28.Text = "Ok";

            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select name , nominee from JOIN2 where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string li = dr["name"].ToString();
                string o =dr["nominee"].ToString();
                Label3.Text = "Dear  " + li +"   Nominee Registered In Your Account Is :  "+o;
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();

            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            
            Button28.Visible = true;


            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select name , father_name from JOIN2 where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string li = dr["name"].ToString();
                string o = dr["father_name"].ToString();
                Label3.Text = "Dear  " + li + " Yours Fathers Name Registered with us Is : Mr" + o;
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Button28.Visible = true;

            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select name , mob from JOIN2 where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string li = dr["name"].ToString();
                string o = dr["mob"].ToString();
                Label3.Text = "Dear  " + li + "   ,  Mobile  Number  Registered With Us Is : " + o;
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Button28.Visible = true;

            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select name , addresses from JOIN2 where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {



                string li = dr["name"].ToString();
                string o = dr["addresses"].ToString();
                Label3.Text = "Dear  " + li + " Your Address  Registered With Us Is  : " + o;

            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            string a1 = Label3.Text;
            switch (a1)
            {
                case "Dear user , enter the nick name of  payee which you want to delete from our records  :":
                    string m = Request.Cookies["d"].Values["o"];
                    int l = int.Parse(m);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("delete from payee where  nic_name = @a and  mob_no = @b  ", con);
                    cmd.Parameters.AddWithValue("@a", a.Text);
                    cmd.Parameters.AddWithValue("@b", l);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    break;
                default:
                    Label3.Visible = true;
                    Label3.Text = "WRONG INPUT";

                        
                    break;
            }
            String lo = Button28.Text;
            switch (lo)
            {
                case "Ok":
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    bal.Visible = false;
                    Label5.Visible = false;
                    break;
                case "change nominee":
                    string m = Request.Cookies["d"].Values["o"];
                    int l = int.Parse(m);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("  update JOIN2 set nominee = @a where mob = @b", con);
                    cmd.Parameters.AddWithValue("@a",a.Text);
                    cmd.Parameters.AddWithValue("@b", l);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('we have updated your recent details in our records sucessfully'); window.location = 't9.aspx' </script>");


                    break;
                case "change fathers name":
                    string m1 = Request.Cookies["d"].Values["o"];
                    int l1 = int.Parse(m1);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("  update JOIN2 set father_name = @a where mob = @b", con);
                    cmd.Parameters.AddWithValue("@a", a.Text);
                    cmd.Parameters.AddWithValue("@b", l1);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('we have updated your recent details in our records sucessfully'); window.location = 't9.aspx' </script>");

                    break;
                case "change home address":
                    string mr = Request.Cookies["d"].Values["o"];
                    int l12 = int.Parse(mr);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("update JOIN2 set addresses = @a where mob = @b", con);
                    cmd.Parameters.AddWithValue("@a", a.Text);
                    cmd.Parameters.AddWithValue("@b", l12);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('we have updated your recent details in our records sucessfully'); window.location = 't9.aspx' </script>");

                    break;
                case "change mobile number":
                    string mrp = Request.Cookies["d"].Values["o"];
                    int li = int.Parse(mrp);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("update JOIN2 set mob = @a where mob = @b", con);
                    cmd.Parameters.AddWithValue("@a", int.Parse(a.Text));
                    cmd.Parameters.AddWithValue("@b", li);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('we have updated your recent details in our records sucessfully'); window.location = 't9.aspx' </script>");
                   
                    break;

                case "Add Money":
                    int p = int.Parse(a.Text);
                    bal.Text = p+"";
                    string mro = Request.Cookies["d"].Values["o"];
                    int lik = int.Parse(mro);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("insert into  moneys values(@a,@b,@c,@d) ", con);
                    cmd.Parameters.AddWithValue("@a", lik);
                    cmd.Parameters.AddWithValue("@b", p);
                    cmd.Parameters.AddWithValue("@c", "self");
                    cmd.Parameters.AddWithValue("@d", "saving");
                    Label3.Visible = true;
                    Label3.Text = "Added Money Sucessfully , kindly click on account balance button to know the updated balance";
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    a.Visible = false;
                    cmd.ExecuteNonQuery();
                    con.Close();

                    break;

                case "Raise Complaint":
                    string m8 = Request.Cookies["d"].Values["o"];
                    int ll = int.Parse(m8);
                    string k = a.Text;
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("select * from complaint ", con);

                    dr = cmd.ExecuteReader();
                    Boolean i = dr.HasRows;
                   
                        if (i == true)
                        {
                            ds = new DataSet();
                            da = new SqlDataAdapter("Update complaint set complaints  = @a  where mob = @b", conStr);
                            da.SelectCommand.Parameters.AddWithValue("@a", k);
                            da.SelectCommand.Parameters.AddWithValue("@b", ll);
                            da.Fill(ds);
                            Label3.Visible = true;
                            Label3.Text = "we have accepted  your complaint & will process in a short period of time";
                            Button28.Visible = true;
                            Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;
                    }
                        else
                        {
                            ds = new DataSet();
                            da = new SqlDataAdapter("insert into complaint values(@a , @b , @c)", conStr);
                            da.SelectCommand.Parameters.AddWithValue("@a", ll);
                            da.SelectCommand.Parameters.AddWithValue("@b", k);
                            da.SelectCommand.Parameters.AddWithValue("@c", "no dispute");
                            da.Fill(ds);
                            Label3.Visible = true;
                            Label3.Text = "we have accepted  your complaint  & will process in a short period of time";

                            Button28.Visible = true;
                            Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;
                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    break;
                case "Refer":
                    string mi = Request.Cookies["d"].Values["o"];
                    string q = a.Text;
                    TextBox2.Visible = true;
                    int ki = int.Parse(TextBox2.Text);
                    int ol = int.Parse(mi);
                    con = new SqlConnection(conStr);
                    con.Open();

                    cmd = new SqlCommand("select * from friend ", con);

                    dr = cmd.ExecuteReader();
                    Boolean ew = dr.HasRows;
                    
                        if (ew== true)
                        {
                            ds = new DataSet();
                            da = new SqlDataAdapter("Update friend set friend_name  = @a  and friend_mob = @b where mob = @c", conStr);
                            da.SelectCommand.Parameters.AddWithValue("@a", q);
                            da.SelectCommand.Parameters.AddWithValue("@b", ki);
                            da.SelectCommand.Parameters.AddWithValue("@c", ol);
                            da.Fill(ds);
                            Label3.Text = "thanks for refering our bank to your friend";

                            Button28.Visible = true;
                            Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;

                    }
                        else
                        {
                            ds = new DataSet();
                            da = new SqlDataAdapter("insert into friend values(@a , @b , @c)", conStr);
                            da.SelectCommand.Parameters.AddWithValue("@a", ol);
                            da.SelectCommand.Parameters.AddWithValue("@b", q);
                            da.SelectCommand.Parameters.AddWithValue("@c", ki);
                            da.Fill(ds);
                            Label3.Visible = true;
                            Label3.Text = "thanks for refering our bank to your friend";

                            Button28.Visible = true;
                            Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;
                    }
                       
                    
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                   
                    break;
                case "FeedBack":
                    string mip = Request.Cookies["d"].Values["o"];
                    string qq = a.Text;
                    int olm = int.Parse(mip);
                    
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("select * from complaint", con);


                    dr = cmd.ExecuteReader();
                    Boolean pi = dr.HasRows;
                        if (pi == true)
                        {
                            ds = new DataSet();
                            da = new SqlDataAdapter("Update complaint set feedback  = @a  where mob = @b", conStr);
                            da.SelectCommand.Parameters.AddWithValue("@a", qq);
                            da.SelectCommand.Parameters.AddWithValue("@b", olm);
                            da.Fill(ds);
                            Label3.Visible = true;
                            Label3.Text = "thanks for giving the feedback";
                            Button28.Visible = true;
                            Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;
                    }
                        else
                        {
                            ds = new DataSet();
                            da = new SqlDataAdapter("insert into complaint values (@a , @b , @c , @d)", conStr);
                            da.SelectCommand.Parameters.AddWithValue("@a", olm);
                            da.SelectCommand.Parameters.AddWithValue("@b", "no complaints");
                            da.SelectCommand.Parameters.AddWithValue("@c", "no dispute");
                            da.SelectCommand.Parameters.AddWithValue("@d", qq);

                            da.Fill(ds);
                            Label3.Visible = true;
                            Label3.Text = "thanks for giving the feedback";

                            Button28.Visible = true;
                            Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;
                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    break;
                case "Raise Dispute":
                    string mj = Request.Cookies["d"].Values["o"];
                    string qp = a.Text;
                    int os = int.Parse(mj);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("select * from complaint", con);

                    dr = cmd.ExecuteReader();
                    Boolean u = dr.HasRows;
                    if (u == true)
                    {
                        ds = new DataSet();
                        da = new SqlDataAdapter("Update complaint set dispute  = @a  where mob = @b", conStr);
                        da.SelectCommand.Parameters.AddWithValue("@a", qp);
                        da.SelectCommand.Parameters.AddWithValue("@b", os);
                        da.Fill(ds);
                        Label3.Visible = true;
                        Label3.Text = "we have accepted  your dispute raised with us  & will process in a short period of time";
                        Button28.Visible = true;
                        Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;
                    }
                    else
                    {
                        
                       
                        
                            ds = new DataSet();
                            da = new SqlDataAdapter("insert into complaint values(@a , @b , @c)", conStr);
                            da.SelectCommand.Parameters.AddWithValue("@a", os);
                            da.SelectCommand.Parameters.AddWithValue("@b", "no complaints");
                            da.SelectCommand.Parameters.AddWithValue("@c", qp);
                            da.Fill(ds);
                            Label3.Visible = true;
                            Label3.Text = "we have accepted  your dispute raised with us  & will process in a short period of time";

                            Button28.Visible = true;
                            Button28.Text = "Ok";
                        a.Visible = false;
                        TM.Visible = false;
                        
                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    break;
                case "Activate UPI":
                    string ml = Request.Cookies["d"].Values["o"];
                    
                    int osi = int.Parse(ml);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("select * from adi_services ", con);
                    
                    dr = cmd.ExecuteReader();
                    Boolean up = dr.HasRows;
                    if (up == true)
                    {
                        
                            while (dr.Read()) { string ip = dr["bhim"].ToString();
                                if (ip == "yes") {
                                    Label3.Visible = true;
                                    Label3.Text = "Your UPI Account Is Already Activated Do You Want to continue with the BHIMS UPI or Want to discontinue ";
                                    TM.Visible = true;
                                    TM.Text = "Discontinue";
                                    Button28.Visible = true;
                                    Button28.Text = "Continue";
                                }
                                else
                                {
                                    ds = new DataSet();
                                    da = new SqlDataAdapter("update adi_services set bhim = @a where mob = @f", conStr);
                                    da.SelectCommand.Parameters.AddWithValue("@a", "yes");

                                    da.SelectCommand.Parameters.AddWithValue("@f", osi);
                                    da.Fill(ds);

                                    Label3.Visible = true;
                                    Label3.Text = "We Have Raised Your Request, Which Might be enabled by a short period of time ";
                                    Button28.Visible = true;
                                    Button28.Text = "Ok";
                                }
                            }
                            
                        }

                        
                      
                    
                    else
                    {
                        ds = new DataSet();
                        da = new SqlDataAdapter("insert into adi_services values( @a,@b,@c,@d,@e,@f)", conStr);
                       
                        da.SelectCommand.Parameters.AddWithValue("@a", osi);
                        da.SelectCommand.Parameters.AddWithValue("@b", "yes");
                        da.SelectCommand.Parameters.AddWithValue("@c", "N.A.");
                        da.SelectCommand.Parameters.AddWithValue("@d", "N.A.");
                        da.SelectCommand.Parameters.AddWithValue("@e", "N.A.");
                        da.SelectCommand.Parameters.AddWithValue("@f", "N.A.");
                        da.Fill(ds);
                        Label3.Visible = true;
                        Label3.Text = "We Have Raised Your Request. Which Might be enabled by a short period of time ";
                        Button28.Visible = true;
                        Button28.Text = "Ok";

                    }
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    break;
                case "Continue": 
                    a.Visible = false;

                    Label3.Visible = true;
                    Label3.Text = "Your  Services will be continue in future also ";
                    Label4.Visible = false;
                    Button28.Visible = true;

                    Button28.Text = "Ok";
                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;
                case "Activate Mob_Banking":
                    string mp = Request.Cookies["d"].Values["o"];

                    int osil = int.Parse(mp);
                    con = new SqlConnection(conStr);
                    con.Open();
                    cmd = new SqlCommand("select * from adi_services ", con);

                    dr = cmd.ExecuteReader();
                    Boolean upo = dr.HasRows;
                    if (upo == true)
                    {

                        while (dr.Read())
                        {
                            string ip = dr["mob_bank"].ToString();
                            if (ip == "yes")
                            {
                                Label3.Visible = true;
                                Label3.Text = "Your Mobile Banking  Is Already Activated Do You Want to continue with the BHIMS UPI or Want to discontinue ";
                                TM.Visible = true;
                                TM.Text = "Discontinue Mob_Banking";
                                Button28.Visible = true;
                                Button28.Text = "Continue";
                            }
                            else
                            {
                                ds = new DataSet();
                                da = new SqlDataAdapter("update adi_services set mob_bank = @a where mob = @f", conStr);
                                da.SelectCommand.Parameters.AddWithValue("@a", "yes");

                                da.SelectCommand.Parameters.AddWithValue("@f", osil);
                                da.Fill(ds);

                                Label3.Visible = true;
                                Label3.Text = "We Have Raised Your Request, Which Might be enabled by a short period of time ";
                                Button28.Visible = true;
                                Button28.Text = "Ok";
                            }
                        }
                    }
                    break;
                case "Delete Payee":
                    string mt = Request.Cookies["d"].Values["o"];
                    int l2 = int.Parse(mt);
                    ds = new DataSet();
                    da = new SqlDataAdapter("delete from payee2 where p_name = @a and mob_no = @b", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", a.Text);
                    da.SelectCommand.Parameters.AddWithValue("@b", l2);
                    da.Fill(ds);
                    Label3.Text = "your records are deleted sucessfully";
                    a.Visible = false;
                    Button28.Text = "Ok";
                    break;

                    }
           
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert(dear user we are directing you to the new payye add page'); window.location='t9.aspx'</script>");

            string m = Request.Cookies["d"].Values["o"];
            HttpCookie m1 = new HttpCookie("d");
            m1.Values["o"] = m;
            m1.Values["j"] = "saving";
            m1.Values["i"] = "new";



            m1.Expires = DateTime.Now.AddSeconds(900);
            Response.Cookies.Add(m1);
            Response.Redirect("WebForm9.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select p_name from payee2  where mob_no = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            Boolean p = dr.HasRows;
            if (p == true)
            {
                
                    dr.Close();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ds = new DataSet();
                    da = new SqlDataAdapter("select p_name as registered_payee from payee2  where mob_no = @a", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", l);
                    da.Fill(ds);
                    GridView1.Visible = true;
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    Label6.Visible = true;
                    Label6.Text = "Dear user , following are the payee registered with us ";
                    Button38.Visible = true;
                    Button38.Text = "Ok";

                

            }
            else
            {
                Label3.Visible = true;
                Label3.Text = " Sorry No Records Found kindly click On New Payee And Add required details in it";
                Button28.Visible = true;
                Button28.Text = "Ok";
            }
            
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to the new page  to enable you to Modify the  payee '); </script>");
            string m = Request.Cookies["d"].Values["o"];
            HttpCookie m1 = new HttpCookie("d");
            m1.Values["o"] = m;
            m1.Values["j"] = "saving";
            m1.Values["i"] = "modify";



            m1.Expires = DateTime.Now.AddSeconds(900);
            Response.Cookies.Add(m1);
            Response.Redirect("WebForm9.aspx");
           
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Button28.Visible = true;
            a.Visible = true;
            Button28.Text = "Delete Payee";
            Label3.Text = "Dear "+ Label1.Text+" , enter the name of payee which you want to delete from our records (if you dont remember the name kindly click on Registered Payee)";
            
            TM.Visible = true;
            TM.Text = "Dont Want To Delete Payee";
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Button28.Visible = true;
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from loanquery6 where MOB_NO = @a and loan_type=@b", con);
            cmd.Parameters.AddWithValue("@a", l);
            cmd.Parameters.AddWithValue("@b", "Home Loan");

            dr = cmd.ExecuteReader();
            Boolean k1 = dr.HasRows;
            if (k1 == true)
            {
                while (dr.Read())
                {
                    string l2 = dr["loan_type"].ToString();
                    string k5 = dr["name"].ToString();
                    string k10 = dr["years"].ToString();
                    string k2 = dr["LOAN_AMOUNT_REQUIREMENT"].ToString();

                    Label3.Text = "Dear " + k5 + ", You Have Applied " + l2 + " with our bank , for a period of " + k10 + " years . Amounting : Rs" + k2;
                    Button28.Text = "OK";


                }

            }




            else
            {
                Label3.Text = "Dear User ,  You Havent  Applied for any type of  " + "Home loan" + " With Us . If you want to raise request then kindly click on Apply Button ,  Else Click On OK ";
                Button28.Text = "OK";
                TM.Visible = true;
                TM.Text = "APPLY";
            }

            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void TM_Click(object sender, EventArgs e)
        {
            

            string l = TM.Text;
            switch (l)
            { case "APPLY":
                    Response.Write("<script>alert('we are directing you to the application page for the further process'); window.location='loan_query.aspx'</script>");
                    break;
                case "Dont want any change in nominee":

                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('no changes are made in nominee name'); window.location='t9.aspx'</script>");

                    break;
                case "Dont want any change in fathers name":

                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('no changes are made in fathersname'); window.location='t9.aspx'</script>");


                    break;
                case "Dont want any change in home address":

                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('no changes are made in your home address'); window.location='t9.aspx'</script>");


                    break;
                case "Dont want any change in mobile number":

                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    Response.Write("<script>alert('no changes are made in your mobile number'); window.location='t9.aspx'</script>");


                    break;
                case "Y":

                    string m = Request.Cookies["d"].Values["o"];
                    int l2 = int.Parse(m);
                    ds = new DataSet();
                    da = new SqlDataAdapter("Update adi_services set cheq = @a  where mob = @b", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", "one more cheq book");
                    da.SelectCommand.Parameters.AddWithValue("@b", l2);
                    da.Fill(ds);
                    Label3.Text = "Thank you for ordering 1 more chequebook";
                    Button28.Text = "Ok";
                    a.Visible = false;

                    
                    Label4.Visible = false;
                   


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;
                case "Home":
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;
                case "Dont want to refer":
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;

                case "Dont Want to post feedback":

                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;

                case "Dont Want to raise a complaint":

                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;
                case "Dont want to raise dispute now":

                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;
                case "Dont Want to activate upi":
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;
                case "Discontinue":
                    Label3.Visible = true;
                    Label3.Text = "Your UPI Services Are  sucessfully Discontinued";
                    Label4.Visible = false;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                   

                    TM.Visible = false;
                    TextBox2.Visible = false;
                    a.Visible = false;
                    ds = new DataSet();
                    string m1 = Request.Cookies["d"].Values["o"];
                    int lo = int.Parse(m1);
                    da = new SqlDataAdapter("update adi_services set bhim = @a where mob = @f", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", "Deactivate");
                   
                    da.SelectCommand.Parameters.AddWithValue("@f", lo);
                    da.Fill(ds);
                   
                    break;
                case "Dont Want to activate Mob_Banking":
                    a.Visible = false;

                    Label3.Visible = false;
                    Label4.Visible = false;
                    Button28.Visible = false;


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    break;
                case "Discontinue Mob_Banking":
                    Label3.Visible = true;
                    Label3.Text = "Your UPI Services Are  sucessfully Discontinued";
                    Label4.Visible = false;
                    Button28.Visible = true;
                    Button28.Text = "Ok";


                    TM.Visible = false;
                    TextBox2.Visible = false;
                    a.Visible = false;
                    ds = new DataSet();
                    string m11 = Request.Cookies["d"].Values["o"];
                    int lop = int.Parse(m11);
                    da = new SqlDataAdapter("update adi_services set mob_bank = @a where mob = @f", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", "Deactivate");

                    da.SelectCommand.Parameters.AddWithValue("@f", lop);
                    da.Fill(ds);

                    break;
                case "Dont Want To Delete Payee":
                    Label3.Visible = false;
                    a.Visible = false;
                    Button28.Visible = false;
                    TM.Visible = false;
                    break;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Button28.Visible = true;
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from loanquery6 where MOB_NO = @a and loan_type=@b", con);
            cmd.Parameters.AddWithValue("@a", l);
            cmd.Parameters.AddWithValue("@b", "Car Loan");

            dr = cmd.ExecuteReader();
            Boolean k1 = dr.HasRows;
            if (k1 == true)
            {
                while (dr.Read())
                {
                    string l2 = dr["loan_type"].ToString();
                    string k5 = dr["name"].ToString();
                    string k10 = dr["years"].ToString();
                    string k2 = dr["LOAN_AMOUNT_REQUIREMENT"].ToString();

                    Label3.Text = "Dear " + k5 + ", You Have Applied " + l2 + " with our bank , for a period of " + k10 + " years . Amounting : Rs" + k2;
                    Button28.Text = "OK";


                }

            }




            else
            {
                Label3.Text = "Dear User ,  You Havent  Applied for any type of  " + "Car loan" + " With Us . If you want to raise request then kindly click on Apply Button ,  Else Click On OK ";
                Button28.Text = "OK";
                TM.Visible = true;
                TM.Text = "APPLY";
            }

            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();


        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Button28.Visible = true;
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from loanquery6  where MOB_NO = @a and loan_type =@b", con);
            cmd.Parameters.AddWithValue("@a", l);
            cmd.Parameters.AddWithValue("@b", "Personal Loan");

            dr = cmd.ExecuteReader();
            Boolean k1 = dr.HasRows;
            if (k1 == true)
            {
                while (dr.Read())
                {
                    string l2 = dr["loan_type"].ToString();
                        string k5 = dr["name"].ToString();
                        string k10 = dr["years"].ToString();
                        string k2 = dr["LOAN_AMOUNT_REQUIREMENT"].ToString();

                        Label3.Text = "Dear " + k5 + ", You Have Applied " + l2+ " with our bank , for a period of " + k10 + " years . Amounting : Rs" + k2;
                        Button28.Text = "OK";
                        
                    
                }

                }
            

            
          
                else
                {
                    Label3.Text = "Dear User ,  You Havent  Applied for any type of  "+"personal loan"+  " With Us . If you want to raise request then kindly click on Apply Button ,  Else Click On OK ";
                    Button28.Text = "OK";
                    TM.Visible = true;
                    TM.Text = "APPLY";
                }
            
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            
                Label3.Visible = true;
                Button28.Visible = true;
                string m = Request.Cookies["d"].Values["o"];
                int l = int.Parse(m);
                con = new SqlConnection(conStr);
                con.Open();
                cmd = new SqlCommand("select * from loanquery6 where MOB_NO = @a and loan_type=@b", con);
                cmd.Parameters.AddWithValue("@a", l);
                cmd.Parameters.AddWithValue("@b", "Gold     Loan");

                dr = cmd.ExecuteReader();
                Boolean k1 = dr.HasRows;
                if (k1 == true)
                {
                    while (dr.Read())
                    {
                        string l2 = dr["loan_type"].ToString();
                        string k5 = dr["name"].ToString();
                        string k10 = dr["years"].ToString();
                        string k2 = dr["LOAN_AMOUNT_REQUIREMENT"].ToString();

                        Label3.Text = "Dear " + k5 + ", You Have Applied " + l2 + " with our bank , for a period of " + k10 + " years . Amounting : Rs" + k2;
                        Button28.Text = "OK";


                    }

                }




                else
                {
                    Label3.Text = "Dear User ,  You Havent  Applied for any type of  " + "Gold loan" + " With Us . If you want to raise request then kindly click on Apply Button ,  Else Click On OK ";
                    Button28.Text = "OK";
                    TM.Visible = true;
                    TM.Text = "APPLY";
                }

                dr.Close();
                cmd.ExecuteNonQuery();
                con.Close();

            
            }

        protected void Button15_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
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
               
                HttpCookie m1 = new HttpCookie("d");
                m1.Values["o"] = k;
                m1.Values["p"] = k5;
                m1.Values["q"] = k10;
                m1.Values["r "] = k2;
                m1.Values["s"] = mo;
                m1.Values["t"] = "Fixed Deposits";
                m1.Values["j"] = "saving";



                m1.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m1);
                Response.Redirect("FD.aspx");

            }
        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
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
                m1.Values["t"] = "Recurring Deposits";
                m1.Values["j"] = "saving";


                m1.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m1);
                Response.Redirect("FD.aspx");

            }
        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string k5 = dr["name"].ToString();
                string mo = dr["mob"].ToString();
                Response.Write("<script>alert('we are redirecting you to the new page  where you can see all your deposits'); </script>");

                HttpCookie m1 = new HttpCookie("d");
                m1.Values["p"] = k5;
                m1.Values["s"] = mo;
                m1.Values["j"] = "saving";



                m1.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m1);
                Response.Redirect("Deposits.aspx");

            }
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
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
                Response.Write("<script>alert('we are redirecting you to the new page  for closing the deposits'); </script>");

                HttpCookie m1 = new HttpCookie("d");
                m1.Values["o"] = k;
                m1.Values["p"] = k5;
                m1.Values["q"] = k10;
                m1.Values["r "] = k2;
                m1.Values["s"] = mo;
                m1.Values["j"] = "saving";


                m1.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m1);
                Response.Redirect("Deposits_Closure.aspx");

            }
        
    }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = " Kindly Write The Name Of New Nominee Here";
            a.Visible = true;
            Button28.Visible = true;
            Button28.Text = "change nominee";
            TM.Visible = true;
            TM.Text = "Dont want any change in nominee";
            
           

        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = " Kindly Write The Updated Name Of Your Father Here ";
            a.Visible = true;
            Button28.Visible = true;
            Button28.Text = "change fathers name";
            TM.Visible = true;
            TM.Text = "Dont want any change in fathers name";
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = " Kindly Write your updated Address Here";
            a.Visible = true;
            Button28.Visible = true;
            Button28.Text = "change home address";
            TM.Visible = true;
            TM.Text = "Dont want any change in home address";

        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = " Kindly Write your updated Mobile Number Here ";
            a.Visible = true;
            Button28.Visible = true;
            Button28.Text = "change mobile number";
            TM.Visible = true;
            TM.Text = "Dont want any change in mobile number";

        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string k = dr["debit"].ToString();
                if (k == "Yes")
                {
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    Label3.Text = "You Have Already applied for debit card";

                }
                else
                {
                    ds = new DataSet();
                    da = new SqlDataAdapter("Update JOIN2 set debit = @a  where mob = @b", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", "yes");
                    da.SelectCommand.Parameters.AddWithValue("@b", l);
                    da.Fill(ds);
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    Label3.Text = "your request for debit card has been generated .  ";



                }
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();
           
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string k = dr["credit"].ToString();
                if (k == "Yes")
                {
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    Label3.Text = "You Have Already applied for Credit card";

                }
                else
                {
                    ds = new DataSet();
                    da = new SqlDataAdapter("Update JOIN2 set credit = @a  where mob = @b", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", "yes");
                    da.SelectCommand.Parameters.AddWithValue("@b", l);
                    da.Fill(ds);
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    Label3.Text = "your request of  credit card has been successfully generated ";



                }
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();
            
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2 where mob=@a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
               
                if (dr["debit"].ToString()== "yes" )
                {
                    ds = new DataSet();
                    da = new SqlDataAdapter("Update JOIN2 set debit = @a  where mob = @b", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", "deactivate ");
                    da.SelectCommand.Parameters.AddWithValue("@b", l);
                    da.Fill(ds);
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    Label3.Text = "we have deactivated your debit card , to activate click on apply debit card";


                }
                else
                {

                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    Label3.Text = "you havent applied for the  debit card";


                }
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected  void Button27_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string p = dr["credit"].ToString();
                if (p=="yes")
                {
                    ds = new DataSet();
                    da = new SqlDataAdapter("Update JOIN2 set credit = @a  where mob = @b", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", "deactivate ");
                    da.SelectCommand.Parameters.AddWithValue("@b", l);
                    da.Fill(ds);
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    

                    Label3.Text = "we have deactivate your credit card , to activate click on activate credit card";


                }
                else
                {

                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";
                    Label3.Text = "you havent applied for the  credit card , so we cant deactivate";


                }
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();


        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = "Thanks For Showing Interest in UPI activation are you sure that you want to activate the UPI";
           
            Button28.Visible = true;
            Button28.Text = "Activate UPI";

            TM.Visible = true;
            TM.Text = "Dont Want to activate upi";
           


            


        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from JOIN2  where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string k = dr["Cheq_req"].ToString();
                string y = dr["mob"].ToString();
                int lk = int.Parse(y);
                if(k == "Yes" & lk==l)
                {
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "No";
                    Label3.Text = "you have already applied for cheq book. If You want to apply for new one click on Y , else No";
                    TM.Visible = true;
                    TM.Text = "Y";

                }
                else
                {
                    ds = new DataSet();
                    string m1 = Request.Cookies["d"].Values["o"];
                    int lo = int.Parse(m);
                    da = new SqlDataAdapter("insert into adi_services  values(@a , @b , @c , @d,@e,@f)", conStr);
                    da.SelectCommand.Parameters.AddWithValue("@a", l);
                    da.SelectCommand.Parameters.AddWithValue("@b", "N.A");
                    da.SelectCommand.Parameters.AddWithValue("@c", "N.A");
                    da.SelectCommand.Parameters.AddWithValue("@d", "N.A");
                    da.SelectCommand.Parameters.AddWithValue("@e", "new one");
                    da.SelectCommand.Parameters.AddWithValue("@f", "N.A.");
                    da.Fill(ds);
                    Label3.Visible = true;
                    Button28.Visible = true;
                    Button28.Text = "Ok";


                    Label3.Text = "we have accepted  your cheque book request & will process in a short period of time";


                }
            }

        }

        protected void Button20_Click(object sender, EventArgs e)
        {
           
            Label3.Visible = true;
            Label3.Text = "Kindly Write Your Complaint Here";
            a.Visible = true;
            Button28.Visible = true;
            Button28.Text = "Raise Complaint";

            TM.Visible = true;
            TM.Text = "Dont Want to raise a complaint";


        }

        protected void Button23_Click(object sender, EventArgs e)
        { 
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            Label3.Visible = true;
            Label3.Text = "Kindly Write Your Dispute Here";
           a.Visible = true;
            string k = a.Text;
            Button28.Visible = true;
            Button28.Text = "Raise Dispute";
            TM.Visible = true;
            TM.Text = "Dont want to raise dispute now";

        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            
            a.Visible = true;
           
            TextBox2.Visible = true;
            
            Label4.Visible = true;
            Label3.Visible = true;
            Label3.Text = "Kindly write your friend name here";
            Label4.Text = "Mobile Number Of Your Friend Here";
            Button28.Visible = true;
            Button28.Text = "Refer";
            TM.Visible = true;
            
            TM.Text = "Dont Want to refer currently";




        }

        protected void Button36_Click(object sender, EventArgs e)
        {
            a.Visible = true;
            

            Label3.Visible = true;
             Label3.Text = "Kindly enter the amount here:";
            Button28.Visible = true;
              Button28.Text = "Add Money";
            
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            Label3.Visible = true;
            Label3.Text = "Kindly Write Your Feedback Here";
            a.Visible = true;
            string k = a.Text;
            Button28.Visible = true;
            Button28.Text = "FeedBack";
            TM.Visible = true;
            TM.Text = "Dont Want to post feedback";
           

                
            }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button34_Click(object sender, EventArgs e)
        { string m = Request.Cookies["d"].Values["o"];
            int p = int.Parse(m);
            ds = new DataSet();
            da = new SqlDataAdapter("select amount , remarks from moneys where mob = @a" ,conStr);
            da.SelectCommand.Parameters.AddWithValue("@a", p);
            da.Fill(ds);
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button37_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["o"];
            int l = int.Parse(m);
            bal.Visible = true;
            Label5.Visible = true;
            Label5.Text = " Your Account Balance Is :";
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select sum(amount) as total from moneys where mob = @a", con);
            cmd.Parameters.AddWithValue("@a", l);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string li = dr["total"].ToString();
                bal.Text = li;
                Button28.Visible = true;
                Button28.Text = "Ok";
            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button35_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = "Thanks For Showing Interest in Mobile Banking activation are you sure that you want to activate the UPI";

            Button28.Visible = true;
            Button28.Text = "Activate Mob_Banking";

            TM.Visible = true;
            TM.Text = "Dont Want to activate Mob_Banking";

        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Label6.Visible = false;
            Button38.Visible = false;
        }

        protected void Button39_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('thanks for logging in we are directing you to the login page '); window.location='logi.aspx'</script>");

        }
    }
    }
