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
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conS = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                Button4.Visible = false;
                Button5.Visible = false;
                Label1.Visible = false;
                Button6.Visible = false;
                Button7.Visible = false;
                Label2.Visible = false;


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int l = int.Parse(TextBox1.Text);

            con = new SqlConnection(conS);
                con.Open();
         
                cmd = new SqlCommand("insert into signup values(@a,@b,@c)", con);
                cmd.Parameters.AddWithValue("@a", l);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                cmd.Parameters.AddWithValue("@c", TextBox3.Text);
                cmd.ExecuteNonQuery();
                con.Close();  
            Button6.Visible = true;
            Button7.Visible = true;
            Label2.Visible = true;




        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

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
            
            Response.Write("<script>alert('WE are redirecting you to the login page');window.location='logi.aspx';</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Dear User 1st We have to signup then only we can login');window.location='signup.aspx';</script>");

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conS);
            con.Open();
            cmd = new SqlCommand(" insert into JOIN2(Adhar_no,name,addresses,father_name,DOB,mob,nominee,ACType,Cheq_req,debit,accno,username,passwords,credit) SELECT Confi.Adhar_no , Confi.name,Confi.addresses, Confi.father_name,Confi.DOB,Confi.mobile_no,Confi.nominee_name,Confi.ACType,Confi.cheq_req,Confi.debit_card_req,Confi.AccountNO,signup.username,signup.passwords,'no' from signup,Confi where signup.mobile_no=Confi.mobile_no;", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('your records are sucessfully submitted');</script>");
            Button6.Visible = false;
            Button7.Visible = false;
            Label2.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conS);
            con.Open();
            cmd = new SqlCommand("delete from signup where mobile_no = @a", con);
            cmd.Parameters.AddWithValue("@a", int.Parse(TextBox1.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('we have not submitted your details kindly re-enter your details again');</script>");

           

        }
    }
}