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
    public partial class Deposits_Closure : System.Web.UI.Page
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
                string s2 = Request.Cookies["d"].Values["s"];
                string s1 = Request.Cookies["d"].Values["p"];

                Response.Write("Hello " + s1 + "  Kindly Verify your details ");
                con = new SqlConnection(conSt);
                con.Open();
                cmd = new SqlCommand("select FD_NO from FDRD  where Mob_NO = @f", con);
                cmd.Parameters.AddWithValue("@f", s2);
                dr = cmd.ExecuteReader();
                int k = dr.FieldCount;
                int a = 0;
                if (dr.Read())
                {
                    string i = dr["FD_NO"].ToString();
                    while (a<k)
                    {

                        DropDownList1.Items.Add(i);
                        a++;

                    }

                    
                    Button4.Text = "Show Details";
                    Button1.Visible = true;
                    Button2.Visible = false;
                    Button3.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;
                }
                else
                {
                    Button4.Text = "HOME PAGE";
                    Label2.Text = " Sorry No Details Found";
                    DropDownList1.Visible = false;
                    GridView1.Visible = false;
                    Button1.Visible = false;
                    Button2.Visible = false;
                    Button3.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;
                }
                dr.Close();
                cmd.ExecuteNonQuery();
                con.Close();


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = "Are You Sure You Want To delete the Following Records";
            Button2.Visible = true;
            Button3.Visible = true;
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string o = Button4.Text;
            switch (o) { case "HOME PAGE":
                    string m = Request.Cookies["d"].Values["j"];
                    if (m == "saving")
                    {
                        Response.Write("<script>alert('we are redirecting you to the home page . '); window.location='logi.aspx'</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('we are redirecting you to the home page . '); window.location='Current_login.aspx'</script>");

                    }
                    break;
                case "Show Details":
                    string s1 = Request.Cookies["d"].Values["s"];
                    string s2 = Request.Cookies["d"].Values["p"];
                    int l = int.Parse(s1);
                    string a1 = DropDownList1.SelectedItem + "";
                    int a = int.Parse(a1);
                    Label4.Visible = true;
                    Label4.Text ="Hello " + s2 + "  Kindly Verify your details ";
                    da = new SqlDataAdapter("select * from FDRD  where FD_NO = @f and Mob_NO= @s", conSt);
                    da.SelectCommand.Parameters.AddWithValue("@f", a);
                    da.SelectCommand.Parameters.AddWithValue("@s", l);

                    ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    break;

            
            }
                
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["s"];
            int l = int.Parse(m);
            string a1 = DropDownList1.SelectedItem + "";
            int o = int.Parse(a1);//drop down list items have string data type so we have to com=nvert into int type
            con = new SqlConnection(conSt);
            con.Open();
            cmd = new SqlCommand("delete from FDRD  where FD_NO = @a and Mob_NO = @b", con);
            cmd.Parameters.AddWithValue("@a", o);
            cmd.Parameters.AddWithValue("@b", l);
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Visible = true;
            Label3.Text = "We have sucessfully deleted  Above mentioned deposit from Our Records. And Will put the deposit in your account shortly";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["j"];
            if (m == "saving")
            {
                Response.Write("<script>alert('we are redirecting you to the home page . '); window.location='logi.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('we are redirecting you to the home page . '); window.location='Current_login.aspx'</script>");

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string m = Request.Cookies["d"].Values["j"];
            if (m == "saving")
            {
                Response.Write("<script>alert('we are redirecting you to the home page . '); window.location='logi.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('we are redirecting you to the home page . '); window.location='Current_login.aspx'</script>");

            }
        }
    }
} 