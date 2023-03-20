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
    public partial class current_finaldetails : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label2.Visible = false;
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conSt);
            con.Open();
            cmd = new SqlCommand("insert into current_Confi2(PAN_no,name,addresses,Company_name,DOB,mobile_no,nominee_name,ACType,cheq_req,SMS_Services,AccountNO) SELECT current_adhar.PAN_Number, current_adhar.name,current_adhar.home_address,current_adhar.Company_Name,current_adhar.DOB,current_adhar.Mobile_Number,adi_info_current.Nominee_name,adi_info_current.Current_type,adi_info_current.Cheq_book_requirement,adi_info_current.SMS_Services,adi_info_current.account_no from current_adhar,adi_info_current where current_adhar.Mobile_Number = adi_info_current.mobile_no;",con);

            cmd.ExecuteNonQuery();
            con.Close();
            Button1.Visible = false;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;
            Label1.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string s1 = Request.Cookies["d"].Values["o"];
            string s2 = Request.Cookies["d"].Values["m"];
            Label2.Visible = true;
           Label2.Text= "Hello " + s2 + "  Kindly Verify your details ";
            da = new SqlDataAdapter("select * from current_Confi2  where PAN_no = @f", conSt);
            da.SelectCommand.Parameters.AddWithValue("@f", s1);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to the sign up page '); window.location='current_signup.aspx'</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks For Visiting We Are Redirecting You To The Home Page '); window.location='WebForm3.aspx'</script>");

        }
    }
}