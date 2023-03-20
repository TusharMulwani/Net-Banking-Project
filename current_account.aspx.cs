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
    public partial class current_account : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
       

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Button2.Visible = false;
                Button3.Visible = false;
                Label2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("Select * From current_adhar Where PAN_Number = @a", conStr); // constr must
            da.SelectCommand.Parameters.AddWithValue("@a", int.Parse(TextBox1.Text));

            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Button2.Visible = true;
            Button3.Visible = true;
            Label2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("select * from current_adhar where PAN_Number = @a", con);
            cmd.Parameters.AddWithValue("@a", int.Parse(TextBox1.Text));
            dr = cmd.ExecuteReader();
            Boolean op = dr.HasRows;
            if (op == true) {
                while (dr.Read())
                {
                    string k = dr["Mobile_Number"].ToString();
                    HttpCookie m = new HttpCookie("d");
                    m.Values["y"] = k;

                    m.Expires = DateTime.Now.AddSeconds(1000);
                    Response.Cookies.Add(m);
                    Response.Redirect("current_adhar.aspx");
                }
            }
            else
            {
                Label2.Text = "No Records Found  , kindly click on need correction";
                Button3.Visible = true;
                Button4.Visible = true;
            }



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Dear user it will redirect you to the Incometax Department website for correction in adhar no. ');</script>");
            Response.Redirect("https://incometaxindia.gov.in/Pages/default.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are redirecting you to the home page . '); window.location='Home.aspx'</script>");
        }
    }
}