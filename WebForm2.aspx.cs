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
    public partial class WebForm2 : System.Web.UI.Page
    { SqlCommand cmd;
        SqlConnection con;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                Button4.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('thanks for confirming'); window.location = 'Home.aspx'  </script>");



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to  The Page Were you can update your records '); window.location ='WebForm1.aspx'  </script>");

          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conSt);
            con.Open();
            cmd = new SqlCommand(" insert into Confi (Adhar_no,name,addresses,father_name,DOB,mobile_no,nominee_name,ACType,cheq_req,debit_card_req,AccountNO) SELECT adhae.Adhar_Number, adhae.name,adhae.home_address,adhae.Fathers_Name,adhae.DOB,adhae.Mobile_Number,adi_info.Nominee_name,adi_info.saving_type,adi_info.Cheq_book_requirement,adi_info.Debit_Card_req,adi_info.accno from adhae,adi_info where adhae.Adhar_Number = adi_info.adhar_no", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = " We have Updated Your Records.";
            Label2.Visible = false;

            Button4.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to the  The Page Were you can update your records '); window.location = 'WebForm5.aspx'  </script>");
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string s1 = Request.Cookies["d"].Values["o"];
            string s2 = Request.Cookies["d"].Values["m"];
            int l = int.Parse(s1);
            Response.Write("Hello " + s2 + "  Kindly Verify your details ");
            da = new SqlDataAdapter("select * from confi  where Adhar_no = @f", conSt);
            da.SelectCommand.Parameters.AddWithValue("@f", l);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Button1.Visible = true;
            Button2.Visible = true;
            Button5.Visible = false;
        }
    }
}