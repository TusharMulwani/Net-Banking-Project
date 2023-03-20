using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
namespace Banking_website
{
    public partial class Loan_Enquiryaspx : System.Web.UI.Page
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
                DropDownList1.Items.Add("less than 2.5 lacs");
                DropDownList1.Items.Add("more than 2.5lacs but less than 5 lacs");
                DropDownList1.Items.Add("more than 5 lacs but less than 10 lacs");
                DropDownList1.Items.Add("more than 10 lacs");
                DropDownList2.Items.Add("Home Loan");
                DropDownList2.Items.Add("Gold Loan");
                DropDownList2.Items.Add("Car Loan");
                DropDownList2.Items.Add("Personal Loan");
                DropDownList2.Items.Add("Business Loan");
                DropDownList2.Items.Add("Property Loan");

                DropDownList2.Items.Add("Vehicle Loan");
                DropDownList3.Items.Add("current");
                DropDownList3.Items.Add("saving");


                msg.Visible = false;
               



            }
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string k = DropDownList1.SelectedItem + "";
            string p1 = DropDownList2.SelectedItem + "";

            con = new SqlConnection(conSt);
            con.Open();
            

            cmd = new SqlCommand("Insert into loanquery6 values(@a,@b,@c,@d,@e,@f,@g,@h,@i);",con);
            cmd.Parameters.AddWithValue("@a", TextBox2.Text);
            cmd.Parameters.AddWithValue("@b", TextBox5.Text);
            cmd.Parameters.AddWithValue("@c", int.Parse(TextBox3.Text));
            cmd.Parameters.AddWithValue("@d", int.Parse(TextBox4.Text));
            cmd.Parameters.AddWithValue("@e", k);
            cmd.Parameters.AddWithValue("@f", int.Parse(TextBox6.Text));
           
            cmd.Parameters.AddWithValue("@g", p1);
            cmd.Parameters.AddWithValue("@h", int.Parse(TextBox7.Text));
            cmd.Parameters.AddWithValue("@i", DropDownList3.SelectedItem+"");





            cmd.ExecuteNonQuery();
            msg.Visible = true;
            msg.Text = "thanks for applying";
            msg.ForeColor = System.Drawing.Color.Green;
            
            con.Close();

            
            

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to the home page '); window.location='Home.aspx'</script>");


        }
    }
}