using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Banking_website
{
    public partial class current_adhar : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                B.Items.Add("Yes");
                B.Items.Add("No");

                DropDownList1.Items.Add("primary");
                DropDownList1.Items.Add("Silver");
                DropDownList1.Items.Add("Gold");
                Label5.Visible = false;
                Label6.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("insert into adi_info_current values(@a,@b,@c,@d,@g,@k)", con); //dont forget to use con

            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            string k = DropDownList1.SelectedItem + "";
            cmd.Parameters.AddWithValue("@b", k);
            string l = B.SelectedItem + "";
            cmd.Parameters.AddWithValue("@c", l);
            string g = string.Empty;

            if (Y.Checked)
            {
                g = "Yes";
            }
            else if (N.Checked)
            {
                g = "No";
            }
            else
            {
                Response.Write(" wrong input");
            }
            cmd.Parameters.AddWithValue("@d", g);

            String S = Request.Cookies["d"].Values["y"];
            int n1 = int.Parse(S);
            int a1 = n1 + 8000;
            cmd.Parameters.AddWithValue("@g", a1);
            cmd.Parameters.AddWithValue("@k", n1);

            cmd.ExecuteNonQuery();
            con.Close();




            Response.Write("<script>alert('your records are sucessfully submited. Kindly click on final confirmation to move to the final confirmation page '); window.location='current_adhar.aspx'</script>");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String S = Request.Cookies["d"].Values["y"];
            int n1 = int.Parse(S);
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from current_adhar where Mobile_Number = @a", con);
            cmd.Parameters.AddWithValue("@a", n1);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label5.Visible = true;
                Label6.Visible = true;
                Label5.ForeColor = System.Drawing.Color.Red;
                Label6.ForeColor = System.Drawing.Color.Green;
                Label5.Text = dr["PAN_Number"].ToString();
                Label6.Text = dr["name"].ToString();
                HttpCookie m1 = new HttpCookie("d");
                m1.Values["o"] = Label5.Text;
                m1.Values["m"] = Label6.Text;

                m1.Expires = DateTime.Now.AddSeconds(900);
                Response.Cookies.Add(m1);
                Response.Redirect("current_finaldetails.aspx");



            }
            dr.Close();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        
    }
}